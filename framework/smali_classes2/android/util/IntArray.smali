.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    :goto_a
    iput v1, p0, Landroid/util/IntArray;->mSize:I

    return-void

    :cond_d
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_a
.end method

.method private constructor <init>([II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method private checkBounds(I)V
    .registers 4

    if-ltz p1, :cond_6

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    if-gt v0, p1, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_e
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 9

    const/4 v6, 0x0

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int v1, v0, p1

    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    array-length v5, v5

    if-lt v1, v5, :cond_1f

    const/4 v5, 0x6

    if-ge v0, v5, :cond_20

    const/16 v5, 0xc

    :goto_f
    add-int v4, v0, v5

    if-le v4, v1, :cond_23

    move v2, v4

    :goto_14
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v3

    iget-object v5, p0, Landroid/util/IntArray;->mValues:[I

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v3, p0, Landroid/util/IntArray;->mValues:[I

    :cond_1f
    return-void

    :cond_20
    shr-int/lit8 v5, v0, 0x1

    goto :goto_f

    :cond_23
    move v2, v1

    goto :goto_14
.end method

.method public static fromArray([II)Landroid/util/IntArray;
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([I)Landroid/util/IntArray;
    .registers 3

    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/IntArray;->ensureCapacity(I)V

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, v1, p1

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1c
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v1, p1

    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .registers 7

    iget v0, p1, Landroid/util/IntArray;->mSize:I

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    iget-object v1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public binarySearch(I)I
    .registers 4

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/util/IntArray;->mValues:[I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public indexOf(I)I
    .registers 5

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_f

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    const/4 v2, -0x1

    return v2
.end method

.method public remove(I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public resize(I)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v0, v0

    if-gt p1, v0, :cond_14

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_11
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void

    :cond_14
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    goto :goto_11
.end method

.method public set(II)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray()[I
    .registers 3

    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget v1, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

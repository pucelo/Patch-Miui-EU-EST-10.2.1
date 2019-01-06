.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    :goto_a
    iput v1, p0, Landroid/util/LongArray;->mSize:I

    return-void

    :cond_d
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_a
.end method

.method private constructor <init>([JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method private checkBounds(I)V
    .registers 4

    if-ltz p1, :cond_6

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-gt v0, p1, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_e
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 9

    const/4 v6, 0x0

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int v1, v0, p1

    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

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
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v3

    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v3, p0, Landroid/util/LongArray;->mValues:[J

    :cond_1f
    return-void

    :cond_20
    shr-int/lit8 v5, v0, 0x1

    goto :goto_f

    :cond_23
    move v2, v1

    goto :goto_14
.end method

.method public static fromArray([JI)Landroid/util/LongArray;
    .registers 3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([J)Landroid/util/LongArray;
    .registers 3

    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public add(IJ)V
    .registers 8

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongArray;->ensureCapacity(I)V

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, v1, p1

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_1c
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v1, p1

    return-void
.end method

.method public add(J)V
    .registers 4

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .registers 7

    iget v0, p1, Landroid/util/LongArray;->mSize:I

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongArray;->mValues:[J
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_13} :catch_14

    :goto_13
    return-object v1

    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)J
    .registers 4

    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .registers 8

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_11

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v2, -0x1

    return v2
.end method

.method public remove(I)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public resize(I)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v0, v0

    if-gt p1, v0, :cond_15

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_12
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void

    :cond_15
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    goto :goto_12
.end method

.method public set(IJ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

.method public toArray()[J
    .registers 3

    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

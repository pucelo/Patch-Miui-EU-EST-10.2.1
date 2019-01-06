.class public final Lcom/android/framework/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/android/framework/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/android/framework/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    new-array v0, p1, [Lcom/android/framework/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iput v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return-void
.end method

.method private arrayEquals([I[II)Z
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_e

    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method private arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_12

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method private binarySearch(I)I
    .registers 7

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v4, -0x1

    :goto_5
    if-gt v1, v0, :cond_1a

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v4, v2

    if-ge v3, p1, :cond_14

    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    :cond_14
    if-le v3, p1, :cond_19

    add-int/lit8 v0, v2, -0x1

    goto :goto_5

    :cond_19
    return v2

    :cond_1a
    not-int v4, v1

    return v4
.end method

.method private gc()V
    .registers 8

    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v4, v5, v0

    sget-object v6, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v4, v6, :cond_1d

    if-eq v0, v3, :cond_1b

    aget v6, v1, v0

    aput v6, v1, v3

    aput-object v4, v5, v3

    const/4 v6, 0x0

    aput-object v6, v5, v0

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    iput v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_14

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_11

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return p1
.end method

.method private idealIntArraySize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final clone()Lcom/android/framework/protobuf/nano/FieldArray;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    new-instance v0, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_29

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v1

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/framework/protobuf/nano/FieldData;->clone()Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_29
    iput v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->clone()Lcom/android/framework/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;
    .registers 3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    :cond_7
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/FieldArray;->arrayEquals([Lcom/android/framework/protobuf/nano/FieldData;[Lcom/android/framework/protobuf/nano/FieldData;I)Z

    move-result v1

    :cond_2e
    return v1
.end method

.method get(I)Lcom/android/framework/protobuf/nano/FieldData;
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_10

    :cond_e
    const/4 v1, 0x0

    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    :cond_7
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_a
    iget v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_25

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/framework/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_25
    return v1
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method put(ILcom/android/framework/protobuf/nano/FieldData;)V
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    :goto_b
    return-void

    :cond_c
    not-int v0, v0

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v4, :cond_22

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-ne v4, v5, :cond_22

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    return-void

    :cond_22
    iget-boolean v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v4, :cond_35

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_35

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v4

    not-int v0, v4

    :cond_35
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_5c

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iput-object v3, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    :cond_5c
    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_79
    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    iget-object v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    iget v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    goto :goto_b
.end method

.method remove(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_17

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mData:[Lcom/android/framework/protobuf/nano/FieldData;

    sget-object v2, Lcom/android/framework/protobuf/nano/FieldArray;->DELETED:Lcom/android/framework/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    :cond_17
    return-void
.end method

.method size()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/FieldArray;->gc()V

    :cond_7
    iget v0, p0, Lcom/android/framework/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method

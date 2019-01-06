.class public Landroid/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_11

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    :goto_e
    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void

    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    goto :goto_e
.end method


# virtual methods
.method public append(IJ)V
    .registers 6

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    :cond_12
    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/SparseLongArray;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/SparseLongArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/SparseLongArray;->mKeys:[I

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v1, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v3, p0, Landroid/util/SparseLongArray;->mValues:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/SparseLongArray;->mValues:[J
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clone()Landroid/util/SparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 5

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_d
    return-void
.end method

.method public get(I)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(IJ)J
    .registers 8

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-gez v0, :cond_b

    return-wide p2

    :cond_b
    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public indexOfKey(I)I
    .registers 4

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_e

    return v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)I
    .registers 3

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(IJ)V
    .registers 8

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    aput-wide p2, v1, v0

    :goto_e
    return-void

    :cond_f
    not-int v0, v0

    iget-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p2, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseLongArray;->mSize:I

    goto :goto_e
.end method

.method public removeAt(I)V
    .registers 7

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public removeAtRange(II)V
    .registers 8

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Landroid/util/SparseLongArray;->mKeys:[I

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/util/SparseLongArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v4, p1, p2

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/util/SparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    add-int v4, p1, p2

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-gtz v3, :cond_a

    const-string/jumbo v3, "{}"

    return-object v3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    mul-int/lit8 v3, v3, 0x1c

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_19
    iget v3, p0, Landroid/util/SparseLongArray;->mSize:I

    if-ge v1, v3, :cond_3b

    if-lez v1, :cond_25

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3b
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public valueAt(I)J
    .registers 4

    iget-object v0, p0, Landroid/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

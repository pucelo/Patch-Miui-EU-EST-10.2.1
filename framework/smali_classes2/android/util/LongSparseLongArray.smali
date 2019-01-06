.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_11

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    :goto_e
    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void

    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_e
.end method


# virtual methods
.method public append(JJ)V
    .registers 8

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void

    :cond_14
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseLongArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongSparseLongArray;->mValues:[J
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

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 6

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    :cond_d
    return-void
.end method

.method public get(J)J
    .registers 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .registers 10

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-gez v0, :cond_b

    return-wide p3

    :cond_b
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method public indexOfKey(J)I
    .registers 6

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

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

.method public keyAt(I)J
    .registers 4

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .registers 8

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    :goto_e
    return-void

    :cond_f
    not-int v0, v0

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_e
.end method

.method public removeAt(I)V
    .registers 7

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_a

    const-string/jumbo v6, "{}"

    return-object v6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    mul-int/lit8 v6, v6, 0x1c

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_19
    iget v6, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v1, v6, :cond_3b

    if-lez v1, :cond_25

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3b
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public valueAt(I)J
    .registers 4

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

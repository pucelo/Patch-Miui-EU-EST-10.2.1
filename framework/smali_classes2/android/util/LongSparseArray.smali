.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-nez p1, :cond_13

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    :goto_10
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void

    :cond_13
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    goto :goto_10
.end method

.method private gc()V
    .registers 9

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v4, v5, v0

    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1d

    if-eq v0, v3, :cond_1b

    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

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

    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void

    :cond_14
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_22

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_22

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_22
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    const/4 v4, 0x0

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_e

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/util/LongSparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v1, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;
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

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .registers 6

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    :cond_1b
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    :cond_12
    return-object p3

    :cond_13
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public indexOfKey(J)I
    .registers 6

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 v1, -0x1

    return v1
.end method

.method public indexOfValueByValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    if-nez p1, :cond_15

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    return v0

    :cond_15
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_23
    const/4 v1, -0x1

    return v1
.end method

.method public keyAt(I)J
    .registers 4

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :goto_e
    return-void

    :cond_f
    not-int v0, v0

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v1, v0

    return-void

    :cond_25
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v1

    not-int v0, v1

    :cond_3c
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v0, p3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    goto :goto_e
.end method

.method public remove(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    return-void
.end method

.method public removeAt(I)V
    .registers 4

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    :cond_11
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_a

    const-string/jumbo v5, "{}"

    return-object v5

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_19
    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v5, :cond_44

    if-lez v1, :cond_25

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3d
    const-string/jumbo v5, "(this Map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_44
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

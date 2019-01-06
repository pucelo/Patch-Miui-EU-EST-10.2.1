.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"

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

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-nez p1, :cond_13

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    :goto_10
    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    return-void

    :cond_13
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    goto :goto_10
.end method

.method private gc()V
    .registers 8

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_20

    aget-object v4, v5, v0

    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

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

    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p1, v0, :cond_12

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_12
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_20

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_20
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/SparseArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    const/4 v4, 0x0

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_e

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v1, Landroid/util/SparseArray;->mKeys:[I

    iget-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, v1, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;
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

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 5

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_1b

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    :cond_1b
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_12

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    :cond_12
    return-object p2

    :cond_13
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public indexOfKey(I)I
    .registers 4

    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

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

    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

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

    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_23

    if-nez p1, :cond_15

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_20

    return v0

    :cond_15
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

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

.method public keyAt(I)I
    .registers 3

    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    :goto_e
    return-void

    :cond_f
    not-int v0, v0

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v1, v0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v1, v0

    return-void

    :cond_25
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3c

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    not-int v0, v1

    :cond_3c
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v0, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

    goto :goto_e
.end method

.method public remove(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .registers 4

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    :cond_11
    return-void
.end method

.method public removeAtRange(II)V
    .registers 7

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    add-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p1

    :goto_9
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v2, v3, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_20

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_20

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v2, v0

    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v3, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v3, v2, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/SparseArray;->mGarbage:Z

    return-object v1

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_a

    const-string/jumbo v4, "{}"

    return-object v4

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_19
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v4, :cond_44

    if-lez v1, :cond_25

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3d
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_44
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_7
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

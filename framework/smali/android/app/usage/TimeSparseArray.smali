.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .registers 10

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    add-int/lit8 v0, v5, -0x1

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    :goto_a
    if-gt v1, v0, :cond_25

    sub-int v6, v0, v1

    div-int/lit8 v6, v6, 0x2

    add-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v6, p1, v2

    if-lez v6, :cond_1d

    add-int/lit8 v1, v4, 0x1

    goto :goto_a

    :cond_1d
    cmp-long v6, p1, v2

    if-gez v6, :cond_24

    add-int/lit8 v0, v4, -0x1

    goto :goto_a

    :cond_24
    return v4

    :cond_25
    cmp-long v6, p1, v2

    if-gez v6, :cond_2a

    return v4

    :cond_2a
    cmp-long v6, p1, v2

    if-lez v6, :cond_31

    if-ge v1, v5, :cond_31

    return v1

    :cond_31
    const/4 v6, -0x1

    return v6
.end method

.method public closestIndexOnOrBefore(J)I
    .registers 8

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v0

    if-gez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_d
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

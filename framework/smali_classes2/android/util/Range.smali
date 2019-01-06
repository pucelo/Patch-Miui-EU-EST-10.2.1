.class public final Landroid/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "lower must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const-string/jumbo v0, "upper must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lower must be less than or equal to upper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0

    :cond_11
    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0

    :cond_1c
    return-object p1
.end method

.method public contains(Landroid/util/Range;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v3, "value must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_20

    const/4 v0, 0x1

    :goto_12
    iget-object v3, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v4, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_22

    const/4 v1, 0x1

    :goto_1d
    if-eqz v0, :cond_24

    :goto_1f
    return v1

    :cond_20
    const/4 v0, 0x0

    goto :goto_12

    :cond_22
    const/4 v1, 0x0

    goto :goto_1d

    :cond_24
    move v1, v2

    goto :goto_1f
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v3, "value must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1c

    const/4 v0, 0x1

    :goto_10
    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1e

    const/4 v1, 0x1

    :goto_19
    if-eqz v0, :cond_20

    :goto_1b
    return v1

    :cond_1c
    const/4 v0, 0x0

    goto :goto_10

    :cond_1e
    const/4 v1, 0x0

    goto :goto_19

    :cond_20
    move v1, v2

    goto :goto_1b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    instance-of v2, p1, Landroid/util/Range;

    if-eqz v2, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/util/Range;

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, v0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v2, v0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_21
    return v1

    :cond_22
    return v1
.end method

.method public extend(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    return-object p1

    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    return-object p0

    :cond_20
    if-ltz v0, :cond_2e

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    :goto_25
    if-gtz v1, :cond_32

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :goto_29
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    :cond_2e
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_25

    :cond_32
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_29
.end method

.method public extend(Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p1}, Landroid/util/Range;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_1d

    if-gtz v1, :cond_1d

    return-object p0

    :cond_1d
    if-ltz v0, :cond_21

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    :cond_21
    if-gtz v1, :cond_25

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :cond_25
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getLower()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Comparable;

    iget-object v1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersect(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v2, "range must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_1b

    if-ltz v1, :cond_1b

    return-object p0

    :cond_1b
    if-ltz v0, :cond_20

    if-gtz v1, :cond_20

    return-object p1

    :cond_20
    if-gtz v0, :cond_2e

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    :goto_25
    if-ltz v1, :cond_32

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :goto_29
    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    :cond_2e
    iget-object v2, p1, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    move-object v3, v2

    goto :goto_25

    :cond_32
    iget-object v2, p1, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    goto :goto_29
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const-string/jumbo v2, "lower must not be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "upper must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_1d

    if-ltz v1, :cond_1d

    return-object p0

    :cond_1d
    if-gtz v0, :cond_21

    iget-object p1, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    :cond_21
    if-ltz v1, :cond_25

    iget-object p2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    :cond_25
    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Range;->mLower:Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/util/Range;->mUpper:Ljava/lang/Comparable;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

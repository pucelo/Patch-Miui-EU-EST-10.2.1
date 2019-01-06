.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final mMaxIterations:I

.field private final mRandomState:Ljava/util/Random;

.field private mSqConvergenceEpsilon:F


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 4

    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    mul-float v0, p3, p3

    iput v0, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    return-void
.end method

.method public static nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    const/4 v2, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_20

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v6}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_1d

    move-object v2, v4

    move v3, v5

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    return-object v2
.end method

.method public static score(Ljava/util/List;)D
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v8, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_2f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v6, :cond_2c

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/ml/clustering/KMeans$Mean;

    if-ne v5, v0, :cond_1d

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1d
    iget-object v7, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v10, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v7, v10}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v8, v2

    goto :goto_1a

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2f
    return-wide v8
.end method

.method public static sqDistance([F[F)F
    .registers 8

    const/4 v0, 0x0

    array-length v2, p0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_14

    aget v3, p0, v1

    aget v4, p1, v1

    sub-float/2addr v3, v4

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    return v0
.end method

.method private step(Ljava/util/ArrayList;[[F)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_6
    if-ltz v2, :cond_16

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_16
    array-length v8, p2

    add-int/lit8 v2, v8, -0x1

    :goto_19
    if-ltz v2, :cond_29

    aget-object v1, p2, v2

    invoke-static {v1, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v5

    iget-object v8, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_30
    if-ltz v2, :cond_95

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_43

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_43
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v8, v6

    new-array v8, v8, [F

    iput-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    const/4 v3, 0x0

    :goto_4b
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_70

    const/4 v7, 0x0

    :goto_54
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v8, v8

    if-ge v7, v8, :cond_6d

    iget-object v9, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v10, v9, v7

    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v7

    add-float/2addr v8, v10

    aput v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_70
    const/4 v3, 0x0

    :goto_71
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v8, v8

    if-ge v3, v8, :cond_87

    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v9, v8, v3

    iget-object v10, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_87
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v6, v8}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v8

    iget v9, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_40

    const/4 v0, 0x0

    goto :goto_40

    :cond_95
    return v0
.end method


# virtual methods
.method public checkDataSetSanity([[F)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Data set is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    array-length v3, p1

    if-nez v3, :cond_18

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Data set is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    aget-object v3, p1, v4

    if-nez v3, :cond_25

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Bad data set format."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    aget-object v3, p1, v4

    array-length v0, v3

    array-length v2, p1

    const/4 v1, 0x1

    :goto_2a
    if-ge v1, v2, :cond_41

    aget-object v3, p1, v1

    if-eqz v3, :cond_35

    aget-object v3, p1, v1

    array-length v3, v3

    if-eq v3, v0, :cond_3e

    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Bad data set format."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_41
    return-void
.end method

.method public predict(I[[F)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    const/4 v6, 0x0

    aget-object v6, p2, v6

    array-length v1, v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_2a

    new-instance v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v4, v1}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_24

    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v7, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2a
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2c
    iget v6, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v2, v6, :cond_36

    invoke-direct {p0, v5, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_36
    return-object v5

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c
.end method

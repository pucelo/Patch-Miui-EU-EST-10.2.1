.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final mInitializations:I

.field private final mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final mMinClusterSqDistance:F

.field private mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    mul-float v0, p1, p1

    iput v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    return-void
.end method

.method private getOptimalKMeans(I[[F)Ljava/util/List;
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

    const/4 v1, 0x0

    const-wide v2, -0x10000000000001L

    iget v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    :goto_8
    if-lez v4, :cond_1f

    iget-object v5, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v6

    if-eqz v1, :cond_1a

    cmpl-double v5, v6, v2

    if-lez v5, :cond_1c

    :cond_1a
    move-wide v2, v6

    move-object v1, v0

    :cond_1c
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_1f
    return-object v1
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .registers 26

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v7, v0, [F

    fill-array-data v7, :array_140

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x3

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    const/4 v9, 0x0

    :goto_29
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_5e

    aget v16, p1, v9

    move/from16 v0, v16

    invoke-static {v0, v7}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    aget-object v16, v8, v9

    const/16 v17, 0x0

    aget v17, v7, v17

    const/high16 v18, 0x43b40000    # 360.0f

    div-float v17, v17, v18

    const/16 v18, 0x0

    aput v17, v16, v18

    aget-object v16, v8, v9

    const/16 v17, 0x1

    aget v17, v7, v17

    const/16 v18, 0x1

    aput v17, v16, v18

    aget-object v16, v8, v9

    const/16 v17, 0x2

    aget v17, v7, v17

    const/16 v18, 0x2

    aput v17, v16, v18

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_5e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v14

    const/4 v9, 0x0

    :goto_67
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_db

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v6

    add-int/lit8 v10, v9, 0x1

    :goto_7b
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_d8

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    move/from16 v16, v0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_d5

    invoke-interface {v14, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v11, 0x0

    :goto_aa
    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_d3

    aget v16, v6, v11

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    aget v18, v4, v11

    aget v19, v6, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_aa

    :cond_d3
    add-int/lit8 v10, v10, -0x1

    :cond_d5
    add-int/lit8 v10, v10, 0x1

    goto :goto_7b

    :cond_d8
    add-int/lit8 v9, v9, 0x1

    goto :goto_67

    :cond_db
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_ea
    :goto_ea
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-eqz v16, :cond_ea

    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v2, v19

    const/high16 v20, 0x43b40000    # 360.0f

    mul-float v19, v19, v20

    const/16 v20, 0x0

    aput v19, v18, v20

    const/16 v19, 0x1

    aget v19, v2, v19

    const/16 v20, 0x1

    aput v19, v18, v20

    const/16 v19, 0x2

    aget v19, v2, v19

    const/16 v20, 0x2

    aput v19, v18, v20

    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>([FI)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    :cond_13f
    return-void

    :array_140
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

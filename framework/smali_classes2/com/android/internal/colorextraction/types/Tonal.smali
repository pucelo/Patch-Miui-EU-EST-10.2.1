.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0xdededf

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field public static final SECONDARY_COLOR_DARK:I = -0x1000000

.field public static final SECONDARY_COLOR_LIGHT:I = -0x616162

.field private static final TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    :goto_b
    if-eqz v1, :cond_23

    const v0, -0x1f1f20

    :goto_10
    if-eqz v1, :cond_27

    const v2, -0x616162

    :goto_15
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {p1, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    return-void

    :cond_1f
    const/4 v1, 0x0

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    goto :goto_b

    :cond_23
    const v0, -0xdededf

    goto :goto_10

    :cond_27
    const/high16 v2, -0x1000000

    goto :goto_15
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .registers 12

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    :goto_6
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v4, v4

    if-ge v1, v4, :cond_3a

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v1

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v1

    sub-float v5, p3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    cmpg-float v4, v0, v2

    if-gez v4, :cond_37

    move v2, v0

    move v3, v1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3a
    return v3
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .registers 11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v5

    :cond_d
    const/4 v0, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v4, :cond_2e

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2f

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2f

    move-object v0, v1

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_45

    cmpl-float v5, p1, v6

    if-ltz v5, :cond_45

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_45

    move-object v0, v1

    goto :goto_2e

    :cond_45
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5b

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5b

    cmpg-float v5, p1, v7

    if-gtz v5, :cond_5b

    move-object v0, v1

    goto :goto_2e

    :cond_5b
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_70

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_70

    move-object v0, v1

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float v2, v5, p1

    :cond_6d
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_70
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_84

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_84

    move-object v0, v1

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v2, p1, v5

    goto :goto_6d

    :cond_84
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_aa

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_aa

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_aa

    move-object v0, v1

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v2, p1, v5

    goto :goto_6d

    :cond_aa
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6d

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6d

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_6d

    move-object v0, v1

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v2, v5, p1

    goto :goto_6d
.end method

.method private static fit([FFIFF)[F
    .registers 9

    array-length v3, p0

    new-array v1, v3, [F

    aget v3, p0, p2

    sub-float v0, p1, v3

    const/4 v2, 0x0

    :goto_8
    array-length v3, p0

    if-ge v2, v3, :cond_17

    aget v3, p0, v2

    add-float/2addr v3, v0

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return-object v1
.end method

.method private static fract(F)F
    .registers 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private isBlacklisted([F)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_a
    if-ltz v1, :cond_25

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    aget v2, p1, v5

    aget v3, p1, v6

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    move-result v2

    if-eqz v2, :cond_22

    return v6

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_25
    return v5
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .registers 35

    if-nez p1, :cond_5

    const/16 v26, 0x0

    return v26

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v12

    and-int/lit8 v26, v12, 0x1

    if-eqz v26, :cond_21

    const/16 v25, 0x1

    :goto_17
    and-int/lit8 v26, v12, 0x4

    if-eqz v26, :cond_24

    const/4 v10, 0x1

    :goto_1c
    if-nez v19, :cond_26

    const/16 v26, 0x0

    return v26

    :cond_21
    const/16 v25, 0x0

    goto :goto_17

    :cond_24
    const/4 v10, 0x0

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v13, v0, [F

    const/4 v14, 0x0

    :goto_2e
    move/from16 v0, v19

    if-ge v14, v0, :cond_60

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Color;

    invoke-virtual {v6}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v26

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v27

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    if-eqz v10, :cond_5f

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_65

    :cond_5f
    move-object v4, v6

    :cond_60
    if-nez v4, :cond_68

    const/16 v26, 0x0

    return v26

    :cond_65
    add-int/lit8 v14, v14, 0x1

    goto :goto_2e

    :cond_68
    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v26

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v27

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    const/16 v26, 0x0

    aget v27, v13, v26

    const/high16 v28, 0x43b40000    # 360.0f

    div-float v27, v27, v28

    aput v27, v13, v26

    const/16 v26, 0x0

    aget v26, v13, v26

    const/16 v27, 0x1

    aget v27, v13, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v21

    if-nez v21, :cond_ab

    const-string/jumbo v26, "Tonal"

    const-string/jumbo v27, "Could not find a tonal palette!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    return v26

    :cond_ab
    const/16 v26, 0x0

    aget v26, v13, v26

    const/16 v27, 0x1

    aget v27, v13, v27

    const/16 v28, 0x2

    aget v28, v13, v28

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v9

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_d5

    const-string/jumbo v26, "Tonal"

    const-string/jumbo v27, "Could not find best fit!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    return v26

    :cond_d5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v13, v27

    const/high16 v28, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v29, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v11

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v13, v27

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v27, v13, v27

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Tonal Palette - index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ". Main color: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "\nColors: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_15f
    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v14, v0, :cond_18b

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v14, v0, :cond_188

    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_188
    add-int/lit8 v14, v14, 0x1

    goto :goto_15f

    :cond_18b
    const-string/jumbo v26, "Tonal"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    move/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v20, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const v27, -0x1f1f20

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v16, v26, v27

    cmpl-float v26, v20, v16

    if-lez v26, :cond_1d7

    const/16 v26, 0x0

    return v26

    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const v27, -0xdededf

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v8, v26, v27

    cmpg-float v26, v20, v8

    if-gez v26, :cond_1f8

    const/16 v26, 0x0

    return v26

    :cond_1f8
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v9, v0, :cond_2d8

    const/16 v26, -0x2

    :goto_207
    add-int v24, v9, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v25, :cond_2dc

    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    :goto_221
    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_2f0

    const/16 v26, -0x2

    :goto_22b
    add-int v24, v22, v26

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v25, :cond_2f4

    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    :goto_256
    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_302

    const/16 v26, -0x2

    :goto_260
    add-int v24, v22, v26

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    const-string/jumbo v26, "Tonal"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Gradients: \n\tNormal "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n\tDark "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n\tExtra dark: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    return v26

    :cond_2d8
    const/16 v26, 0x2

    goto/16 :goto_207

    :cond_2dc
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v9, v0, :cond_2e6

    const/16 v22, 0x0

    goto/16 :goto_221

    :cond_2e6
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_221

    :cond_2f0
    const/16 v26, 0x2

    goto/16 :goto_22b

    :cond_2f4
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v9, v0, :cond_2fe

    const/16 v22, 0x0

    goto/16 :goto_256

    :cond_2fe
    const/16 v22, 0x2

    goto/16 :goto_256

    :cond_302
    const/16 v26, 0x2

    goto/16 :goto_260
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_9
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method

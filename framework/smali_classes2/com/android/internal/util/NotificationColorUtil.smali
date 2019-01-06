.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    return-void
.end method

.method public static calculateContrast(II)D
    .registers 4

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .registers 3

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeColorLightness(II)I
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 14

    const/4 v4, 0x0

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_6e

    move-object v10, p0

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v12, v9

    move v11, v1

    :goto_1e
    if-ge v11, v12, :cond_6d

    aget-object v8, v9, v11

    move-object v0, v8

    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_2e

    move-object v1, v8

    check-cast v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    :cond_2e
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    if-eqz v1, :cond_63

    move-object v7, v0

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_50

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :cond_50
    :goto_50
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5f
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1e

    :cond_63
    instance-of v1, v0, Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_5f

    instance-of v1, v0, Landroid/text/style/BackgroundColorSpan;

    if-nez v1, :cond_5f

    move-object v0, v8

    goto :goto_50

    :cond_6d
    return-object v6

    :cond_6e
    return-object p0
.end method

.method public static compositeColors(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, "from %.2f:1 to %.2f:1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ensureLargeTextContrast(IIZ)I
    .registers 6

    const/4 v2, 0x1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    if-eqz p2, :cond_a

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    goto :goto_9
.end method

.method public static ensureTextBackgroundColor(III)I
    .registers 6

    const/4 v2, 0x0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static ensureTextContrast(IIZ)I
    .registers 6

    const/4 v2, 0x1

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    if-eqz p2, :cond_a

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    goto :goto_9
.end method

.method public static ensureTextContrastOnBlack(I)I
    .registers 5

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    const/high16 v2, -0x1000000

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static findAlphaToMeetContrast(IID)I
    .registers 16

    move v3, p0

    move v2, p1

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-ltz v10, :cond_b

    return p0

    :cond_b
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move v7, v9

    const/16 v5, 0xff

    const/4 v6, 0x0

    :goto_1f
    const/16 v10, 0xf

    if-ge v6, v10, :cond_3d

    sub-int v10, v5, v7

    if-lez v10, :cond_3d

    add-int v10, v7, v5

    div-int/lit8 v0, v10, 0x2

    invoke-static {v0, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_3b

    move v5, v0

    :goto_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_3b
    move v7, v0

    goto :goto_38

    :cond_3d
    invoke-static {v5, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method

.method public static findContrastColor(IIZD)I
    .registers 26

    if-eqz p2, :cond_11

    move/from16 v15, p0

    :goto_4
    if-eqz p2, :cond_14

    move/from16 v14, p1

    :goto_8
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-ltz v10, :cond_17

    return p0

    :cond_11
    move/from16 v15, p1

    goto :goto_4

    :cond_14
    move/from16 v14, p0

    goto :goto_8

    :cond_17
    const/4 v10, 0x3

    new-array v0, v10, [D

    move-object/from16 v19, v0

    if-eqz p2, :cond_5a

    move v10, v15

    :goto_1f
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    aget-wide v16, v19, v10

    const/4 v10, 0x1

    aget-wide v4, v19, v10

    const/4 v10, 0x2

    aget-wide v6, v19, v10

    const/16 v18, 0x0

    :goto_31
    const/16 v10, 0xf

    move/from16 v0, v18

    if-ge v0, v10, :cond_64

    sub-double v10, v16, v8

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_64

    add-double v10, v8, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    if-eqz p2, :cond_5c

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v15

    :goto_4e
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-lez v10, :cond_61

    move-wide v8, v2

    :goto_57
    add-int/lit8 v18, v18, 0x1

    goto :goto_31

    :cond_5a
    move v10, v14

    goto :goto_1f

    :cond_5c
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v14

    goto :goto_4e

    :cond_61
    move-wide/from16 v16, v2

    goto :goto_57

    :cond_64
    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v10

    return v10
.end method

.method public static findContrastColorAgainstDark(IIZD)I
    .registers 18

    if-eqz p2, :cond_f

    move v1, p0

    :goto_3
    if-eqz p2, :cond_11

    move v0, p1

    :goto_6
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-ltz v7, :cond_13

    return p0

    :cond_f
    move v1, p1

    goto :goto_3

    :cond_11
    move v0, p0

    goto :goto_6

    :cond_13
    const/4 v7, 0x3

    new-array v3, v7, [F

    if-eqz p2, :cond_4d

    move v7, v1

    :goto_19
    invoke-static {v7, v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    const/4 v7, 0x2

    aget v6, v3, v7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_22
    const/16 v7, 0xf

    if-ge v4, v7, :cond_56

    sub-float v7, v2, v6

    float-to-double v8, v7

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v8, v10

    if-lez v7, :cond_56

    add-float v7, v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    const/4 v7, 0x2

    aput v5, v3, v7

    if-eqz p2, :cond_4f

    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    :goto_41
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-lez v7, :cond_54

    move v2, v5

    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_4d
    move v7, v0

    goto :goto_19

    :cond_4f
    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_41

    :cond_54
    move v6, v5

    goto :goto_4a

    :cond_56
    if-eqz p2, :cond_59

    :goto_58
    return v1

    :cond_59
    move v1, v0

    goto :goto_58
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .registers 3

    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    :cond_e
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShiftedColor(II)I
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    aget-wide v0, v6, v7

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_29

    const-wide/16 v0, 0x0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    :goto_1c
    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0

    :cond_29
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    goto :goto_1c
.end method

.method public static isColorLight(I)Z
    .registers 5

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private processColor(I)I
    .registers 6

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .registers 12

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_c
    array-length v0, v8

    if-ge v9, v0, :cond_2a

    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_27

    if-nez v6, :cond_1e

    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    :cond_1e
    aget v0, v8, v9

    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    const/4 v6, 0x1

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_2a
    if-eqz v6, :cond_4b

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_4b
    return-object p1
.end method

.method public static resolveActionBarColor(Landroid/content/Context;I)I
    .registers 3

    if-nez p1, :cond_a

    const v0, 0x10600e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v0

    return v0
.end method

.method public static resolveAmbientColor(Landroid/content/Context;I)I
    .registers 4

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    move v0, v1

    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrastOnBlack(I)I

    move-result v0

    return v0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .registers 3

    if-nez p1, :cond_a

    const v0, 0x10600ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    :cond_a
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    return v0
.end method

.method public static resolveContrastColor(Landroid/content/Context;IIZ)I
    .registers 8

    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x10600e9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    move v1, v2

    invoke-static {v2, v0, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v1

    invoke-static {v1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    return v1
.end method

.method public static resolvePrimaryColor(Landroid/content/Context;I)I
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const v1, 0x10600f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    :cond_e
    const v1, 0x10600f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static resolveSecondaryColor(Landroid/content/Context;I)I
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const v1, 0x10600fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    :cond_e
    const v1, 0x10600fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static satisfiesTextContrast(II)Z
    .registers 6

    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static shouldUseDark(I)Z
    .registers 7

    if-nez p0, :cond_11

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_13

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15

    const/4 v8, 0x0

    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_68

    move-object v7, p1

    check-cast v7, Landroid/text/Spanned;

    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v10, v6

    move v9, v8

    :goto_1d
    if-ge v9, v10, :cond_67

    aget-object v5, v6, v9

    move-object v4, v5

    instance-of v8, v5, Landroid/text/style/CharacterStyle;

    if-eqz v8, :cond_2d

    move-object v8, v5

    check-cast v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v8}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    :cond_2d
    instance-of v8, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v8, :cond_50

    move-object v8, v5

    check-cast v8, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, v8}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    if-eq v3, v4, :cond_4e

    move-object v4, v3

    :goto_3b
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v4, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1d

    :cond_4e
    move-object v4, v5

    goto :goto_3b

    :cond_50
    instance-of v8, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v8, :cond_65

    move-object v2, v4

    check-cast v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_3b

    :cond_65
    move-object v4, v5

    goto :goto_3b

    :cond_67
    return-object v0

    :cond_68
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .registers 8

    const/4 v4, 0x0

    if-eqz p2, :cond_28

    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v1

    return v1

    :catch_c
    move-exception v0

    const-string/jumbo v1, "NotificationColorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_28
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    return v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v3, v4, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v3, v4, :cond_12

    :cond_10
    const/4 v3, 0x0

    return v3

    :cond_12
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_15
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_37

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    if-ne v3, v5, :cond_37

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_5c

    move-result v3

    monitor-exit v4

    return v3

    :cond_37
    monitor-exit v4

    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v4

    :try_start_3b
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_5f

    move-result v1

    monitor-exit v4

    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_49
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_62

    monitor-exit v4

    return v2

    :catchall_5c
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_5f
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_62
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 7

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1a

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    :cond_19
    return v3

    :cond_1a
    instance-of v4, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-lez v2, :cond_2f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    :cond_2f
    return v3

    :cond_30
    instance-of v4, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_36

    const/4 v3, 0x1

    return v3

    :cond_36
    return v3
.end method

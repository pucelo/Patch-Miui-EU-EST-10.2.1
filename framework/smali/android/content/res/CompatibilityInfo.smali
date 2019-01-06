.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$1;,
        Landroid/content/res/CompatibilityInfo$2;,
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/high16 v2, 0x3f800000    # 1.0f

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iget v11, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1a

    if-ge v11, v12, :cond_c

    const/16 v6, 0x10

    :cond_c
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v11, :cond_14

    iget v11, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v11, :cond_a5

    :cond_14
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v11, :cond_10b

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    :goto_1a
    if-nez v9, :cond_1e

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    :cond_1e
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v11, :cond_10f

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_24
    if-ge v5, v9, :cond_27

    move v5, v9

    :cond_27
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/16 v11, 0x140

    if-le v9, v11, :cond_112

    or-int/lit8 v6, v6, 0x4

    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    if-eqz v7, :cond_12a

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    iget v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v6, v6, 0x1

    :goto_4a
    iput v6, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mCompatibilityFlags - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "applicationDensity - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "applicationScale - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a5
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-nez v11, :cond_14

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/16 v3, 0x20

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_bd

    const/16 v10, 0x8

    const/4 v4, 0x1

    if-nez p4, :cond_bd

    or-int/lit8 v10, v10, 0x22

    :cond_bd
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_c9

    const/4 v4, 0x1

    if-nez p4, :cond_c9

    or-int/lit8 v10, v10, 0x22

    :cond_c9
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_d2

    const/4 v4, 0x1

    or-int/lit8 v10, v10, 0x2

    :cond_d2
    if-eqz p4, :cond_d6

    and-int/lit8 v10, v10, -0x3

    :cond_d6
    or-int/lit8 v6, v6, 0x8

    and-int/lit8 v11, p2, 0xf

    packed-switch v11, :pswitch_data_188

    :cond_dd
    :goto_dd
    const/high16 v11, 0x10000000

    and-int v11, v11, p2

    if-eqz v11, :cond_15c

    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_157

    and-int/lit8 v6, v6, -0x9

    :cond_e9
    :goto_e9
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x2000

    if-nez v11, :cond_161

    const/16 v11, 0xa0

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    const/high16 v12, 0x43200000    # 160.0f

    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_4a

    :cond_10b
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto/16 :goto_1a

    :cond_10f
    move v5, v9

    goto/16 :goto_24

    :cond_112
    if-eqz v8, :cond_11c

    move/from16 v0, p3

    if-le v0, v8, :cond_11c

    or-int/lit8 v6, v6, 0xa

    goto/16 :goto_2f

    :cond_11c
    move/from16 v0, p3

    if-lt v5, v0, :cond_124

    or-int/lit8 v6, v6, 0x4

    goto/16 :goto_2f

    :cond_124
    if-eqz p4, :cond_2f

    or-int/lit8 v6, v6, 0x8

    goto/16 :goto_2f

    :cond_12a
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_4a

    :pswitch_138
    and-int/lit8 v11, v10, 0x20

    if-eqz v11, :cond_13e

    and-int/lit8 v6, v6, -0x9

    :cond_13e
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_dd

    or-int/lit8 v6, v6, 0x4

    goto :goto_dd

    :pswitch_148
    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_14e

    and-int/lit8 v6, v6, -0x9

    :cond_14e
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_dd

    or-int/lit8 v6, v6, 0x4

    goto :goto_dd

    :cond_157
    if-nez v4, :cond_e9

    or-int/lit8 v6, v6, 0x2

    goto :goto_e9

    :cond_15c
    and-int/lit8 v6, v6, -0x9

    or-int/lit8 v6, v6, 0x4

    goto :goto_e9

    :cond_161
    if-eqz v7, :cond_17a

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    iget v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_4a

    :cond_17a
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_4a

    :pswitch_data_188
    .packed-switch 0x3
        :pswitch_148
        :pswitch_138
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 16

    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ge v11, v1, :cond_45

    move v9, v11

    move v2, v1

    :goto_8
    iget v12, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x43a00000    # 320.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_1f

    const v0, 0x3fe3bbbc

    :cond_1f
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v4, v12

    if-ge v11, v1, :cond_48

    move v6, v5

    move v3, v4

    :goto_29
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    cmpg-float v12, v10, v8

    if-gez v12, :cond_4b

    move v7, v10

    :goto_36
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3e

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_3e
    if-eqz p1, :cond_44

    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_44
    return v7

    :cond_45
    move v9, v1

    move v2, v11

    goto :goto_8

    :cond_48
    move v6, v4

    move v3, v5

    goto :goto_29

    :cond_4b
    move v7, v8

    goto :goto_36
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1a

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1a
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_2e
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_3f
    return-void

    :cond_40
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_5

    return v6

    :cond_5
    :try_start_5
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_10

    return v5

    :cond_10
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_17

    return v5

    :cond_17
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_20

    return v5

    :cond_20
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_24} :catch_2a

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    return v5

    :cond_29
    return v6

    :catch_2a
    move-exception v1

    return v5
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public isScalingRequired()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public needsCompatResources()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public neverSupportsScreen()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public supportsScreen()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string/jumbo v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string/jumbo v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string/jumbo v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

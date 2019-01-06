.class public Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;
.super Landroid/view/View;
.source "MiuiKeyguardWirelessChargingView.java"


# static fields
.field private static final ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

.field private static final ENTER_BALL_DOTS_RADIUS_VALUE:[[F

.field private static final EXIT_BALL_CIRCLER_RADIUS_VALUE:[[F

.field private static final EXIT_BALL_DOTS_RADIUS_VALUE:[[F


# instance fields
.field private final COUNT:I

.field private mBackInterpolator:Landroid/view/animation/Interpolator;

.field private mBallBackground:Landroid/graphics/Bitmap;

.field private mBallPaint:Landroid/graphics/Paint;

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mExitInterpolator:Landroid/view/animation/Interpolator;

.field private mLevel:I

.field private mLightingBitmap:Landroid/graphics/Bitmap;

.field private mLightingPaint:Landroid/graphics/Paint;

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mPathInterpolator:Landroid/view/animation/Interpolator;

.field private mScreenOnWhenStartAnim:Z

.field private mTextNumPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mTime:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v0, 0x8

    new-array v0, v0, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v4, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    new-array v1, v4, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    const/16 v0, 0x8

    new-array v0, v0, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v4, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    new-array v1, v4, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v4, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v4, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v4, [F

    fill-array-data v1, :array_d

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_e

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_f

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_DOTS_RADIUS_VALUE:[[F

    const/16 v0, 0x8

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_14

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_15

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_17

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_CIRCLER_RADIUS_VALUE:[[F

    const/16 v0, 0x8

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1c

    aput-object v1, v0, v7

    new-array v1, v3, [F

    fill-array-data v1, :array_1d

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1e

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1f

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_DOTS_RADIUS_VALUE:[[F

    return-void

    :array_0
    .array-data 4
        0x43120000    # 146.0f
        0x43410000    # 193.0f
        0x434d0000    # 205.0f
    .end array-data

    :array_1
    .array-data 4
        0x432c0000    # 172.0f
        0x435c0000    # 220.0f
        0x43670000    # 231.0f
    .end array-data

    :array_2
    .array-data 4
        0x43460000    # 198.0f
        0x43750000    # 245.0f
        0x43808000    # 257.0f
    .end array-data

    :array_3
    .array-data 4
        0x43600000    # 224.0f
        0x43878000    # 271.0f
        0x438d8000    # 283.0f
    .end array-data

    :array_4
    .array-data 4
        0x437a0000    # 250.0f
        0x43948000    # 297.0f
        0x439a8000    # 309.0f
    .end array-data

    :array_5
    .array-data 4
        0x438a8000    # 277.0f
        0x43a28000    # 325.0f
        0x43a80000    # 336.0f
    .end array-data

    :array_6
    .array-data 4
        0x43978000    # 303.0f
        0x43af8000    # 351.0f
        0x43b50000    # 362.0f
    .end array-data

    :array_7
    .array-data 4
        0x43a48000    # 329.0f
        0x43bc8000    # 377.0f
        0x43c20000    # 388.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x40e28f5c    # 7.08f
        0x410ccccd    # 8.8f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x40d6e148    # 6.715f
        0x4105999a    # 8.35f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x40d6e148    # 6.715f
        0x4105999a    # 8.35f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x40d6e148    # 6.715f
        0x4105999a    # 8.35f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x40d6e148    # 6.715f
        0x4105999a    # 8.35f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x40980000    # 4.75f
        0x40c00000    # 6.0f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x40600000    # 3.5f
        0x40900000    # 4.5f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x40200000    # 2.5f
        0x40400000    # 3.0f
    .end array-data

    :array_10
    .array-data 4
        0x434d0000    # 205.0f
        0x43120000    # 146.0f
    .end array-data

    :array_11
    .array-data 4
        0x43670000    # 231.0f
        0x432c0000    # 172.0f
    .end array-data

    :array_12
    .array-data 4
        0x43808000    # 257.0f
        0x43460000    # 198.0f
    .end array-data

    :array_13
    .array-data 4
        0x438d8000    # 283.0f
        0x43600000    # 224.0f
    .end array-data

    :array_14
    .array-data 4
        0x439a8000    # 309.0f
        0x437a0000    # 250.0f
    .end array-data

    :array_15
    .array-data 4
        0x43a80000    # 336.0f
        0x438a8000    # 277.0f
    .end array-data

    :array_16
    .array-data 4
        0x43b50000    # 362.0f
        0x43978000    # 303.0f
    .end array-data

    :array_17
    .array-data 4
        0x43c20000    # 388.0f
        0x43a48000    # 329.0f
    .end array-data

    :array_18
    .array-data 4
        0x410ccccd    # 8.8f
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x4105999a    # 8.35f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x4105999a    # 8.35f
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x4105999a    # 8.35f
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x4105999a    # 8.35f
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x40c00000    # 6.0f
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x40900000    # 4.5f
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x40400000    # 3.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->COUNT:I

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mXfermode:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mExitInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v1}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBackInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->COUNT:I

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mXfermode:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mExitInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v1}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBackInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->COUNT:I

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mXfermode:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mExitInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v1}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBackInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private drawBackgroundAnim(Landroid/graphics/Canvas;)V
    .locals 8

    const v7, 0x3f666666    # 0.9f

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mScreenOnWhenStartAnim:Z

    if-nez v0, :cond_1

    const v7, 0x3f666666    # 0.9f

    :cond_0
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x43480000    # 200.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const v5, 0x3f666666    # 0.9f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x2350

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x2418

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const v2, 0x460d4000    # 9040.0f

    const v3, 0x46106000    # 9240.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    goto :goto_0
.end method

.method private drawBallAnim(Landroid/graphics/Canvas;)V
    .locals 11

    const/16 v10, 0x2198

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getMeasuredHeight()I

    move-result v7

    int-to-float v3, v9

    int-to-float v4, v7

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    if-gt v0, v10, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBallEnterAnim(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBallBackgroundAnim(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    if-le v0, v10, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBallExitAnim(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawBallBackgroundAnim(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v7, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterX()I

    move-result v8

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterY()I

    move-result v9

    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v8, v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v9, v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBallCircleAnim(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x190

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x2350

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x2418

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const v2, 0x460d4000    # 9040.0f

    const v3, 0x46106000    # 9240.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    goto/16 :goto_0
.end method

.method private drawBallCircleAnim(Landroid/graphics/Canvas;)V
    .locals 12

    const v11, -0x911801

    const/high16 v10, 0x42640000    # 57.0f

    const/high16 v5, 0x43e70000    # 462.0f

    const/4 v9, 0x0

    const/high16 v4, 0x430c0000    # 140.0f

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterX()I

    move-result v7

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterY()I

    move-result v8

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0x6b8

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0xb90

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v1

    const/high16 v2, 0x44d70000    # 1720.0f

    const/high16 v3, 0x45390000    # 2960.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    :cond_0
    :goto_0
    cmpl-float v1, v3, v4

    if-ltz v1, :cond_1

    add-float/2addr v3, v10

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v7

    int-to-float v2, v8

    filled-new-array {v9, v9, v11, v9}, [I

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    const/high16 v6, 0x42e40000    # 114.0f

    sub-float v6, v3, v6

    div-float/2addr v6, v3

    const/4 v9, 0x1

    aput v6, v5, v9

    sub-float v6, v3, v10

    div-float/2addr v6, v3

    const/4 v9, 0x2

    aput v6, v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    aput v6, v5, v9

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v1, v7

    int-to-float v2, v8

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0x1130

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0x1608

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v1

    const v2, 0x45898000    # 4400.0f

    const v3, 0x45b04000    # 5640.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0x1ae0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v2, 0x1fb8

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v1

    const/high16 v2, 0x45d70000    # 6880.0f

    const v3, 0x45fdc000    # 8120.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v3

    goto/16 :goto_0
.end method

.method private drawBallEnterAnim(Landroid/graphics/Canvas;)V
    .locals 17

    const/16 v16, 0x50

    const/16 v12, 0x5c8

    const/16 v14, 0x118

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x50

    add-int/lit16 v1, v1, 0xc8

    add-int/lit16 v13, v1, 0x5c8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xc8

    if-lt v3, v1, :cond_0

    if-gt v3, v13, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v2, v1

    const/high16 v3, 0x43480000    # 200.0f

    int-to-float v4, v13

    const/high16 v5, 0x43480000    # 200.0f

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mPathInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v1

    float-to-int v3, v1

    :cond_0
    const/4 v15, 0x0

    :goto_0
    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    array-length v1, v1

    if-ge v15, v1, :cond_4

    mul-int/lit8 v1, v15, 0x50

    add-int/lit16 v4, v1, 0xc8

    add-int/lit16 v1, v4, 0x118

    if-gt v3, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x0

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v6, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v7, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x0

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v8, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v9, v1, v2

    rem-int/lit8 v1, v15, 0x2

    if-nez v1, :cond_1

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawOneCircleBallAnim(Landroid/graphics/Canvas;IIIFFFFFLandroid/view/animation/Interpolator;)V

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const v10, 0x40cdb6db

    goto :goto_1

    :cond_2
    add-int/lit16 v4, v4, 0x118

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v6, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x2

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v7, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v8, v1, v2

    sget-object v1, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->ENTER_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v1, v1, v15

    const/4 v2, 0x2

    aget v1, v1, v2

    const v2, 0x3f947ae1    # 1.16f

    mul-float v9, v1, v2

    rem-int/lit8 v1, v15, 0x2

    if-nez v1, :cond_3

    const/4 v10, 0x0

    :goto_3
    const/16 v5, 0x4b0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawOneCircleBallAnim(Landroid/graphics/Canvas;IIIFFFFFLandroid/view/animation/Interpolator;)V

    goto :goto_2

    :cond_3
    const v10, 0x40cdb6db

    goto :goto_3

    :cond_4
    return-void
.end method

.method private drawBallExitAnim(Landroid/graphics/Canvas;)V
    .locals 13

    const/16 v12, 0x28

    const/16 v4, 0x118

    const/4 v11, 0x0

    :goto_0
    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_CIRCLER_RADIUS_VALUE:[[F

    array-length v0, v0

    if-ge v11, v0, :cond_1

    mul-int/lit8 v0, v11, 0x28

    add-int/lit16 v3, v0, 0x2198

    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v0, v0, v11

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x3f947ae1    # 1.16f

    mul-float v5, v0, v1

    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_CIRCLER_RADIUS_VALUE:[[F

    aget-object v0, v0, v11

    const/4 v1, 0x1

    aget v0, v0, v1

    const v1, 0x3f947ae1    # 1.16f

    mul-float v6, v0, v1

    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v0, v0, v11

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x3f947ae1    # 1.16f

    mul-float v7, v0, v1

    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->EXIT_BALL_DOTS_RADIUS_VALUE:[[F

    aget-object v0, v0, v11

    const/4 v1, 0x1

    aget v0, v0, v1

    const v1, 0x3f947ae1    # 1.16f

    mul-float v8, v0, v1

    rem-int/lit8 v0, v11, 0x2

    if-nez v0, :cond_0

    const/4 v9, 0x0

    :goto_1
    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    iget-object v10, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mExitInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawOneCircleBallAnim(Landroid/graphics/Canvas;IIIFFFFFLandroid/view/animation/Interpolator;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const v9, 0x40cdb6db

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawLightingAnim(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterX()I

    move-result v8

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterY()I

    move-result v9

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x190

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43c80000    # 400.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43c80000    # 400.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    int-to-float v0, v8

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v11

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v9

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v8

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v11

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v9

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x960

    if-ge v0, v1, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0x960

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v1, 0xa50

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/high16 v2, 0x45160000    # 2400.0f

    const/high16 v3, 0x45250000    # 2640.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v7

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v1, v0

    const/high16 v2, 0x45160000    # 2400.0f

    const/high16 v3, 0x45250000    # 2640.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    goto/16 :goto_0
.end method

.method private drawOneCircleBallAnim(Landroid/graphics/Canvas;IIIFFFFFLandroid/view/animation/Interpolator;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterX()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterY()I

    move-result v10

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-float/2addr v4, v1

    move-object/from16 v1, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v1, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-float/2addr v4, v1

    move-object/from16 v1, p0

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v12

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v1, 0xc8

    move/from16 v0, p2

    if-ge v0, v1, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v13, 0x0

    :goto_1
    const/16 v1, 0x1c

    if-ge v13, v1, :cond_3

    int-to-float v1, v13

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41e00000    # 28.0f

    div-float/2addr v1, v2

    add-float v1, v1, p9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCircleCoordinateX(IFF)F

    move-result v14

    int-to-float v1, v13

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41e00000    # 28.0f

    div-float/2addr v1, v2

    add-float v1, v1, p9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCircleCoordinateY(IFF)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x190

    move/from16 v0, p2

    if-gt v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x43c80000    # 400.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v8

    goto :goto_0

    :cond_2
    const/16 v1, 0x2350

    move/from16 v0, p2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2418

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    move/from16 v0, p2

    int-to-float v2, v0

    const v3, 0x460d4000    # 9040.0f

    const v4, 0x46106000    # 9240.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v8

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private drawTextAnim(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterX()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getCenterY()I

    move-result v13

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0x9b0

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0xe60

    if-gt v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v5, v4

    const/high16 v6, 0x451b0000    # 2480.0f

    const/high16 v7, 0x45660000    # 3680.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBackInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v5, v4

    const/high16 v6, 0x451b0000    # 2480.0f

    const/high16 v7, 0x452a0000    # 2720.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v14

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v11

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v16, v0

    int-to-float v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v17, v5

    sub-float v18, v4, v5

    div-int/lit8 v4, v16, 0x4

    add-int/2addr v4, v13

    int-to-float v0, v4

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0xe60

    if-le v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0x2260

    if-ge v4, v5, :cond_2

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0x2260

    if-lt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    const/16 v5, 0x2328

    if-gt v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v5, v4

    const v6, 0x46098000    # 8800.0f

    const v7, 0x460ca000    # 9000.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    int-to-float v5, v4

    const v6, 0x46098000    # 8800.0f

    const v7, 0x460ca000    # 9000.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v11

    goto/16 :goto_0
.end method

.method private getAnimtionValue(FFFFFLandroid/view/animation/Interpolator;)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, p3, p2

    sub-float v0, p1, p2

    mul-float v3, v0, v4

    div-float v2, v3, v1

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    :goto_0
    cmpg-float v3, v2, v4

    if-gtz v3, :cond_1

    :goto_1
    invoke-interface {p6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v3, p5, p4

    mul-float/2addr v3, v2

    add-float/2addr v3, p4

    return v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private getCenterX()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getCenterY()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getCircleCoordinateX(IFF)F
    .locals 8

    int-to-float v0, p1

    float-to-double v2, p2

    float-to-double v4, p3

    const-wide v6, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCircleCoordinateY(IFF)F
    .locals 8

    int-to-float v0, p1

    float-to-double v2, p2

    float-to-double v4, p3

    const-wide v6, 0x40091eb851eb851fL    # 3.14

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBackgroundAnim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawBallAnim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawLightingAnim(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->drawTextAnim(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const v2, 0x38cbff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fonts/Mitype2018-50.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTextSize:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080735

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLightingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080734

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mBallBackground:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setChargingProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mLevel:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->invalidate()V

    return-void
.end method

.method public setScreenStateWhenStartAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mScreenOnWhenStartAnim:Z

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->mTime:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->invalidate()V

    return-void
.end method

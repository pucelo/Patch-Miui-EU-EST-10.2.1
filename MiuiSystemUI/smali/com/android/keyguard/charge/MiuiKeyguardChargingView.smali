.class public Lcom/android/keyguard/charge/MiuiKeyguardChargingView;
.super Landroid/view/View;
.source "MiuiKeyguardChargingView.java"


# instance fields
.field private mBackCirclePaint:Landroid/graphics/Paint;

.field private mBatteryAnimaLevel:I

.field private mBatteryLevel:I

.field private mChargingHint:Landroid/widget/TextView;

.field private mCircleBorderWidth:F

.field private mCirclePadding:F

.field private mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

.field private mDarkMode:Z

.field private mDensityDpi:I

.field mDuar:I

.field private mGradientCirclePaint:Landroid/graphics/Paint;

.field private mInitHeight:I

.field private mQuickCharging:Z

.field private mTextNumPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizeRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const v4, 0x7f07005e

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mInitHeight:I

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mInitHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    return-void
.end method

.method private isShowChargingHint()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getScreenHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDensityDpi:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->init()V

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDensityDpi:I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    rsub-int v6, v6, 0x168

    int-to-double v6, v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    mul-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v15, v4, -0x5a

    rsub-int v12, v15, 0x10e

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v13

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    int-to-float v8, v13

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v6, v15

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v8, v4

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v8, v8, v22

    double-to-float v4, v8

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v10, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v11, v4, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->isShowChargingHint()Z

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const-string/jumbo v5, "miui-light"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060075

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v14, :cond_8

    const v4, 0x7f060021

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

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

    int-to-float v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v17, v5

    sub-float v19, v4, v5

    div-int/lit8 v4, v16, 0x4

    add-int/2addr v4, v11

    int-to-float v0, v4

    move/from16 v20, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mCirclePadding:F

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v9, v9, v21

    sub-float/2addr v8, v9

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    add-int/lit8 v4, v4, -0x5a

    int-to-float v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    int-to-double v8, v4

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v8, v8, v22

    double-to-float v4, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDuar:I

    rsub-int v7, v7, 0x168

    int-to-float v7, v7

    mul-float/2addr v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextSizeRatio:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06009d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060076

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060075

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    if-eqz v4, :cond_9

    const v4, 0x7f06009d

    goto/16 :goto_4

    :cond_9
    const v4, 0x7f060021

    goto/16 :goto_4
.end method

.method public setChargingContainer(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mContainer:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    return-void
.end method

.method public setChargingHint(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    return-void
.end method

.method public setChargingLevel(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mQuickCharging:Z

    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryLevel:I

    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    return-void
.end method

.method public setChargingLevelForAnima(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mQuickCharging:Z

    iput p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBatteryAnimaLevel:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 5

    const v1, 0x7f06009d

    const v2, 0x7f060021

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mDarkMode:Z

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mChargingHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mTextNumPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mBackCirclePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060075

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2
.end method

.method public setNeedRepositionDevice(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->postInvalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->mGradientCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.class public Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;
.super Landroid/view/View;
.source "MiuiKeyguardChargingInfoBottomCicle.java"


# instance fields
.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mWidth:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->x:F

    iget v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->y:F

    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v2, v4, :cond_0

    if-ne v0, v4, :cond_0

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->x:F

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->y:F

    iput v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mWidth:I

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mHeight:I

    :cond_0
    if-ne v2, v6, :cond_1

    if-ne v0, v6, :cond_1

    iget v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mWidth:I

    iget v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mHeight:I

    iget v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->x:F

    iget v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mRadius:F

    iput v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->y:F

    :cond_1
    iget v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mWidth:I

    iget v5, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->mHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/charge/MiuiKeyguardChargingInfoBottomCicle;->setMeasuredDimension(II)V

    return-void
.end method

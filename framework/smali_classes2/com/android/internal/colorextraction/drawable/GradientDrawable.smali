.class public Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
    }
.end annotation


# static fields
.field private static final CENTRALIZED_CIRCLE_1:F = -2.0f

.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final GRADIENT_RADIUS:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "GradientDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mMainColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondaryColor:I

.field private final mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    const/high16 v1, 0x43f00000    # 480.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private buildPaints()V
    .registers 11

    iget-object v7, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v9, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v8, v4

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float v1, v4, v9

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v2, v4, v8

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    mul-float v3, v4, v5

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    iget-object v6, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to call setScreenSize before drawing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float v10, v0, v9

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v11, v0, v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float v1, v10, v8

    sub-float v2, v11, v8

    add-float v3, v10, v8

    add-float v4, v11, v8

    iget-object v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getSecondaryColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    return v0
.end method

.method synthetic lambda$-com_android_internal_colorextraction_drawable_GradientDrawable_3291(IIIILandroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    invoke-static {p3, p4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_10

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(IIZ)V
    .registers 11

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    if-ne p2, v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    if-eqz p3, :cond_56

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v2, v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v4, 0x7d0

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;

    move v2, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;-><init>(IIIILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iput-object v6, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    :goto_55
    return-void

    :cond_56
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    goto :goto_55
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    return-void
.end method

.method public setScreenSize(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

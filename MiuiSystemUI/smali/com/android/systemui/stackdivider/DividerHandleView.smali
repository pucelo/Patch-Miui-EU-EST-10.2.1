.class public Lcom/android/systemui/stackdivider/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerHandleView$1;,
        Lcom/android/systemui/stackdivider/DividerHandleView$2;
    }
.end annotation


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private final mCircleDiameter:I

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTouching:Z

.field private final mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060047

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    return-void
.end method

.method private animateToTarget(IIZ)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-array v3, v7, [I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    aput v4, v3, v5

    aput p1, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    new-array v3, v7, [I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    aput v4, v3, v5

    aput p2, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x96

    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    sget-object v2, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerHandleView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$3;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    int-to-float v1, v8

    int-to-float v2, v10

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    int-to-float v5, v9

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setTouching(ZZ)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    move v1, v0

    :goto_2
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    :goto_3
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->animateToTarget(IIZ)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    move v1, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    goto :goto_3
.end method

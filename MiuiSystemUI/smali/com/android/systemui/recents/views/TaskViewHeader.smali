.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
    }
.end annotation


# instance fields
.field mAppIconView:Landroid/widget/ImageView;

.field mAppInfoView:Landroid/widget/ImageView;

.field mAppOverlayView:Landroid/widget/FrameLayout;

.field mAppTitleView:Landroid/widget/TextView;

.field private mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mCornerRadius:I

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

.field mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimLayerPaint:Landroid/graphics/Paint;

.field mDisabledTaskBarBackgroundColor:I

.field private mFocusTimerCountDown:Landroid/os/CountDownTimer;

.field mFocusTimerIndicator:Landroid/widget/ProgressBar;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mHighlightHeight:I

.field mIconView:Landroid/widget/ImageView;

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

.field mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mLightInfoIcon:Landroid/graphics/drawable/Drawable;

.field mLockedView:Landroid/widget/ImageView;

.field mMoveTaskTargetStackId:I

.field private mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mTask:Lcom/android/systemui/recents/model/Task;

.field mTaskBarViewDarkTextColor:I

.field mTaskBarViewLightTextColor:I

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;

.field private mTmpHSL:[F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskViewHeader;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/16 v5, 0xff

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskTargetStackId:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080324

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080323

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0703d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    const v1, 0x7f0703cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    const v1, 0x7f060141

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    const v1, 0x7f06013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    const v1, 0x7f080340

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFreeformIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08033f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFreeformIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080342

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080341

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08033b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08033a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f06013f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private hideAppOverlay(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private updateBackgroundColor(IF)V
    .locals 6

    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    aget v1, v1, v5

    sub-float v2, v4, p2

    const/high16 v3, -0x42800000    # -0.0625f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const v5, 0x800005

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const v3, 0x800003

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {p4, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz p3, :cond_5

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    const v1, 0x7f0a00dc

    invoke-static {p0, v1}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->appInfoDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_4
    return-void

    :cond_5
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    goto :goto_0
.end method

.method public cancelFocusTimerIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method getSecondaryColor(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 13

    const v4, 0x7f0703cd

    const v12, 0x7f0703cb

    const/4 v11, 0x0

    const v1, 0x7f0703cc

    const v10, 0x7f0703ca

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    move v1, v10

    move v2, v10

    move v3, v10

    move v4, v12

    move v5, v10

    move v6, v12

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v8

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    if-eq v8, v0, :cond_1

    :cond_0
    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iput v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v11, v11}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const v1, 0x7f0a0114

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a02d6

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0a018d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0xa

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTaskDataLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 0

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_0
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 0

    return-void
.end method

.method public startFocusTimerIndicator(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    int-to-long v2, p1

    const-wide/16 v4, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 0

    return-void
.end method

.method unbindFromTask(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public updateLockedFlagVisible(ZZJ)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockedView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

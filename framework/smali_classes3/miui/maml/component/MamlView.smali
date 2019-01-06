.class public Lmiui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlView$InnerView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlView"


# instance fields
.field private mHasDelay:Z

.field private mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUpdater:Lmiui/maml/RenderVsyncUpdater;

.field private mView:Lmiui/maml/component/MamlView$InnerView;


# direct methods
.method static synthetic -get0(Lmiui/maml/component/MamlView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/maml/component/MamlView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/component/MamlView;)I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/component/MamlView;)F
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlView;->mScale:F

    return v0
.end method

.method static synthetic -get4(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderVsyncUpdater;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/maml/component/MamlView;)Lmiui/maml/component/MamlView$InnerView;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .registers 12

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;J)V
    .registers 14

    const/4 v4, -0x1

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setClickable(Z)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lmiui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    if-nez p2, :cond_16

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_16
    new-instance v3, Lmiui/maml/component/MamlView$InnerView;

    invoke-direct {v3, p0, p1}, Lmiui/maml/component/MamlView$InnerView;-><init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mView:Lmiui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v3, v2}, Lmiui/maml/component/MamlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p2, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/maml/ScreenElementRoot;->setViewManager(Landroid/view/ViewManager;)V

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v4, Lmiui/maml/component/MamlView$1;

    invoke-direct {v4, p0}, Lmiui/maml/component/MamlView$1;-><init>(Lmiui/maml/component/MamlView;)V

    invoke-virtual {v3, v4}, Lmiui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lmiui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    new-instance v3, Lmiui/maml/component/MamlView$2;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, p0, v4, p3}, Lmiui/maml/component/MamlView$2;-><init>(Lmiui/maml/component/MamlView;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_52

    iput-boolean v6, p0, Lmiui/maml/component/MamlView;->mHasDelay:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v3, v0, v1, p4, p5}, Lmiui/maml/RenderVsyncUpdater;->setStartDelay(JJ)V

    :cond_52
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->init()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_69

    new-instance v3, Lmiui/maml/util/MamlAccessHelper;

    iget-object v4, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v3, v4, p0}, Lmiui/maml/util/MamlAccessHelper;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v3, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    iget-object v3, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    invoke-virtual {p0, v3}, Lmiui/maml/component/MamlView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_69
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->cleanUp()V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mMamlAccessHelper:Lmiui/maml/util/MamlAccessHelper;

    invoke-virtual {v0, p1}, Lmiui/maml/util/MamlAccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->init()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v2, "accessibilityText"

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v5, "view_width"

    sub-int v6, p4, p2

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "view_height"

    sub-int v6, p5, p3

    int-to-float v6, v6

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    move v3, p2

    move v4, p3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mParent:Landroid/view/ViewParent;

    :goto_31
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_51

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_31

    :cond_51
    const-string/jumbo v5, "view_x"

    int-to-float v6, v3

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string/jumbo v5, "view_y"

    int-to-float v6, v4

    iget-object v7, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object v5, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v5}, Lmiui/maml/RenderVsyncUpdater;->triggerUpdate()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_13

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lmiui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_13
    iget-object v1, p0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->postMessage(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlView;
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlView;->mUpdater:Lmiui/maml/RenderVsyncUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderVsyncUpdater;->setAutoCleanup(Z)V

    return-object p0
.end method

.method public setScale(FII)V
    .registers 4

    iput p1, p0, Lmiui/maml/component/MamlView;->mScale:F

    iput p2, p0, Lmiui/maml/component/MamlView;->mPivotX:I

    iput p3, p0, Lmiui/maml/component/MamlView;->mPivotY:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onResume()V

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    :cond_10
    invoke-virtual {p0}, Lmiui/maml/component/MamlView;->onPause()V

    goto :goto_8
.end method

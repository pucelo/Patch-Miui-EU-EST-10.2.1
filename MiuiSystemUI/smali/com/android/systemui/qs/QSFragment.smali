.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/miui/systemui/support/v4/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFragment$1;,
        Lcom/android/systemui/qs/QSFragment$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field protected mBackground:Landroid/view/View;

.field private mBgHandler:Landroid/os/Handler;

.field private mBrightnessHeight:I

.field private mBrightnessMarginTop:I

.field private mCaretHeight:I

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field protected mContent:Landroid/view/View;

.field private mContentMargin:I

.field private mDelay:J

.field private mFooterContainer:Landroid/view/View;

.field private mGutterHeight:I

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field protected mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

.field private mKeyguardShowing:Z

.field private mLastAppearFraction:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDataUsageEnabled:Z

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field protected mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mQuickQsAnimating:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowDataUsageObserver:Landroid/database/ContentObserver;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mStatusBarMinHeight:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSFragment;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDataUsageEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDataUsageEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/systemui/support/v4/app/Fragment;-><init>()V

    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBgHandler:Landroid/os/Handler;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    new-instance v0, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private getFraction(FFF)F
    .locals 2

    cmpg-float v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    cmpl-float v0, p3, p2

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    sub-float v0, p3, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private updateQsState()V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-eqz v1, :cond_8

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_9

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    xor-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_3
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_c

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getBrightnessView()Landroid/view/View;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v1, :cond_d

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImpl;->getExpandIndicator()Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_e

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_e

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v2, :cond_6

    const/16 v3, 0x8

    :cond_6
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSContainerImpl;->setVisibility(I)V

    return-void

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v4

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_2

    :cond_b
    move v4, v3

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v1, v3

    goto :goto_5

    :cond_e
    move v2, v3

    goto :goto_6
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public animateHeaderSlidingIn(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mContentMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public closeDetail()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->closeDetail(Z)V

    return-void
.end method

.method public disable(IIZ)V
    .locals 2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    return-object v0
.end method

.method public getQsContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getQsHeaderHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0

    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    return-void
.end method

.method public hideImmediately()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method isExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method isListening()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->isQSFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d00c8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/miui/systemui/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/systemui/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/miui/systemui/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0225

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    const v1, 0x7f0a0219

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    const v1, 0x7f0a0217

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBackground:Landroid/view/View;

    const v1, 0x7f0a0224

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v1, 0x7f0a0226

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v1, 0x7f0a0106

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/HeaderView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderView:Lcom/android/systemui/statusbar/HeaderView;

    const v1, 0x7f0a0220

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooterContainer:Landroid/view/View;

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mGutterHeight:I

    const v1, 0x7f070303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mContentMargin:I

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    const v1, 0x7f070362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mCaretHeight:I

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarMinHeight:I

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/qs/QSAnimator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "expanded"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string/jumbo v1, "listening"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/systemui/qs/QSFragment$3;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "status_bar_show_network_assistant"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mShowDataUsageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessListening(Z)V

    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getExpandView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setBrightnessListening(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setGutterEnabled(Z)V

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooter;->getExpandView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->isDataUsageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateDataUsageInfo()V

    :cond_1
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_1
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQSCustomizer(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public setQSDetail(Lcom/android/systemui/qs/QSDetail;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public setQsExpansion(FFF)V
    .locals 11

    const v10, 0x3f6147ae    # 0.88f

    const v9, 0x3df5c28f    # 0.12f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    sub-float v4, p1, v6

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQsAnimating:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mGutterHeight:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessHeight:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/qs/QSFragment;->mBrightnessMarginTop:I

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSContainerImpl;->getExpandIndicator()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v2, v5, v7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_5

    int-to-float v5, v2

    mul-float/2addr v5, v4

    :goto_0
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget v5, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_1

    const v5, 0x3d4ccccd    # 0.05f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {p0, v5, v7, p3}, Lcom/android/systemui/qs/QSFragment;->getFraction(FFF)F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    sub-float v7, v6, v1

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setTranslationY(F)V

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v5, v6, p3}, Lcom/android/systemui/qs/QSFragment;->getFraction(FFF)F

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    mul-float v7, v9, p3

    add-float/2addr v7, v10

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    mul-float v7, v9, p3

    add-float/2addr v7, v10

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, -0x41666666    # -0.3f

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    iput p3, p0, Lcom/android/systemui/qs/QSFragment;->mLastAppearFraction:F

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSContainerImpl;->getQSFooter()Lcom/android/systemui/qs/QSFooter;

    move-result-object v7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickQSPanel;->getBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QuickQSPanel;->getPaddingBottom()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mFooterContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v3, v5, v7

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    int-to-float v7, v3

    mul-float/2addr v7, v4

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v5, p1, v6

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    move v5, p1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setWindowState(II)V
    .locals 0

    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0

    return-void
.end method

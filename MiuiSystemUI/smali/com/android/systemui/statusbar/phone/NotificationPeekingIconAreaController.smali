.class public Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;
.super Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.source "NotificationPeekingIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;
.implements Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$1;,
        Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$UserPresentReceiver;
    }
.end annotation


# instance fields
.field private mClockContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationIcons:Landroid/view/ViewGroup;

.field private mNotificationIconsCount:I

.field private mPeeking:Z

.field private mPeekingDuration:I

.field private mPeekingSizeHint:I

.field private mPeekingWithExtraPadding:Z

.field private mPendingPeeking:Z

.field private mShowNotifications:Z

.field private mShowingMiuiPrompts:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->firePendingPeeking()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->handleExtraPadding()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->handlePeeking(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->onIconsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingWithExtraPadding:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingSizeHint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingDuration:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$UserPresentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$UserPresentReceiver;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$UserPresentReceiver;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const-string/jumbo v1, "NotificationPeekingIcon"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addPromptStateChangedListener(Ljava/lang/String;Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    const-class v0, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/policy/NotificationsMonitor;

    invoke-interface {v0, p0}, Lcom/android/systemui/miui/policy/NotificationsMonitor;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchPeeking()V
    .locals 5

    const/16 v4, 0x65

    const/16 v1, 0x64

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowNotifications:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIconsCount:I

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowingMiuiPrompts:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NotificationPeekingIcon"

    const-string/jumbo v1, "ignore peeking because of miui prompt showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NotificationPeekingIcon"

    const-string/jumbo v1, "pending peeking because of keyguard showing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->recordPendingPeeking()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private firePendingPeeking()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPendingPeeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPendingPeeking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->dispatchPeeking()V

    :cond_0
    return-void
.end method

.method private handleExtraPadding()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIconsCount:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v1, v3

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingSizeHint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIconsCount:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v3, v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    float-to-int v4, v0

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method

.method private handlePeeking(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v0, 0xa0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeeking:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mClockContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mClockContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/systemui/miui/anim/HideAfterAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeeking:Z

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mClockContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/miui/anim/ShowBeforeAnimatorListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mClockContainer:Landroid/view/View;

    invoke-direct {v3, v4}, Lcom/android/systemui/miui/anim/ShowBeforeAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->MIUI_ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private onIconsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIconsCount:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeekingWithExtraPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private recordPendingPeeking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPendingPeeking:Z

    return-void
.end method


# virtual methods
.method protected inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->inflateIconArea(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mNotificationIcons:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-object v0
.end method

.method public onNotificationAdded(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onNotificationArrived(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->recordPendingPeeking()V

    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onPromptStateChanged(Z)V
    .locals 3

    const/16 v2, 0x65

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowingMiuiPrompts:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowingMiuiPrompts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mPeeking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "NotificationPeekingIcon"

    const-string/jumbo v1, "prompt showing, end peeking immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setShowNotificationIcon(Z)V
    .locals 5

    const/16 v4, 0x65

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setShowNotificationIcon(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowNotifications:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mShowNotifications:Z

    if-eqz p1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->dispatchPeeking()V

    :cond_0
    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public setupClockContainer(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupClockContainer(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPeekingIconAreaController;->mClockContainer:Landroid/view/View;

    return-void
.end method

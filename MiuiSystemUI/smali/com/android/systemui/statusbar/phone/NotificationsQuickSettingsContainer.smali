.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;
    }
.end annotation


# instance fields
.field private mContentAlpha:F

.field private mCustomizerAnimating:Z

.field private mHeadsUp:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mInflated:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mQS:Lcom/android/systemui/plugins/qs/QS;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQsExpanded:Z

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mStackScroller:Landroid/view/View;

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mContentAlpha:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setContentAlpha(FZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private reloadWidth(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setContentAlpha(FZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mContentAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQS:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQS:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DismissView;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    :goto_2
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    if-ne p2, v5, :cond_7

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    :cond_0
    :goto_4
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    if-ne p2, v5, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    :cond_8
    :goto_5
    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_8

    :cond_a
    move-object v2, v1

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p2, v5, :cond_d

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    :goto_6
    invoke-super {p0, p1, v1, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_c
    move-object v1, v2

    goto :goto_6

    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    if-ne p2, v5, :cond_e

    invoke-super {p0, p1, v2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5

    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    return v5
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setClipChildren(Z)V

    const v1, 0x7f0a0221

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f0a01f0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    const v1, 0x7f0a021c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSDetail;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSDetail;->setNQSContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    const v1, 0x7f0a021b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    const v1, 0x7f0a016e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mContentAlpha:F

    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQS:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Lcom/miui/systemui/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getAllEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    if-ne v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHeadsUp:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    :cond_0
    return-void
.end method

.method public onQsDetailShowing(ZZZ)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->-get1()Landroid/util/Property;

    move-result-object v1

    :goto_0
    new-array v4, v5, [F

    if-eqz p1, :cond_1

    :goto_1
    const/4 v3, 0x0

    aput v2, v4, v3

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_2
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer$Properties;->-get0()Landroid/util/Property;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :goto_3
    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setContentAlpha(FZ)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public setCustomizerAnimating(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateResources(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;)V

    return-void
.end method

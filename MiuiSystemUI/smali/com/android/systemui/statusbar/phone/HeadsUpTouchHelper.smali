.class public Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "HeadsUpTouchHelper.java"


# instance fields
.field private mCollapseSnoozes:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchSlop:F

.field private mTouchingHeadsUpView:Z

.field private mTrackingHeadsUp:Z

.field private mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    return-void
.end method

.method private endMotion()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    return-void
.end method

.method private setTrackingHeadsUp(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setTrackingHeadsUp(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTrackingHeadsUp(Z)V

    return-void
.end method


# virtual methods
.method public isTrackingHeadsUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    return v0
.end method

.method public notifyFling(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_0

    return v8

    :cond_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v5, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v7

    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v7, v4, :cond_2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v4, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :pswitch_3
    iget v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float v1, v6, v7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v7, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->showReturnToInCallScreenButtonIfNeed()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    return v10

    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldSwallowClick(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v10

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

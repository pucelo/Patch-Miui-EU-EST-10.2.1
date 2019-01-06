.class final Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NotificationClicker called on an unclickable notification,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v0, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    iget-object v6, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :goto_0
    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibleNotificationIndex(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v0, v5, v2, v1, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onClick(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ZZI)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-static {v5}, Landroid/service/notification/StatusBarNotificationCompat;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v6, :cond_6

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_4
    iget-object v6, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "click notification, no intent, key="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v9}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/app/PendingIntent;)V

    invoke-virtual {v9, v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return-void

    :cond_8
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

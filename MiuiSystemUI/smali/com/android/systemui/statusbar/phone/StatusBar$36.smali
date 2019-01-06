.class Lcom/android/systemui/statusbar/phone/StatusBar$36;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$36;->getSendingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get38(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap32(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWorkChallengeChanged()V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get29(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/UiOffloadThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get29(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set17(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "com.miui.extra_update_request_first_time"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v6, "StatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recevie broadbcast ACTION_APPLICATION_MESSAGE_QUERY, requestFirstTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getNeedsUpdateBadgeNumNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v7, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap28(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    goto :goto_1
.end method

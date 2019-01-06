.class public Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SnoozeNotificationRunnable"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mKey:Ljava/lang/String;

.field private final mSnoozeCriterionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->-wrap7(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v1, 0x0

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_58

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    const/4 v1, 0x0

    :goto_59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_57

    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_57
.end method

.method snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x33f

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x473

    invoke-virtual {v0, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-nez v0, :cond_62

    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x340

    invoke-virtual {v1, v3, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v3, 0x12

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get7(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    :goto_5c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    return-void

    :cond_62
    const/4 v0, 0x1

    goto :goto_22

    :cond_64
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;J)V

    goto :goto_5c
.end method
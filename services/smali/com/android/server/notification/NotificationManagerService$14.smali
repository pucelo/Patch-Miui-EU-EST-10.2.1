.class Lcom/android/server/notification/NotificationManagerService$14;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_78

    const/4 v10, 0x0

    :goto_7
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v6

    if-eqz v6, :cond_cb

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_65

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get29(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    :cond_65
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I

    and-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustHaveFlags:I
    :try_end_74
    .catchall {:try_start_39 .. :try_end_74} :catchall_f9

    if-eq v1, v3, :cond_83

    monitor-exit v2

    return-void

    :cond_78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_83
    :try_start_83
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$mustNotHaveFlags:I
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_f9

    and-int/2addr v1, v3

    if-eqz v1, :cond_92

    monitor-exit v2

    return-void

    :cond_92
    :try_start_92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v6}, Lcom/android/server/notification/NotificationManagerService;->-wrap6(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->-wrap16(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingUid:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$callingPid:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$sendDelete:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object v12, v6

    move-object v15, v10

    invoke-static/range {v11 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-wrap15(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V
    :try_end_c9
    .catchall {:try_start_92 .. :try_end_c9} :catchall_f9

    :cond_c9
    :goto_c9
    monitor-exit v2

    return-void

    :cond_cb
    :try_start_cb
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$reason:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_c9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get28(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$userId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$14;->val$id:I

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_c9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V
    :try_end_f8
    .catchall {:try_start_cb .. :try_end_f8} :catchall_f9

    goto :goto_c9

    :catchall_f9
    move-exception v1

    monitor-exit v2

    throw v1
.end method

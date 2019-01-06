.class final Landroid/service/notification/NotificationListenerService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_INTERRUPTION_FILTER_CHANGED:I = 0x6

.field public static final MSG_ON_LISTENER_CONNECTED:I = 0x3

.field public static final MSG_ON_LISTENER_HINTS_CHANGED:I = 0x5

.field public static final MSG_ON_NOTIFICATION_CHANNEL_GROUP_MODIFIED:I = 0x8

.field public static final MSG_ON_NOTIFICATION_CHANNEL_MODIFIED:I = 0x7

.field public static final MSG_ON_NOTIFICATION_POSTED:I = 0x1

.field public static final MSG_ON_NOTIFICATION_RANKING_UPDATE:I = 0x4

.field public static final MSG_ON_NOTIFICATION_REMOVED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor <init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-static {v11}, Landroid/service/notification/NotificationListenerService;->-get1(Landroid/service/notification/NotificationListenerService;)Z

    move-result v11

    if-nez v11, :cond_9

    return-void

    :cond_9
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_9e

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/service/notification/StatusBarNotification;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v9, v7}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_e

    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/service/notification/StatusBarNotification;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v9, v7, v8}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_e

    :pswitch_41
    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    goto :goto_e

    :pswitch_47
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v7}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_e

    :pswitch_51
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v3}, Landroid/service/notification/NotificationListenerService;->onListenerHintsChanged(I)V

    goto :goto_e

    :pswitch_59
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v4}, Landroid/service/notification/NotificationListenerService;->onInterruptionFilterChanged(I)V

    goto :goto_e

    :pswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Landroid/os/UserHandle;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationChannel;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v6, v10, v1, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    goto :goto_e

    :pswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v10, Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationChannelGroup;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v11, p0, Landroid/service/notification/NotificationListenerService$MyHandler;->this$0:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v11, v6, v10, v2, v5}, Landroid/service/notification/NotificationListenerService;->onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    goto/16 :goto_e

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_24
        :pswitch_41
        :pswitch_47
        :pswitch_51
        :pswitch_59
        :pswitch_61
        :pswitch_7f
    .end packed-switch
.end method

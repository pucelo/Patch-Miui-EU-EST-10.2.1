.class final Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;
.super Landroid/os/Handler;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BRReportHandler"
.end annotation


# static fields
.field static final BROADCAST_RECORDS:I = 0x1

.field static final BROADCAST_TIME_RECORDS:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4c

    const-string/jumbo v2, "BroadcastQueueInjector"

    const-string/jumbo v3, "wrong message received of BRReportHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    :try_start_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    const-string/jumbo v2, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reporting BROADCAST_RECORDS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->-wrap0()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->-wrap0()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_41

    goto :goto_e

    :catch_41
    move-exception v0

    const-string/jumbo v2, "BroadcastQueueInjector"

    const-string/jumbo v3, "report message record error."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.class final Landroid/app/ReceiverReporter$ReceiverHandler;
.super Landroid/os/Handler;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverHandler"
.end annotation


# static fields
.field static final RECEIVER_RECORDS:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2e

    const-string/jumbo v2, "MIUI-ReceiverReporter"

    const-string/jumbo v3, "wrong message received of BRReportHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    :try_start_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    if-eqz v1, :cond_e

    invoke-static {}, Landroid/app/ReceiverReporter;->-wrap0()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v0

    const-string/jumbo v2, "MIUI-ReceiverReporter"

    const-string/jumbo v3, "report message record error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method

.class Lcom/android/server/connectivity/tethering/OffloadController$1;
.super Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/OffloadController;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap6(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStarted"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStoppedError()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedError"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStoppedLimitReached()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedLimitReached"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap8(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public onStoppedUnsupported()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedUnsupported"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap7(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public onSupportAvailable()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap3(Lcom/android/server/connectivity/tethering/OffloadController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get3(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onSupportAvailable"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap7(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap4(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap0(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap5(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap2(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    return-void
.end method

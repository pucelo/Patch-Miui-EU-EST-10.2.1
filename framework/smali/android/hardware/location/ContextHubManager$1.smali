.class Landroid/hardware/location/ContextHubManager$1;
.super Landroid/hardware/location/IContextHubCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    .registers 11

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_3a

    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get0(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v6, Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get3(Landroid/hardware/location/ContextHubManager;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_22
    new-instance v0, Landroid/hardware/location/ContextHubManager$1$1;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager$1$1;-><init>(Landroid/hardware/location/ContextHubManager$1;Landroid/hardware/location/ContextHubManager$Callback;IILandroid/hardware/location/ContextHubMessage;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_37

    :goto_2e
    monitor-exit p0

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get1(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37

    move-result-object v6

    goto :goto_22

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3a
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v0

    if-eqz v0, :cond_50

    monitor-enter p0

    :try_start_43
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$1;->this$0:Landroid/hardware/location/ContextHubManager;

    invoke-static {v0}, Landroid/hardware/location/ContextHubManager;->-get2(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$ICallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_2e

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_50
    const-string/jumbo v0, "ContextHubManager"

    const-string/jumbo v1, "Context hub manager client callback is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

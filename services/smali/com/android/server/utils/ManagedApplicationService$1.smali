.class Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ManagedApplicationService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_utils_ManagedApplicationService$1_11806(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_utils_ManagedApplicationService$1_12741(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_utils_ManagedApplicationService$1_14647(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-get5(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service binding died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get7(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_28
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4e

    move-result-object v2

    if-eq v2, p0, :cond_32

    monitor-exit v3

    return-void

    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v1, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;-><init>(BJLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-wrap0(Lcom/android/server/utils/ManagedApplicationService;)V
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_4e

    monitor-exit v3

    return-void

    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service connected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get7(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_2a
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_bc

    move-result-object v3

    if-eq v3, p0, :cond_34

    monitor-exit v6

    return-void

    :cond_34
    :try_start_34
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v7, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4, v5, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;-><init>(BJLjava/lang/Object;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-wrap1(Lcom/android/server/utils/ManagedApplicationService;)V

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v3

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_a1

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid binder from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-wrap0(Lcom/android/server/utils/ManagedApplicationService;)V
    :try_end_9f
    .catchall {:try_start_34 .. :try_end_9f} :catchall_bc

    monitor-exit v6

    return-void

    :cond_a1
    :try_start_a1
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get8(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/server/utils/ManagedApplicationService;->-set1(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_b3
    .catchall {:try_start_a1 .. :try_end_b3} :catchall_bc

    :cond_b3
    monitor-exit v6

    if-eqz v1, :cond_bb

    if-eqz v2, :cond_bb

    :try_start_b8
    invoke-interface {v2, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_bb
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_bb} :catch_bf
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_bb} :catch_bf

    :cond_bb
    :goto_bb
    return-void

    :catchall_bc
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_bf
    move-exception v0

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "Received exception from user service: "

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-wrap0(Lcom/android/server/utils/ManagedApplicationService;)V

    goto :goto_bb
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get7(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_28
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4e

    move-result-object v2

    if-eq v2, p0, :cond_32

    monitor-exit v3

    return-void

    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0, v1, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;-><init>(BJLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/utils/ManagedApplicationService;->-set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-wrap0(Lcom/android/server/utils/ManagedApplicationService;)V
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_4e

    monitor-exit v3

    return-void

    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.class Lcom/android/server/net/NetworkStatsService$5;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v2, -0x1

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_40

    move-result v1

    if-nez v1, :cond_1c

    monitor-exit v2

    return-void

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_40

    :try_start_25
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsService;->-wrap6(Lcom/android/server/net/NetworkStatsService;I)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_40

    monitor-exit v2

    return-void

    :catchall_35
    move-exception v1

    :try_start_36
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v1

    monitor-exit v2

    throw v1
.end method

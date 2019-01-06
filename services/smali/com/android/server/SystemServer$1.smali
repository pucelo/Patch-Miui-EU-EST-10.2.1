.class Lcom/android/server/SystemServer$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->performPendingShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$reboot:Z


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iget-object v1, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

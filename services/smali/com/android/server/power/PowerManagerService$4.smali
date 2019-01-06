.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$haltMode:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_26

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget v0, p0, Lcom/android/server/power/PowerManagerService$4;->val$haltMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_11

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$4;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$4;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_26

    goto :goto_11
.end method

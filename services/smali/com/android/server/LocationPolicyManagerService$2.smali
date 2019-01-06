.class Lcom/android/server/LocationPolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v0, "LocationPolicy"

    const-string/jumbo v1, "Screen state changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-wrap0(Lcom/android/server/LocationPolicyManagerService;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/LocationPolicyManagerService;->-set2(Lcom/android/server/LocationPolicyManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$2;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->-wrap7(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_22

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

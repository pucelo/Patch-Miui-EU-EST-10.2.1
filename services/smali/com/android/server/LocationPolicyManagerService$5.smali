.class Lcom/android/server/LocationPolicyManagerService$5;
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

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_f

    return-void

    :cond_f
    const-string/jumbo v2, "LocationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USER_ADDED/USER_REMOVED for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_30
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap1(Lcom/android/server/LocationPolicyManagerService;I)V

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService$5;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/LocationPolicyManagerService;->-wrap6(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3c

    monitor-exit v3

    return-void

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

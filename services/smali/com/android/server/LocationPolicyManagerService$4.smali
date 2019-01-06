.class Lcom/android/server/LocationPolicyManagerService$4;
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

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v2, -0x1

    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b

    return-void

    :cond_b
    const-string/jumbo v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-get4(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1, v0}, Lcom/android/server/LocationPolicyManagerService;->-wrap8(Lcom/android/server/LocationPolicyManagerService;I)V

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$4;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap9(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_41

    monitor-exit v2

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v2

    throw v1
.end method

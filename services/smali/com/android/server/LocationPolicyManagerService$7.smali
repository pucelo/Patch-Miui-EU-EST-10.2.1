.class Lcom/android/server/LocationPolicyManagerService$7;
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

    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-get3(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_55

    :try_start_7
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v4, "isDeviceIdleMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/LocationPolicyManagerService;->-get2(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v3, v1}, Lcom/android/server/LocationPolicyManagerService;->-set0(Lcom/android/server/LocationPolicyManagerService;Z)Z

    const-string/jumbo v1, "LocationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeviceIdleMode changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/LocationPolicyManagerService;->-get0(Lcom/android/server/LocationPolicyManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->-wrap5(Lcom/android/server/LocationPolicyManagerService;)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_52

    :try_start_50
    monitor-exit v2

    :goto_51
    return-void

    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_51
.end method

.class Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-get1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v2

    if-nez v2, :cond_16

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {v3, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-set0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    :cond_16
    const-class v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "isDeviceIdleMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-get1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "whetstone.activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeviceIdleMode changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;->this$0:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-static {v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->-get0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "updateAllPartialWakeLockDisableState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    :goto_66
    return-void

    :catch_67
    move-exception v1

    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

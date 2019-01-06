.class final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLiftTriggerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v5}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v5

    if-ne v4, v5, :cond_71

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get15(Lcom/android/server/GestureLauncherService;)Landroid/view/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get12(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v1, :cond_46

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_5b

    :cond_46
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v4

    if-eqz v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3dd

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :cond_5b
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v5}, Lcom/android/server/GestureLauncherService;->-get8(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/GestureLauncherService;->-set4(Lcom/android/server/GestureLauncherService;Z)Z

    return-void

    :cond_71
    return-void
.end method

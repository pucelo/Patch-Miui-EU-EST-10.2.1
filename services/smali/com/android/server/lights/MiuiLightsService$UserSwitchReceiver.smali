.class Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get7(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v0, v0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    :cond_14
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get8(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$UserSwitchReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v0, v0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateLight()V

    :cond_28
    return-void
.end method

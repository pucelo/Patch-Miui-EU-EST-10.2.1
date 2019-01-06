.class Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo v1, "temperature"

    const/16 v2, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$BatteryChangeReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    const/16 v1, 0x28

    if-ge v0, v1, :cond_14

    const/4 v1, 0x1

    :goto_10
    invoke-static {v2, v1}, Lcom/android/server/lights/MiuiLightsService;->-set1(Lcom/android/server/lights/MiuiLightsService;Z)Z

    return-void

    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

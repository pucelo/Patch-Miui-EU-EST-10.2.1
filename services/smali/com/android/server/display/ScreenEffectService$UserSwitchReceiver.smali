.class Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-wrap0(Lcom/android/server/display/ScreenEffectService;)V

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3f
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    return-void
.end method

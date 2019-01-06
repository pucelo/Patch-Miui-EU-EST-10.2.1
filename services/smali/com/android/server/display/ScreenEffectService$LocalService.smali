.class Lcom/android/server/display/ScreenEffectService$LocalService;
.super Lcom/android/server/display/ScreenEffectManager;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimDurationExtraTime(J)J
    .registers 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get3(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    cmp-long v0, p1, v2

    if-gtz v0, :cond_10

    :cond_f
    return-wide v2

    :cond_10
    return-wide p1
.end method

.method public getNightLightBrightness()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    return v0
.end method

.method public setNightLight(I)V
    .registers 8

    and-int/lit16 v2, p1, 0xff

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v4}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11080018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v4}, Lcom/android/server/display/ScreenEffectService;->-get1(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11080017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-get8(Lcom/android/server/display/ScreenEffectService;)I

    move-result v2

    if-eq v0, v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2, v0}, Lcom/android/server/display/ScreenEffectService;->-set5(Lcom/android/server/display/ScreenEffectService;I)I

    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get13()Lcom/android/server/display/DisplayPowerController;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get13()Lcom/android/server/display/DisplayPowerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    :cond_6e
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-get9(Lcom/android/server/display/ScreenEffectService;)I

    move-result v2

    if-eq v1, v2, :cond_89

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2, v1}, Lcom/android/server/display/ScreenEffectService;->-set6(Lcom/android/server/display/ScreenEffectService;I)I

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_89
    return-void
.end method

.method public updateLocalScreenEffect(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get12(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0, p1}, Lcom/android/server/display/ScreenEffectService;->-set11(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get6(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get7(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method

.method public updateScreenEffect(I)V
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get2(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1, p1}, Lcom/android/server/display/ScreenEffectService;->-set0(Lcom/android/server/display/ScreenEffectService;I)I

    sget-boolean v1, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    if-nez v1, :cond_38

    if-ne v0, v3, :cond_39

    if-eq p1, v0, :cond_39

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get5(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/ScreenEffectService;->-set11(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    :cond_27
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v1, :cond_38

    if-eq v0, v3, :cond_38

    if-eq p1, v0, :cond_38

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->-get4(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_38
.end method

.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "miui.intent.action.TOGGLE_TORCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "miui.intent.extra.IS_TOGGLE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    :goto_0
    const-string/jumbo v4, "FlashlightController"

    const-string/jumbo v5, "onReceive: isToggle=%b, newState=%b, from=%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "action_temp_state_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "temp_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_4

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "FlashlightController"

    const-string/jumbo v5, "onReceive: forceOff=%b, state=%b, from=%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get5(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.class Lcom/android/server/policy/MiuiGlobalActions$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    const-string/jumbo v1, "airplane"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string/jumbo v1, "silent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V

    goto :goto_11

    :cond_22
    const-string/jumbo v1, "reboot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    :try_start_2b
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const-string/jumbo v2, "reboot"

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->setPowerOffTimeAndReason(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap0()Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3f} :catch_40

    goto :goto_11

    :catch_40
    move-exception v0

    goto :goto_11

    :cond_42
    const-string v0, "recovery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :try_start_4a
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap0()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "recovery"

    invoke-interface {v0, v1, v2, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_40

    goto :goto_11

    :cond_55
    const-string v0, "bootloader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    :try_start_5d
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap0()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bootloader"

    invoke-interface {v0, v1, v2, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_67} :catch_40

    goto :goto_11

    :cond_68
    const-string/jumbo v1, "shutdown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    new-instance v1, Lcom/android/server/policy/MiuiGlobalActions$1$1;

    const-string/jumbo v2, "ShutdownThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/MiuiGlobalActions$1$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiGlobalActions$1$1;->start()V

    goto :goto_11

    :cond_7d
    const-string/jumbo v1, "dismiss"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MiuiGlobalActions;->-get0(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11
.end method

.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;
.super Landroid/content/BroadcastReceiver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    goto :goto_13
.end method

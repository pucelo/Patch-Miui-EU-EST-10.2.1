.class Lcom/android/server/policy/LegacyGlobalActions$1;
.super Landroid/content/BroadcastReceiver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_17
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get8(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_30
    :goto_30
    return-void

    :cond_31
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get10(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-set2(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$1;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_30
.end method

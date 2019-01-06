.class Lcom/android/server/policy/LegacyGlobalActions$6;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz p1, :cond_24

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_1a
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :cond_23
    return-void

    :cond_24
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_1a
.end method

.method onToggle(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get9(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-set2(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$6;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_32
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

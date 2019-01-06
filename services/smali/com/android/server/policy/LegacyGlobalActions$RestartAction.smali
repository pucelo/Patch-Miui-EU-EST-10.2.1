.class final Lcom/android/server/policy/LegacyGlobalActions$RestartAction;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v0, 0x10804ca

    const v1, 0x104024d

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$RestartAction;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get4(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get13(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return v3

    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$RestartAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get13(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

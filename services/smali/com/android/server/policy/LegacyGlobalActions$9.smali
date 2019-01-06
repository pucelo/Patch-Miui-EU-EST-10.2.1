.class Lcom/android/server/policy/LegacyGlobalActions$9;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

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

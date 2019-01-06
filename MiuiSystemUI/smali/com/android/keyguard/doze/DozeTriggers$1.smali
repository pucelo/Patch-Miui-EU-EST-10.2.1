.class Lcom/android/keyguard/doze/DozeTriggers$1;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAodAnimate(Z)V
    .locals 7

    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :goto_1
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    :goto_2
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-eqz p1, :cond_6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get0(Lcom/android/keyguard/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-eqz v3, :cond_1

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_4
.end method

.method public onFodInAodStateChanged(Z)V
    .locals 7

    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :goto_1
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    :goto_2
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-eqz p1, :cond_6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-eqz v3, :cond_1

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v5}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_4
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers$1;->this$0:Lcom/android/keyguard/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeTriggers;->-get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

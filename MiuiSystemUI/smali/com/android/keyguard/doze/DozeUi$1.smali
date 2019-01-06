.class Lcom/android/keyguard/doze/DozeUi$1;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/doze/DozeUi;->pulseWhileDozing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/doze/DozeUi;


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/DozeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeUi$1;->this$0:Lcom/android/keyguard/doze/DozeUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi$1;->this$0:Lcom/android/keyguard/doze/DozeUi;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeUi;->-get0(Lcom/android/keyguard/doze/DozeUi;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void
.end method

.method public onPulseStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi$1;->this$0:Lcom/android/keyguard/doze/DozeUi;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeUi;->-get0(Lcom/android/keyguard/doze/DozeUi;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void
.end method

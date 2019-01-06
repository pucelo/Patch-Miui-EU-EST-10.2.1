.class Lcom/android/keyguard/fod/MiuiGxzwManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MiuiGxzwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final FINGERPRINT_ERROR_LOCKOUT:I

.field private final FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->FINGERPRINT_ERROR_LOCKOUT:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT_FOR_O:I

    return-void
.end method


# virtual methods
.method public onFingerprintError(ILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    const-string/jumbo v0, "MiuiGxzwManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerprintError: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get3(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->showGxzwInKeyguardWhenLockout()V

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    const-string/jumbo v0, "MiuiGxzwManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardBouncerChanged: bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-set0(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    const-string/jumbo v0, "MiuiGxzwManager"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get2(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->onScreenTurnedOn()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onScreenTurnedOn()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    const-string/jumbo v0, "MiuiGxzwManager"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap2(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get2(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwOverlayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->onScreenTurnedOff()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$3;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->onScreenTurnedOff()V

    return-void
.end method

.class Lcom/android/keyguard/MiuiBleUnlockHelper$3;
.super Ljava/lang/Object;
.source "MiuiBleUnlockHelper.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiBleUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlocked(B)V
    .locals 3

    const-string/jumbo v0, "MiuiBleUnlockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBleListener state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get2(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0, p1}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-wrap1(Lcom/android/keyguard/MiuiBleUnlockHelper;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get2(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper$3;->this$0:Lcom/android/keyguard/MiuiBleUnlockHelper;

    invoke-static {v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->-get2(Lcom/android/keyguard/MiuiBleUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    goto :goto_0
.end method

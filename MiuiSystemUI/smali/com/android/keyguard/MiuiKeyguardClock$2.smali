.class Lcom/android/keyguard/MiuiKeyguardClock$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MiuiKeyguardClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateHourFormat()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateLunarCalendarInfo()V

    :cond_0
    return-void
.end method

.method public onLockScreenMagazineStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateLockScreenMagazineInfo()V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-static {v0, p1}, Lcom/android/keyguard/MiuiKeyguardClock;->-wrap0(Lcom/android/keyguard/MiuiKeyguardClock;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiKeyguardClock;->updateOwnerInfo()V

    return-void
.end method

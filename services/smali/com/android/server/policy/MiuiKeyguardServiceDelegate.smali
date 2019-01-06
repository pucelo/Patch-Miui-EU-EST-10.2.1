.class public Lcom/android/server/policy/MiuiKeyguardServiceDelegate;
.super Lcom/android/server/policy/AbstractKeyguardServiceDelegate;
.source "MiuiKeyguardServiceDelegate.java"


# instance fields
.field protected mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field protected mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field protected mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/policy/AbstractKeyguardServiceDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iput-object p3, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public OnDoubleClickHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->OnDoubleClickHome()V

    :cond_9
    return-void
.end method

.method protected enableUserActivity(Z)V
    .registers 2

    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public keyguardDone()V
    .registers 1

    return-void
.end method

.method public onScreenTurnedOnWithoutListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    :cond_9
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public pokeWakelock()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

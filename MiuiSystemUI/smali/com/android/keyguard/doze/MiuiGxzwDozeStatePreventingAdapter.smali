.class public Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;
.super Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;
.source "MiuiGxzwDozeStatePreventingAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    iput-object p2, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p3, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/content/Context;)Lcom/android/keyguard/doze/DozeMachine$Service;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/content/Context;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    sget-object v3, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mHost:Lcom/android/systemui/doze/DozeHost;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/doze/DozeHost;->setAodClockVisibility(Z)V

    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mHost:Lcom/android/systemui/doze/DozeHost;

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/doze/DozeHost;->setAodClockVisibility(Z)V

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShowFingerprintIcon()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/doze/MiuiGxzwDozeStatePreventingAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_0
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShowFingerprintIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->setDozeScreenBrightness(I)V

    :cond_0
    return-void
.end method

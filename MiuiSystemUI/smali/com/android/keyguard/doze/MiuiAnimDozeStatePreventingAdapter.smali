.class public Lcom/android/keyguard/doze/MiuiAnimDozeStatePreventingAdapter;
.super Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;
.source "MiuiAnimDozeStatePreventingAdapter.java"


# direct methods
.method private constructor <init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    return-void
.end method

.method public static wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Landroid/content/Context;)Lcom/android/keyguard/doze/DozeMachine$Service;
    .locals 1

    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodAnimateEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/doze/MiuiAnimDozeStatePreventingAdapter;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/MiuiAnimDozeStatePreventingAdapter;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :goto_0
    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isAnimateShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

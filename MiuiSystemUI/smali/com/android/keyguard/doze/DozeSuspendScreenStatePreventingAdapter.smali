.class public Lcom/android/keyguard/doze/DozeSuspendScreenStatePreventingAdapter;
.super Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;
.source "DozeSuspendScreenStatePreventingAdapter.java"


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    return-void
.end method

.method private static isNeeded(Lcom/android/keyguard/phone/DozeParameters;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/phone/DozeParameters;->getDozeSuspendDisplayStateSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static wrapIfNeeded(Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/keyguard/phone/DozeParameters;)Lcom/android/keyguard/doze/DozeMachine$Service;
    .locals 1

    invoke-static {p1}, Lcom/android/keyguard/doze/DozeSuspendScreenStatePreventingAdapter;->isNeeded(Lcom/android/keyguard/phone/DozeParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/doze/DozeSuspendScreenStatePreventingAdapter;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/DozeSuspendScreenStatePreventingAdapter;-><init>(Lcom/android/keyguard/doze/DozeMachine$Service;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setDozeScreenState(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/doze/DozeMachine$Service$Delegate;->setDozeScreenState(I)V

    return-void
.end method

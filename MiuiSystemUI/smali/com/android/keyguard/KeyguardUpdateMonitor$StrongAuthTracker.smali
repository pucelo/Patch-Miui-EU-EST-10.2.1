.class public Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
.super Lcom/android/keyguard/AbstractStrongAuthTracker;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Lcom/android/keyguard/AbstractStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/AbstractStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public hasOwnerUserAuthenticatedSinceBoot()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasUserAuthenticatedSinceBoot()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasUserAuthenticatedSinceBoot(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isFingerprintAllowedForUser(I)Z

    move-result v1

    return v1
.end method

.method public isUnlockingWithFingerprintAllowed(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isFingerprintAllowedForUser(I)Z

    move-result v0

    return v0
.end method

.method public onStrongAuthRequiredChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap25(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

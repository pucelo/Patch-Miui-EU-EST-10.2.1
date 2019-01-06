.class public interface abstract Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LockscreenCallback"
.end annotation


# virtual methods
.method public abstract getPasswordMode()I
.end method

.method public abstract haptic(I)V
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isSoundEnable()Z
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract unlockVerify(Ljava/lang/String;I)Z
.end method

.method public abstract unlocked(Landroid/content/Intent;I)V
.end method

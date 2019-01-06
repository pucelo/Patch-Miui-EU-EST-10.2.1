.class public Lcom/android/server/locksettings/LockSettingsServiceInjector;
.super Ljava/lang/Object;
.source "LockSettingsServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldTieManagedProfileLock(Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;I)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public static tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

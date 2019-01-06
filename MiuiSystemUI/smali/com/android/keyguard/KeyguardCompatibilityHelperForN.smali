.class public Lcom/android/keyguard/KeyguardCompatibilityHelperForN;
.super Ljava/lang/Object;
.source "KeyguardCompatibilityHelperForN.java"


# static fields
.field private static sIsUserUnlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->sIsUserUnlocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOwnerInfo(Landroid/security/MiuiLockPatternUtils;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "miui_keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name not found pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->sIsUserUnlocked:Z

    if-nez v0, :cond_0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->sIsUserUnlocked:Z

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->sIsUserUnlocked:Z

    return v0
.end method

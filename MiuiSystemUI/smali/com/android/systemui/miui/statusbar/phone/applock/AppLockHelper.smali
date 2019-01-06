.class public Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;
.super Ljava/lang/Object;
.source "AppLockHelper.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAccessControlPassAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAccessControlPassAsUser() isMasked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static getApplicationAccessControlEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationAccessControlEnabledAsUser() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static getApplicationMaskNotificationEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lmiui/security/SecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationMaskNotificationEnabledAsUser() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static getCurrentUserIdIfNeeded(II)I
    .locals 3

    sget-boolean v0, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AppLockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentUserIdIfNeeded() originalUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gez p1, :cond_1

    const-string/jumbo v0, "AppLockHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentUserIdIfNeeded() error currentUserId < 0: originalUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    if-gez p0, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method private static getUserIdIgnoreXspace(I)I
    .locals 1

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return p0
.end method

.method private static isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getUserIdIgnoreXspace(I)I

    move-result v1

    const-string/jumbo v2, "access_control_lock_enabled"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AppLockHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isACLockEnabledAsUser() lockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowPublicNotificationByAppLock(Landroid/content/Context;Lmiui/security/SecurityManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getApplicationAccessControlEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->getApplicationMaskNotificationEnabledAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, p3}, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->checkAccessControlPassAsUser(Lmiui/security/SecurityManager;Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/phone/applock/AppLockHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AppLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldShowPublicNotificationByAppLock() lockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

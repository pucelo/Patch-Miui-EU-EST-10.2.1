.class public Landroid/app/admin/DevicePolicyManagerCompat;
.super Ljava/lang/Object;
.source "DevicePolicyManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOwnerOrganizationName(Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getOrganizationNameForUser(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStrongAuthTimeout(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)J
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isDeviceManaged(Landroid/app/admin/DevicePolicyManager;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    return v0
.end method

.method public static isNetworkLoggingEnabled(Landroid/app/admin/DevicePolicyManager;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static reportFailedFingerprintAttempt(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedFingerprintAttempt(I)V

    return-void
.end method

.method public static reportKeyguardDismissed(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardDismissed(I)V

    return-void
.end method

.method public static reportKeyguardSecured(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportKeyguardSecured(I)V

    return-void
.end method

.method public static reportSuccessfulFingerprintAttempt(Landroid/app/admin/DevicePolicyManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V

    return-void
.end method

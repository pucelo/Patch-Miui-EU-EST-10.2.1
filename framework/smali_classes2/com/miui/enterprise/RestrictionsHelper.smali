.class public Lcom/miui/enterprise/RestrictionsHelper;
.super Ljava/lang/Object;
.source "RestrictionsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getControlState(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static handleAirplaneChange(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v3, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    return p1

    :cond_6
    const-string/jumbo v1, "airplane_state"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "Airplane mod is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    const-string/jumbo v1, "Enterprise"

    const-string/jumbo v2, "Airplane mod is force opened"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_27
    return p1
.end method

.method public static handleBluetoothChange(Landroid/content/Context;Z)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_7

    return v4

    :cond_7
    const-string/jumbo v1, "bluetooth_state"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bluetooth restrict state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2d

    if-nez v0, :cond_2d

    return v5

    :cond_2d
    if-nez p1, :cond_33

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    return v5

    :cond_33
    return v4
.end method

.method public static hasAirplaneRestriction(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "airplane_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNFCRestriction(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "nfc_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_7

    return v1

    :cond_7
    invoke-static {p0, p1, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public static hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v2, :cond_7

    return v1

    :cond_7
    invoke-static {p0, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public static hasWifiRestriction(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "wifi_state"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCameraRestricted(Landroid/content/Context;)Z
    .registers 5

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    const-string/jumbo v1, "disallow_camera"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Camera is restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_26

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_26

    const-string/jumbo v0, "disallow_sdcard"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "Enterprise"

    const-string/jumbo v1, "Sdcard is restricted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_45

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v0, v0, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_45

    const-string/jumbo v0, "disable_usb_device"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string/jumbo v0, "Enterprise"

    const-string/jumbo v1, "Usb device is restricted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_45
    return v1
.end method

.method private static isRestrictionState(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v3, :cond_7

    return v2

    :cond_7
    invoke-static {p0, p1}, Lcom/miui/enterprise/RestrictionsHelper;->getControlState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "Enterprise"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2e

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2f

    :cond_2e
    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    goto :goto_2e
.end method

.method public static isUsbDeviceRestricted(Landroid/content/Context;)Z
    .registers 5

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    const-string/jumbo v1, "disable_usb_device"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Usb device is restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

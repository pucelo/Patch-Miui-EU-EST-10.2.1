.class public Lcom/android/keyguard/MiuiKeyguardUtils;
.super Ljava/lang/Object;
.source "MiuiKeyguardUtils.java"


# static fields
.field public static final AOD_MODE:Ljava/lang/String;

.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final GXZW_SENSOR:Z

.field private static final SUPPORT_WIRELESS_CHARGE:Z

.field private static sDayOfStatistics:I

.field private static sDeviceSupportFace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceSupportPickupByMTK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceSupportScreenOnDelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceUseCamera1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceUseCamera2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

.field private static sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalDeviceSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionFaceJiajiaSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRegionSenseTimeSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasNavigationBar:Z

.field private static sHasSetAuth:Z

.field private static sIsEllipticProximity:Z

.field private static sIsFullScreenGestureOpened:Z

.field private static sIsScreenTurnOnDelayed:Z

.field private static sSCSlideNotOpenCameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWindowManager:Landroid/view/IWindowManager;

.field private static sYearOfStatistics:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    sput-boolean v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceFaceJiajiaSupport:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionFaceJiajiaSupport:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalDeviceSenseTimeSupport:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sGlobalRegionSenseTimeSupport:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportFace:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera1:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceUseCamera2:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByMTK:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    const-string/jumbo v1, "ro.vendor.audio.us.proximity"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ro.audio.us.proximity"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsEllipticProximity:Z

    const-string/jumbo v1, "gxzw_property"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->GXZW_SENSOR:Z

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/power_supply/wireless/signal_strength"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->SUPPORT_WIRELESS_CHARGE:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const-string/jumbo v1, "doze_always_on"

    :goto_1
    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->AOD_MODE:Ljava/lang/String;

    sput v3, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    sput v3, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    const-string/jumbo v1, "ro.miui.customized.region"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->CUSTOMIZED_REGION:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "aod_mode"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTwoColor(II)I
    .locals 8

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    add-float v2, v0, v1

    mul-float v3, v0, v1

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float v4, v7, v1

    mul-float/2addr v3, v4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float v4, v0, v1

    mul-float v5, v0, v1

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float v5, v7, v1

    mul-float/2addr v4, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float v5, v0, v1

    mul-float v6, v0, v1

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float v6, v7, v1

    mul-float/2addr v5, v6

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    add-float v6, v0, v1

    mul-float v7, v0, v1

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2
.end method

.method public static canShowChargeCircle(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "cepheus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static canSwitchUser(Landroid/content/Context;I)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MiuiKeyguardUtils"

    const-string/jumbo v1, "Can\'t switch user when green kid active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MiuiKeyguardUtils"

    const-string/jumbo v1, "Can\'t switch user when phone calling."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static formatTime(I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "00"

    goto :goto_0
.end method

.method public static getAuthUserId(Landroid/content/Context;I)I
    .locals 7

    const/4 v6, 0x0

    const/16 v5, -0x2710

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "second_user_id"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v5, :cond_0

    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    return v2
.end method

.method public static getCameraImageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "camera_preview"

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "camera_preview_notch_nvirtualkey"

    return-object v0

    :cond_1
    const-string/jumbo v0, "camera_preview_nvirtualkey"

    return-object v0
.end method

.method public static getDrawableFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "miui_keyguard"

    const-string/jumbo v6, "something wrong when get camera image"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    return-object v5
.end method

.method public static getFastBlurColor(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    if-le v2, v4, :cond_2

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-le v1, v4, :cond_4

    div-int/lit8 v1, v1, 0x2

    if-ge v1, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v3

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v3, "miui_keyguard"

    const-string/jumbo v4, "getFastBlurColor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v5

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v3
.end method

.method public static getFastBlurColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)I
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/miui/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getFastBlurColor(Landroid/content/Context;Landroid/graphics/Bitmap;)I

    move-result v1

    return v1
.end method

.method public static getKeyguardNotificationStatus(Landroid/content/ContentResolver;)I
    .locals 3

    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportAodAnimateDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPhoneCount()I
    .locals 2

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getTSMClientIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "event_source"

    const-string/jumbo v2, "shortcut_of_all_cards"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getToggleTorchIntent(Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static getUserList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static hasNavigationBar()Z
    .locals 3

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    sget-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasNavigationBar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasNavigationBar:Z

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "miui_keyguard"

    const-string/jumbo v2, "no window manager to get navigation bar information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAodAnimateEnable(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getKeyguardNotificationStatus(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAodClockDisable(Landroid/content/Context;)Z
    .locals 18

    const-class v13, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v13}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    if-nez v0, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/keyguard/MiuiKeyguardUtils;->AOD_MODE:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    if-eqz v7, :cond_4

    :cond_0
    const/4 v13, 0x1

    return v13

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isExtremePowerSave()Z

    move-result v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "aod_mode_time"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "aod_start"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    int-to-long v14, v13

    const-wide/32 v16, 0xea60

    mul-long v10, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "aod_end"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    int-to-long v14, v13

    const-wide/32 v16, 0xea60

    mul-long v4, v14, v16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v13, 0xb

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v13, 0xc

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v13, v3, 0x3c

    add-int/2addr v13, v6

    int-to-long v14, v13

    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v8, v14, v16

    cmp-long v13, v10, v4

    if-gez v13, :cond_7

    cmp-long v13, v8, v10

    if-ltz v13, :cond_5

    cmp-long v13, v8, v4

    if-lez v13, :cond_7

    :cond_5
    const/4 v13, 0x1

    :goto_3
    return v13

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    cmp-long v13, v10, v4

    if-lez v13, :cond_8

    cmp-long v13, v8, v10

    if-gez v13, :cond_8

    cmp-long v13, v8, v4

    if-lez v13, :cond_8

    const/4 v13, 0x1

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    return v13
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
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

.method public static isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v7

    :cond_0
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    return v7

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v8

    :cond_3
    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_5

    const/4 v3, 0x0

    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v7
.end method

.method public static isDefaultLockScreenTheme()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDozing()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isDozing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFingerprintHardwareAvailable(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/FingerprintHelper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public static isGreenKidActive(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isGreenKidActive(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static isGxzwSensor()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->GXZW_SENSOR:Z

    return v0
.end method

.method public static isIndianBuild()Z
    .locals 2

    const-string/jumbo v0, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInvertColorsEnable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_display_inversion_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNonUI()Z
    .locals 2

    const-string/jumbo v0, "sys.power.nonui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPhoneCalling(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPsensorDisabled(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsEllipticProximity:Z

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSCSlideNotOpenCamera(Landroid/content/Context;)Z
    .locals 9

    const/4 v8, 0x0

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    :cond_0
    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->sSCSlideNotOpenCameraList:Ljava/util/List;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v8
.end method

.method public static isScreenTurnOnDelayed()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    return v0
.end method

.method public static isSupportAodAnimateDevice()Z
    .locals 2

    const-string/jumbo v0, "perseus"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFaceUnlock(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPickupByMTK(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByMTK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByMTK:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportPickupByMTK:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenOnDelayed(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    :cond_0
    const-string/jumbo v2, "ursa"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "face_unlock_model"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "perseus"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sc_status"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sDeviceSupportScreenOnDelay:Ljava/util/List;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportVerticalClock(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_vertical_clock"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTopActivitySystemApp(Landroid/content/Context;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move v5, v7

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v7
.end method

.method public static isWakeupForNotification(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->getKeyguardNotificationStatus(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v1, p1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_2
    return-object p0
.end method

.method public static needPasswordCheck(ZI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    if-ne p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static recordKeyguardSettingsStatistics(Landroid/content/Context;)V
    .locals 24

    new-instance v8, Landroid/security/MiuiLockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/security/MiuiLockPatternUtils;->isSecure(I)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    :goto_0
    if-nez v7, :cond_0

    const-string/jumbo v19, "none"

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget v19, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    sget v19, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    return-void

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sput v19, Lcom/android/keyguard/MiuiKeyguardUtils;->sYearOfStatistics:I

    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    sput v19, Lcom/android/keyguard/MiuiKeyguardUtils;->sDayOfStatistics:I

    new-instance v9, Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-direct {v9, v8}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    const-string/jumbo v15, "unsecure"

    if-eqz v7, :cond_3

    invoke-virtual {v9}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_3
    :goto_1
    const-string/jumbo v19, "keyguard_secure_type"

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string/jumbo v17, "unsecure"

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasFaceUnlockData()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->faceUnlockApplyLock()Z

    move-result v19

    if-eqz v19, :cond_8

    const-string/jumbo v17, "enable"

    :cond_4
    :goto_2
    const-string/jumbo v19, "face_unlock_state"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "face_unlock_notification_toggle"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "face_unlock_by_notification_screen_on"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/MiuiKeyguardUtils;->isWakeupForNotification(Landroid/content/ContentResolver;)Z

    move-result v14

    const-string/jumbo v19, "keyguard_screen_on_when_notification"

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Lcom/android/keyguard/LockPatternUtilsWrapper;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isOwnerInfoEnabled()Z

    move-result v10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v20, "keyguard_has_owner_info"

    if-eqz v10, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "show_lunar_calendar"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v16, 0x1

    :goto_4
    const-string/jumbo v19, "keyguard_show_lunar_calendar"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "screen_off_timeout"

    const-wide/16 v22, 0x7530

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v12

    const-string/jumbo v19, "keyguard_auto_lock"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isFingerprintHardwareAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string/jumbo v17, "not_secure"

    if-eqz v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "miui_keyguard"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v21

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const-string/jumbo v17, "enabled"

    :cond_6
    :goto_5
    const-string/jumbo v19, "keyguard_fingerprint_state_new"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnum(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->getWallpaperAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenWallperProviderStatus(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string/jumbo v15, "pattern"

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v15, "numeric"

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v15, "mixed"

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasFaceUnlockData()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string/jumbo v17, "disable"

    goto/16 :goto_2

    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v17, "disabled"

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method public static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiKeyguardUtils"

    const-string/jumbo v2, "resolveIntent exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static setFaceUnlockCameraProperty(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "tulip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "clover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "sys.camera.face.unlock"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setIsFullScreenGestureOpened(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsFullScreenGestureOpened:Z

    return-void
.end method

.method public static setScreenTurnOnDelayed(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/keyguard/MiuiKeyguardUtils;->sIsScreenTurnOnDelayed:Z

    return-void
.end method

.method public static setUserAuthenticatedSinceBoot()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasSetAuth:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "sys.miui.user_authenticated"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->sHasSetAuth:Z

    :cond_0
    return-void
.end method

.method public static setUserAuthenticatedSinceBootSecond()V
    .locals 2

    const-string/jumbo v0, "sys.miui.user_authenticated_sec"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showMXTelcelLockScreen(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "mx_telcel"

    sget-object v1, Lcom/android/keyguard/MiuiKeyguardUtils;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.celltick.lockscreen"

    invoke-static {p0, v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static skipFaceUnlockWhenStopDoze(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "config_displayBlanksAfterDoze"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static supportDualClock()Z
    .locals 2

    const-string/jumbo v0, "perseus"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static supportWirelessCharge()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/MiuiKeyguardUtils;->SUPPORT_WIRELESS_CHARGE:Z

    return v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

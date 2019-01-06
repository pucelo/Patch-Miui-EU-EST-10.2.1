.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION;,
        Landroid/os/Build$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BOOTLOADER:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final BUILDDATE:Ljava/lang/String;

.field public static final COOLPADGENE_NEED:Ljava/lang/String;

.field public static final CPU_ABI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CPU_ABI2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_INTERNAL:Ljava/lang/String;

.field public static final CUSTOM_NAME:Ljava/lang/String;

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final DISPLAY_HARDWARE:Ljava/lang/String;

.field public static final EXTERNAL:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final GY_VERSION:Ljava/lang/String;

.field public static final HARDWARE:Ljava/lang/String;

.field public static final HOST:Ljava/lang/String;

.field public static final ID:Ljava/lang/String;

.field public static final IDEAFRIEND_NEED:Ljava/lang/String;

.field public static final INTERNAL:Ljava/lang/String;

.field public static final IS_CONTAINER:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_EMULATOR:Z

.field public static final IS_ENG:Z

.field public static final IS_TREBLE_ENABLED:Z

.field public static final IS_USER:Z

.field public static final IS_USERDEBUG:Z

.field public static final LCT_ACCELERATOR_BRAND:Ljava/lang/String;

.field public static final LCT_AUTOREGISTER_NAME:Ljava/lang/String;

.field public static final LCT_BLUETOOTH_BRAND:Ljava/lang/String;

.field public static final LCT_BSP_VERSION:Ljava/lang/String;

.field public static final LCT_BUILD_TYPE:Ljava/lang/String;

.field public static final LCT_DEVICE_BLACK_UI:Ljava/lang/String;

.field public static final LCT_DEVICE_NAME:Ljava/lang/String;

.field public static final LCT_EXTSTORAGE_TYPE:Ljava/lang/String;

.field public static final LCT_HARDWARE_PLATFORM:Ljava/lang/String;

.field public static final LCT_LT_BUILD_ID:Ljava/lang/String;

.field public static final LCT_NETWORK_TYPE:Ljava/lang/String;

.field public static final LCT_OPERATOR_NAME:Ljava/lang/String;

.field public static final LCT_PHONENUMBER_MINMATCH:Ljava/lang/String;

.field public static final LCT_PROJECT_NAME:Ljava/lang/String;

.field public static final LCT_SINGALCARD_DULEMODE:Ljava/lang/String;

.field public static final LCT_WATER_MARK:Ljava/lang/String;

.field public static final LCT_WIFI_BRAND:Ljava/lang/String;

.field public static final LQI_PRODUCT_DEVICE:Ljava/lang/String;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final PERMISSIONS_REVIEW_REQUIRED:Z

.field public static final PRODUCT:Ljava/lang/String;

.field public static final RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Build"

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;

.field public static final USE_FLYME:Ljava/lang/String;

.field public static final VERSION_TYPE:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "ro.build.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.display.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.board"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.manufacturer"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.brand"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "ro.bootloader"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.display.hardware"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->DISPLAY_HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.gy.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->GY_VERSION:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.version.bsp"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_BSP_VERSION:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.custom.internal.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->CUSTOM_INTERNAL:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.custom.internal.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->CUSTOM_NAME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.coolpadgene.need"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->COOLPADGENE_NEED:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.lt.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_LT_BUILD_ID:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.accelerator.brand"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_ACCELERATOR_BRAND:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.water.mark"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_WATER_MARK:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.dulemode"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_SINGALCARD_DULEMODE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.device.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LQI_PRODUCT_DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.hardware.platform"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_HARDWARE_PLATFORM:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.internal.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_BUILD_TYPE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.version.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->VERSION_TYPE:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_PROJECT_NAME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.wifi.brand"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_WIFI_BRAND:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.network.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_NETWORK_TYPE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.operator.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_OPERATOR_NAME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.autoregister.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_AUTOREGISTER_NAME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.device.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_DEVICE_NAME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.extstorage.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_EXTSTORAGE_TYPE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.bluetooth.brand"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_BLUETOOTH_BRAND:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.phonenumber.minmatch"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_PHONENUMBER_MINMATCH:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.device.black.ui"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->LCT_DEVICE_BLACK_UI:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.ideafriend.need"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->IDEAFRIEND_NEED:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.version.internal"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->INTERNAL:Ljava/lang/String;

    const-string/jumbo v1, "ro.meizu.useflyme"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->USE_FLYME:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.version.external"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->EXTERNAL:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.date"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BUILDDATE:Ljava/lang/String;

    const-string/jumbo v1, "gsm.version.baseband"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->RADIO:Ljava/lang/String;

    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    const-string/jumbo v1, "no.such.thing"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string/jumbo v1, "ro.product.cpu.abilist"

    const-string/jumbo v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string/jumbo v1, "ro.product.cpu.abilist32"

    const-string/jumbo v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const-string/jumbo v1, "ro.product.cpu.abilist64"

    const-string/jumbo v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    if-eqz v1, :cond_23f

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    :goto_1b3
    aget-object v1, v0, v3

    sput-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    array-length v1, v0

    if-le v1, v2, :cond_243

    aget-object v1, v0, v2

    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    :goto_1be
    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.tags"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v1, "ro.treble.enabled"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_TREBLE_ENABLED:Z

    const-string/jumbo v1, "ro.build.date.utc"

    invoke-static {v1}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sput-wide v4, Landroid/os/Build;->TIME:J

    const-string/jumbo v1, "ro.build.user"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    const-string/jumbo v1, "ro.build.host"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_24a

    move v1, v2

    :goto_207
    sput-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v1, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string/jumbo v1, "userdebug"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    const-string/jumbo v1, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_USER:Z

    const-string/jumbo v1, "ro.boot.container"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->IS_CONTAINER:Z

    const-string/jumbo v1, "ro.permission_review_required"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_24c

    :goto_23c
    sput-boolean v2, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    return-void

    :cond_23f
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    goto/16 :goto_1b3

    :cond_243
    const-string/jumbo v1, ""

    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto/16 :goto_1be

    :cond_24a
    move v1, v3

    goto :goto_207

    :cond_24c
    move v2, v3

    goto :goto_23c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deriveFingerprint()Ljava/lang/String;
    .registers 5

    const/16 v4, 0x3a

    const/16 v3, 0x2f

    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.version.release"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.version.incremental"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8e
    return-object v0
.end method

.method public static ensureFingerprintProperty()V
    .registers 3

    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    :try_start_d
    const-string/jumbo v1, "ro.build.fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "Build"

    const-string/jumbo v2, "Failed to set fingerprint property"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static getLong(Ljava/lang/String;)J
    .registers 5

    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    :catch_9
    move-exception v0

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 3

    const-string/jumbo v2, "device_identifiers"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdentifiersPolicyService;

    move-result-object v1

    :try_start_b
    invoke-interface {v1}, Landroid/os/IDeviceIdentifiersPolicyService;->getSerial()Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v2

    return-object v2

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unknown"

    return-object v2
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    :cond_e
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isBuildConsistent()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$10;,
        Lmiui/app/ToggleManager$11;,
        Lmiui/app/ToggleManager$12;,
        Lmiui/app/ToggleManager$13;,
        Lmiui/app/ToggleManager$14;,
        Lmiui/app/ToggleManager$15;,
        Lmiui/app/ToggleManager$16;,
        Lmiui/app/ToggleManager$17;,
        Lmiui/app/ToggleManager$18;,
        Lmiui/app/ToggleManager$19;,
        Lmiui/app/ToggleManager$1;,
        Lmiui/app/ToggleManager$20;,
        Lmiui/app/ToggleManager$2;,
        Lmiui/app/ToggleManager$3;,
        Lmiui/app/ToggleManager$4;,
        Lmiui/app/ToggleManager$5;,
        Lmiui/app/ToggleManager$6;,
        Lmiui/app/ToggleManager$7;,
        Lmiui/app/ToggleManager$8;,
        Lmiui/app/ToggleManager$9;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;,
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$WorkHandler;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

.field public static final COMPONENT_NAME_MIDROP_STARTUP_RECEIVER:Ljava/lang/String; = "com.xiaomi.midrop.startup.StartupReceiver"

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final EXECUTE_TOGGLE_BLUETOOTH_DELAY_TIME:I = 0x1f4

.field private static final KEY_POWER_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final METHOD_CHANGE_POWER_MODE:Ljava/lang/String; = "changePowerMode"

.field public static final MINIMUM_BACKLIGHT:I

.field public static final MIUI_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "miui"

.field private static final MSG_UPDATE_SYNC_TOGGLE:I = 0x2

.field private static final MSG_VERIFY_BLUETOOTH_STATE:I = 0x1

.field public static final PINECONE_BRIGHTNESS_OPT_STRATEGY:Ljava/lang/String; = "pinecone"

.field public static final PKG_NAME_MIDROP:Ljava/lang/String; = "com.xiaomi.midrop"

.field private static final POWER_MODE_URI_PATH:Ljava/lang/String; = "content://com.miui.powercenter.powersaver"

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final RANGE:I

.field private static final SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field public static final SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BATTERY_SAVER:I = 0x1e

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_CAST:I = 0x1c

.field public static final TOGGLE_COUNT:I = 0x20

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_EDIT:I = 0x1d

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final VERIFY_BLUETOOTH_STATE_DELAY_TIME:I = 0x3e8

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sCurrentUserId:I

.field private static volatile sHasCast:Z

.field private static volatile sHasGpsFeature:Z

.field private static sHasMiDrop:Z

.field private static volatile sHasMobileData:Z

.field private static volatile sHasVibrator:Z

.field private static sLongClickActions:[I

.field private static final sRemoveByMultiUserList:[I

.field private static volatile sStaticFieldsInited:Z

.field private static sToggleDisabled:[Z

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleOffImages:[I

.field private static sToggleOnImages:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sWifiApAvailable:Z


# instance fields
.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBatterySaveMode:Z

.field private final mBatterySaverObserver:Landroid/database/ContentObserver;

.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDelay:Z

.field private mBluetoothEnable:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMiDropChanging:Z

.field private final mMiDropObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field mWifiChanging:Z

.field mWifiConnected:Z

.field mWifiEnable:Z

.field mWifiSsid:Ljava/lang/String;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get11()Landroid/net/wifi/WifiManager;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get12()I
    .registers 1

    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    return v0
.end method

.method static synthetic -get13()Z
    .registers 1

    sget-boolean v0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return v0
.end method

.method static synthetic -get2(Lmiui/app/ToggleManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    return v0
.end method

.method static synthetic -get3(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/app/ToggleManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return v0
.end method

.method static synthetic -get5(Lmiui/app/ToggleManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    return v0
.end method

.method static synthetic -get6(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic -get7(Lmiui/app/ToggleManager;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return v0
.end method

.method static synthetic -get8(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/app/ToggleManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/app/ToggleManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/app/ToggleManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    return p0
.end method

.method static synthetic -wrap0(Lmiui/app/ToggleManager;)Z
    .registers 2

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/app/ToggleManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/app/ToggleManager;->applyBrightnessIntenal(IZ)V

    return-void
.end method

.method static synthetic -wrap10(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic -wrap11(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic -wrap12(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic -wrap13(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static synthetic -wrap14(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic -wrap15(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic -wrap16(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic -wrap17(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic -wrap18(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic -wrap19(Lmiui/app/ToggleManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->updateSyncToggle(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V

    return-void
.end method

.method static synthetic -wrap20(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method static synthetic -wrap21(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->verifyBluetoothState()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/app/ToggleManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/ToggleManager;->toggleBluetooth(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSyncIntenal()V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/app/ToggleManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x1b

    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x20

    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    sput-boolean v1, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "bluetooth"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "data"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "rotate"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "ringer_mode"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi_ap"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "midrop"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "cast"

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "battery_safer"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "edit"

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090001

    const/16 v3, 0x16

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/high16 v2, 0x11090000

    const/4 v3, 0x2

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090002

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090003

    const/16 v3, 0x9

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090004

    const/4 v3, 0x7

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090005

    const/16 v3, 0xa

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090006

    const/4 v3, 0x5

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000e

    const/16 v3, 0x17

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090007

    const/4 v3, 0x3

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090008

    const/16 v3, 0x14

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090009

    const/16 v3, 0x12

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000a

    const/16 v3, 0x8

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000b

    const/16 v3, 0xb

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000c

    const/4 v3, 0x6

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000d

    const/16 v3, 0xf

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x1109000f

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090010

    const/16 v3, 0x19

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090011

    const/16 v3, 0x1a

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090012

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090013

    const/16 v3, 0x1c

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090015

    const/16 v3, 0x1e

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11090014

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/4 v0, 0x0

    :goto_202
    if-ge v0, v4, :cond_218

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_202

    :cond_218
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090019

    const/16 v3, 0x16

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090017

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090018

    const/4 v3, 0x2

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001a

    const/16 v3, 0x9

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001b

    const/4 v3, 0x7

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001c

    const/4 v3, 0x5

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090021

    const/16 v3, 0x17

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001d

    const/4 v3, 0x3

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001e

    const/16 v3, 0x8

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1109001f

    const/4 v3, 0x6

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090020

    const/16 v3, 0xf

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090022

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090023

    const/16 v3, 0x19

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090024

    const/16 v3, 0x1a

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090025

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11090026

    const/16 v3, 0x1e

    aput v2, v1, v3

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a1

    const/16 v3, 0x16

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a0

    const/4 v3, 0x2

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a6

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ac

    const/16 v3, 0x9

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ae

    const/4 v3, 0x7

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200b4

    const/4 v3, 0x5

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200be

    const/16 v3, 0x17

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c2

    const/4 v3, 0x3

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c3

    const/16 v3, 0x14

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c8

    const/16 v3, 0x8

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ca

    const/16 v3, 0xb

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200cc

    const/4 v3, 0x6

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200d0

    const/16 v3, 0xf

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200ce

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c0

    const/16 v3, 0x19

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200bc

    const/16 v3, 0x1a

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200b2

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102009e

    const/16 v3, 0x1e

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200af

    const/16 v3, 0xa

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200c5

    const/16 v3, 0x12

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200a3

    const/16 v3, 0x1c

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x110200aa

    const/16 v3, 0x1d

    aput v2, v1, v3

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/4 v0, 0x0

    :goto_365
    if-ge v0, v4, :cond_372

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_365

    :cond_372
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200b0

    const/16 v3, 0xa

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200c6

    const/16 v3, 0x12

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const v2, 0x110200a4

    const/16 v3, 0x1c

    aput v2, v1, v3

    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    const/4 v0, 0x0

    :goto_392
    if-ge v0, v4, :cond_39f

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_392

    :cond_39f
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a2

    const/16 v3, 0x16

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102009f

    const/4 v3, 0x2

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a5

    aput v2, v1, v6

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200ab

    const/16 v3, 0x9

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200ad    # 1.02554E-28f

    const/4 v3, 0x7

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200b3

    const/4 v3, 0x5

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bd

    const/16 v3, 0x17

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c1

    const/4 v3, 0x3

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c4

    const/16 v3, 0x14

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c7

    const/16 v3, 0x8

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c9

    const/16 v3, 0xb

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cb

    const/4 v3, 0x6

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cf

    const/16 v3, 0xf

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200cd

    aput v2, v1, v7

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bf

    const/16 v3, 0x19

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200bb

    const/16 v3, 0x1a

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200b1

    aput v2, v1, v8

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102009d

    const/16 v3, 0x1e

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200af

    const/16 v3, 0xa

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200c5

    const/16 v3, 0x12

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a3

    const/16 v3, 0x1c

    aput v2, v1, v3

    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x110200a9

    const/16 v3, 0x1d

    aput v2, v1, v3

    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    const-string/jumbo v1, "auto_brightness_optimize_strategy"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    const-string/jumbo v1, "persist.power.useautobrightadj"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    sput v5, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    sput-boolean v5, Lmiui/app/ToggleManager;->sHasCast:Z

    sput-boolean v5, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    sput-boolean v5, Lmiui/app/ToggleManager;->sHasMobileData:Z

    sput-boolean v5, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    sput-boolean v5, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z

    sput-boolean v5, Lmiui/app/ToggleManager;->sHasVibrator:Z

    filled-new-array {v7, v8}, [I

    move-result-object v1

    sput-object v1, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lmiui/app/ToggleManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    iput-object v7, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    new-instance v4, Lmiui/app/ToggleManager$2;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lmiui/app/ToggleManager$3;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lmiui/app/ToggleManager$4;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$5;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$6;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$7;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$8;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$9;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$10;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$11;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$12;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$13;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$14;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$15;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    new-instance v4, Lmiui/app/ToggleManager$16;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$17;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$18;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    new-instance v4, Lmiui/app/ToggleManager$19;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$19;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    new-instance v4, Lmiui/app/ToggleManager$20;

    invoke-direct {v4, p0}, Lmiui/app/ToggleManager$20;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ToggleManager"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lmiui/app/ToggleManager$WorkHandler;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/app/ToggleManager$WorkHandler;-><init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    sput p2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    sput-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v5, 0x110a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-eqz v4, :cond_157

    const/4 v3, 0x1

    :goto_130
    if-eqz v3, :cond_139

    new-instance v4, Lmiui/app/WifiApEnabler;

    invoke-direct {v4, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v4, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    :cond_139
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->registerListener(Z)V

    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_156

    sget-object v4, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v5, 0x11090028

    const/16 v6, 0x19

    aput v5, v4, v6

    :cond_156
    return-void

    :cond_157
    const/4 v3, 0x0

    goto :goto_130
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private applyBrightnessIntenal(IZ)V
    .registers 8

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_37

    sget-boolean v2, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "pinecone"

    sget-object v3, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget v2, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v2

    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    int-to-float v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sget v3, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v2, v3

    invoke-static {v1}, Lmiui/app/CompatibilityP;->setTemporaryScreenAutoBrightness(F)V

    if-eqz p2, :cond_1a

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_auto_brightness_adj"

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_1a

    :cond_37
    sget v2, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v2

    invoke-static {v0}, Lmiui/app/CompatibilityP;->setTemporaryScreenBrightness(I)V

    if-eqz p2, :cond_1a

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness"

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1a
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;I)Lmiui/app/ToggleManager;
    .registers 4

    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_f

    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    :cond_f
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_a
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v9, Lmiui/app/ToggleManager;

    monitor-enter v9

    :try_start_9
    sget-boolean v6, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_116

    if-nez v6, :cond_6e

    :try_start_d
    const-string/jumbo v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    sput-boolean v6, Lmiui/app/ToggleManager;->sHasVibrator:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0xd0000

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10d

    move v6, v7

    :goto_31
    sput-boolean v6, Lmiui/app/ToggleManager;->sHasCast:Z

    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-eqz v6, :cond_110

    move v6, v7

    :goto_44
    sput-boolean v6, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    sput-boolean v6, Lmiui/app/ToggleManager;->sHasMobileData:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v10, "android.hardware.location.gps"

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lmiui/app/ToggleManager;->sHasGpsFeature:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5a} :catch_11c
    .catchall {:try_start_d .. :try_end_5a} :catchall_116

    :goto_5a
    :try_start_5a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v10, "com.xiaomi.midrop"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_113

    move v6, v7

    :goto_69
    sput-boolean v6, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_6b} :catch_119
    .catchall {:try_start_5a .. :try_end_6b} :catchall_116

    :goto_6b
    const/4 v6, 0x1

    :try_start_6c
    sput-boolean v6, Lmiui/app/ToggleManager;->sStaticFieldsInited:Z
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_116

    :cond_6e
    monitor-exit v9

    const-string/jumbo v6, "support_power_mode"

    invoke-static {v6, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_81

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_81
    sget-boolean v6, Lmiui/app/ToggleManager;->sWifiApAvailable:Z

    if-nez v6, :cond_8e

    const/16 v6, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8e
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9d

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9d
    sget-boolean v6, Lmiui/app/ToggleManager;->sHasMobileData:Z

    if-nez v6, :cond_b1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v6, 0x19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b1
    sget-boolean v6, Lmiui/app/ToggleManager;->sHasVibrator:Z

    if-nez v6, :cond_bd

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_bd
    sget-boolean v6, Lmiui/app/ToggleManager;->sHasGpsFeature:Z

    if-nez v6, :cond_c9

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c9
    const-string/jumbo v6, "support_screen_paper_mode"

    invoke-static {v6, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_db

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_db
    sget-boolean v6, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-eqz v6, :cond_e2

    const/4 v6, 0x0

    if-eqz v6, :cond_eb

    :cond_e2
    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_eb
    sget-boolean v6, Lmiui/app/ToggleManager;->sHasCast:Z

    if-nez v6, :cond_f8

    const/16 v6, 0x1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f8
    invoke-static {}, Lmiui/app/ToggleManager;->isMiPad()Z

    move-result v6

    xor-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_109

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_109
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void

    :cond_10d
    move v6, v8

    goto/16 :goto_31

    :cond_110
    move v6, v8

    goto/16 :goto_44

    :cond_113
    move v6, v8

    goto/16 :goto_69

    :catchall_116
    move-exception v6

    monitor-exit v9

    throw v6

    :catch_119
    move-exception v1

    goto/16 :goto_6b

    :catch_11c
    move-exception v2

    goto/16 :goto_5a
.end method

.method private static filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    sget-object v2, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_14

    aget v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method private static getCastIntent()Landroid/content/Intent;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getDefaultToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {p0, v0, v2, v1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    return-object v0
.end method

.method public static getEditFixedPosition(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getGeneralImage(I)I
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez p1, :cond_68

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110200b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_68
    return-object v3
.end method

.method public static getImageResource(IZ)I
    .registers 3

    if-eqz p1, :cond_7

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    :goto_6
    return v0

    :cond_7
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    goto :goto_6
.end method

.method public static getName(I)I
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method private getRotation(Landroid/view/IWindowManager;)I
    .registers 6

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1d

    const-string/jumbo v1, "getRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    :goto_12
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1d
    const-string/jumbo v1, "getDefaultDisplayRotation"

    const-class v2, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    goto :goto_12
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    const-string/jumbo v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_3c

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_39

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3c
    return-object v6
.end method

.method public static getStatus(I)Z
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .registers 5

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    :cond_a
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "status_bar_toggle_list_order_new"

    :goto_9
    return-object v0

    :cond_a
    const-string/jumbo v0, "status_bar_toggle_page_order"

    goto :goto_9
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .registers 4

    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getUserId(Landroid/content/Context;)I
    .registers 4

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    :goto_11
    return v1

    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_11
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3d

    const-string/jumbo v4, "status_bar_toggle_list_order_new"

    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :goto_20
    array-length v7, v6

    if-ge v1, v7, :cond_45

    :try_start_23
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_41

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3d
    const-string/jumbo v4, "status_bar_toggle_page_order"

    goto :goto_a

    :catch_41
    move-exception v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_45
    invoke-static {p0, v3, p1, p2}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public static isDisabled(I)Z
    .registers 2

    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_style_type"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static isMiPad()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method

.method private isSyncOn()Z
    .registers 8

    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string/jumbo v3, "getMasterSyncAutomaticallyAsUser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    move-result v2

    return v2

    :catch_29
    move-exception v0

    const-string/jumbo v2, "ToggleManager"

    const-string/jumbo v3, "getMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    return v2
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_e

    const/16 v1, 0x20

    if-ge p1, v1, :cond_e

    invoke-static {p1}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private longClickScreenshot()Z
    .registers 15

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const-string/jumbo v10, "Screenshots"

    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_43

    new-instance v6, Lmiui/app/ToggleManager$22;

    invoke-direct {v6, p0}, Lmiui/app/ToggleManager$22;-><init>(Lmiui/app/ToggleManager;)V

    invoke-virtual {v7, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_28

    return v9

    :cond_28
    const-wide/16 v4, 0x0

    array-length v10, v1

    move v8, v9

    :goto_2c
    if-ge v8, v10, :cond_43

    aget-object v0, v1, v8

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-lez v11, :cond_40

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_43
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4a

    return v9

    :cond_4a
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "image/*"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v8, 0x1

    return v8
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 6

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    return-object p0

    :cond_8
    if-nez p0, :cond_b

    return-object v3

    :cond_b
    const/4 v1, -0x2

    if-eq p1, v1, :cond_50

    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {p0}, Lmiui/app/ToggleManager;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_50

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

    :cond_50
    return-object p0
.end method

.method private postUpdateDataToggleAsync()V
    .registers 3

    const/4 v1, 0x6

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private queryBrightnessStatus()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness_mode"

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_3d

    :goto_13
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    const/16 v3, 0x66

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    return-void

    :cond_3d
    move v0, v1

    goto :goto_13

    :cond_3f
    move v0, v1

    goto :goto_13
.end method

.method private registerListener(Z)V
    .registers 15

    const/4 v4, 0x0

    const/4 v12, 0x0

    if-eqz p1, :cond_175

    const/4 v11, -0x1

    :goto_5
    if-eqz p1, :cond_17b

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_9
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object v7, v2

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    const v1, 0x7fffffff

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lmiui/app/ToggleManager;->SUPPORT_AUTO_BRIGHTNESS_OPTIMIZE:Z

    if-nez v0, :cond_e9

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_e9
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v12, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "key_midrop_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v4, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget v0, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateAllToggles(I)V

    return-void

    :cond_175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    goto/16 :goto_5

    :cond_17b
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v11}, Landroid/os/UserHandle;-><init>(I)V

    goto/16 :goto_9
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    return-object v1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_27

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_27

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_27

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_27
    return-object p1
.end method

.method private setBrightnessMode()V
    .registers 5

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_brightness_mode"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_30

    const-string/jumbo v1, "status_bar_toggle_list_order_new"

    :goto_5
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0, p1, p2, v3}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x60

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_30
    const-string/jumbo v1, "status_bar_toggle_page_order"

    goto :goto_5

    :cond_34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private showToast(II)V
    .registers 4

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .registers 6

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private toggleAccelerometer()V
    .registers 6

    :try_start_0
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v3, :cond_13

    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, v2}, Lmiui/app/ToggleManager;->getRotation(Landroid/view/IWindowManager;)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v3, 0x2

    if-eq v3, v1, :cond_23

    const v3, 0x11090029

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lmiui/app/ToggleManager;->showToast(II)V

    :cond_23
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_12

    :catch_28
    move-exception v0

    goto :goto_12
.end method

.method private toggleAutoBrightness()V
    .registers 7

    const/4 v3, 0x0

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_46

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    :goto_7
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-nez v2, :cond_42

    const-string/jumbo v2, "pinecone"

    sget-object v4, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    const-string/jumbo v2, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_brightness"

    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v5, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_42
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    return-void

    :cond_46
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_4e

    const/4 v2, 0x1

    :goto_4b
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_7

    :cond_4e
    move v2, v3

    goto :goto_4b
.end method

.method private toggleBatterySaverToggle()V
    .registers 6

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "content://com.miui.powercenter.powersaver"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v2, v3}, Lmiui/app/ToggleManager;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "changePowerMode"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private toggleBluetooth()V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_3a

    const v1, 0x110200a0

    :goto_15
    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v1, :cond_3e

    move v1, v2

    :goto_29
    invoke-virtual {v4, v5, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_35

    const/16 v3, 0x1f4

    :cond_35
    int-to-long v2, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3a
    const v1, 0x1102009f

    goto :goto_15

    :cond_3e
    move v1, v3

    goto :goto_29
.end method

.method private toggleBluetooth(Z)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v5, 0xb

    if-eq v2, v5, :cond_27

    const/16 v5, 0xd

    if-ne v2, v5, :cond_29

    const/4 v0, 0x1

    :goto_17
    if-nez v0, :cond_3c

    if-eqz p1, :cond_2b

    const/16 v5, 0xc

    if-eq v2, v5, :cond_2b

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    iget-object v3, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_26
    :goto_26
    return-void

    :cond_27
    const/4 v0, 0x1

    goto :goto_17

    :cond_29
    const/4 v0, 0x0

    goto :goto_17

    :cond_2b
    if-nez p1, :cond_39

    const/16 v5, 0xa

    if-eq v2, v5, :cond_39

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    iget-object v3, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_26

    :cond_39
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    goto :goto_26

    :cond_3c
    iget-object v5, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4d

    :goto_40
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26

    :cond_4d
    move v3, v4

    goto :goto_40
.end method

.method private toggleData()Z
    .registers 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v4, :cond_1c

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.miui.securitycenter"

    const-string/jumbo v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    goto :goto_1b
.end method

.method private toggleEdit()V
    .registers 7

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string/jumbo v1, "com.android.settings.ToggleArrangementFragment"

    :goto_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, ":android:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.SubSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_31
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_3d

    :goto_38
    return-void

    :cond_39
    const-string/jumbo v1, "com.android.settings.TogglePositionFragment"

    goto :goto_b

    :catch_3d
    move-exception v0

    const-string/jumbo v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "toggleEdit() Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method private toggleFlightMode()V
    .registers 5

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasAirplaneRestriction(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "airplane_mode_on"

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    :goto_19
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_39
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private toggleGps()V
    .registers 5

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "gps"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    xor-int/lit8 v2, v2, 0x1

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method private toggleMiDrop()V
    .registers 7

    const/4 v5, 0x1

    const/16 v2, 0x1b

    invoke-static {v2}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_55

    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    if-eqz v1, :cond_56

    const-string/jumbo v2, "miui.intent.action.midrop_off"

    :goto_16
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.xiaomi.midrop"

    const-string/jumbo v4, "com.xiaomi.midrop.startup.StartupReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v3, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: toggle MiDrop to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_5a

    const-string/jumbo v2, "OFF"

    :goto_47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    :cond_55
    return-void

    :cond_56
    const-string/jumbo v2, "miui.intent.action.midrop_on"

    goto :goto_16

    :cond_5a
    const-string/jumbo v2, "ON"

    goto :goto_47
.end method

.method private togglePaperMode()V
    .registers 5

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_enabled"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_10
    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private togglePowerMode()V
    .registers 6

    const-string/jumbo v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    :goto_10
    const-string/jumbo v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    sget v4, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_34
    const-string/jumbo v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_10
.end method

.method private toggleQuietMode()V
    .registers 9

    const/4 v2, 0x1

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_2d

    iget v3, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-eq v3, v2, :cond_27

    const/4 v0, 0x1

    :goto_a
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    :goto_e
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz v0, :cond_2b

    const/4 v1, 0x1

    :goto_15
    const-string/jumbo v2, "silence_DND"

    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_a

    :cond_29
    const/4 v2, 0x0

    goto :goto_e

    :cond_2b
    const/4 v1, 0x0

    goto :goto_15

    :cond_2d
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    return-void
.end method

.method private toggleRinger()V
    .registers 9

    const/4 v2, 0x4

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_2d

    iget v3, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-eq v3, v2, :cond_27

    const/4 v0, 0x1

    :goto_a
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    :goto_e
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    :goto_15
    const-string/jumbo v2, "silence_DND"

    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_a

    :cond_29
    const/4 v2, 0x0

    goto :goto_e

    :cond_2b
    const/4 v1, 0x0

    goto :goto_15

    :cond_2d
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    return-void
.end method

.method private toggleScreenButtonState()V
    .registers 8

    const v1, 0x110900bd

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_buttons_has_been_disabled"

    sget v6, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_60

    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_buttons_has_been_disabled"

    sget v6, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_50
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "screen_buttons_state"

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_6c

    move v1, v2

    :goto_5a
    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_60
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v4, :cond_68

    :goto_64
    invoke-direct {p0, v1, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_50

    :cond_68
    const v1, 0x110900bc

    goto :goto_64

    :cond_6c
    move v1, v3

    goto :goto_5a
.end method

.method private toggleScreenshot()V
    .registers 4

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private toggleSync()V
    .registers 3

    const/4 v1, 0x5

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private toggleSyncIntenal()V
    .registers 8

    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string/jumbo v3, "setMasterSyncAutomaticallyAsUser"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v2, "ToggleManager"

    const-string/jumbo v3, "setMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_33
.end method

.method private toggleTorch()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private toggleVibrate()V
    .registers 2

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    return-void
.end method

.method private updateAccelerometerToggle()V
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "accelerometer_rotation"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_24

    const v0, 0x110200c1

    :goto_20
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_24
    const v0, 0x110200c2

    goto :goto_20
.end method

.method private updateBatterySaverToggle()V
    .registers 6

    const/16 v4, 0x1e

    const/4 v0, 0x0

    const-string/jumbo v1, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatterySaverToggle() old mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "POWER_SAVE_MODE_OPEN"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    const-string/jumbo v0, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatterySaverToggle() new mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBatterySaveMode:Z

    invoke-static {v4, v0}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void
.end method

.method private updateBluetoothToggle()V
    .registers 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1b

    const/16 v2, 0xb

    if-ne v1, v2, :cond_51

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_22

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    :cond_22
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    invoke-virtual {p0, v3, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    const/16 v2, 0xc

    if-eq v1, v2, :cond_34

    const/16 v2, 0xa

    if-ne v1, v2, :cond_50

    :cond_34
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_53

    const v2, 0x110200a0

    :goto_3b
    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    if-eqz v2, :cond_50

    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mBluetoothDelay:Z

    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_50
    return-void

    :cond_51
    const/4 v0, 0x0

    goto :goto_1c

    :cond_53
    const v2, 0x1102009f

    goto :goto_3b
.end method

.method private updateBrightnessToggle()V
    .registers 4

    const/16 v2, 0x16

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_12

    const v0, 0x110200a1

    :goto_9
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_12
    const v0, 0x110200a2

    goto :goto_9
.end method

.method private updateDataToggle()V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/app/ToggleManager$21;

    invoke-direct {v1, p0}, Lmiui/app/ToggleManager$21;-><init>(Lmiui/app/ToggleManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateFlightModeToggle()V
    .registers 5

    const/16 v3, 0x9

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_24

    const v0, 0x110200ac

    :goto_1d
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->postUpdateDataToggleAsync()V

    return-void

    :cond_24
    const v0, 0x110200ab

    goto :goto_1d
.end method

.method private updateGpsToggle()V
    .registers 5

    const/4 v3, 0x7

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "gps"

    sget v2, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_1e

    const v0, 0x110200ae

    :goto_1a
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_1e
    const v0, 0x110200ad    # 1.02554E-28f

    goto :goto_1a
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->updateImageView(ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .registers 5

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method private updateMiDropToggle()V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_midrop_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12

    :cond_11
    move v1, v2

    :cond_12
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    const-string/jumbo v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: isMiDropDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isWifiAPDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mMiDropChanging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    return-void
.end method

.method private updatePaperModeToggle()V
    .registers 6

    const/16 v4, 0x1a

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_paper_mode_enabled"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_23

    const v0, 0x110200bc

    :goto_1f
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_23
    const v0, 0x110200bb

    goto :goto_1f
.end method

.method private updatePowerModeToggle()V
    .registers 6

    const/16 v4, 0x17

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "power_mode"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    :cond_1c
    const-string/jumbo v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_31

    const v1, 0x110200be

    :goto_2d
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_31
    const v1, 0x110200bd

    goto :goto_2d
.end method

.method private updateQuietModeToggle()V
    .registers 4

    const/16 v2, 0x19

    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_27

    iget v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    if-ne v1, v0, :cond_25

    :goto_13
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_2e

    const v0, 0x110200c0

    :goto_21
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_13

    :cond_27
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_13

    :cond_2e
    const v0, 0x110200bf

    goto :goto_21
.end method

.method private updateScreenButtonState()V
    .registers 6

    const/16 v4, 0x14

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_buttons_state"

    sget v3, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_23

    const v0, 0x110200c3

    :goto_1f
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_23
    const v0, 0x110200c4

    goto :goto_1f
.end method

.method private updateSyncToggle()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateSyncToggle(Z)V
    .registers 4

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz p1, :cond_e

    const v0, 0x110200c8

    :goto_a
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_e
    const v0, 0x110200c7

    goto :goto_a
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private updateTorchToggle()V
    .registers 6

    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_25

    :goto_13
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_27

    const v0, 0x110200ca

    :goto_21
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_25
    move v0, v1

    goto :goto_13

    :cond_27
    const v0, 0x110200c9

    goto :goto_21
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_45

    :cond_1e
    :goto_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    :cond_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    return-void

    :cond_46
    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_45
.end method

.method private static validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_41

    :cond_24
    :goto_24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_24

    :cond_3a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    return-void
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInList(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;I)V

    :goto_5
    return-void

    :cond_6
    invoke-static {p0, p1, p3}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPositionInPage(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private verifyBluetoothState()V
    .registers 5

    const/4 v3, 0x2

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v2, 0xb

    if-ne v1, v2, :cond_30

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eq v2, v0, :cond_2f

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_32

    const v2, 0x110200a0

    :goto_2c
    invoke-virtual {p0, v3, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_1a

    :cond_32
    const v2, 0x1102009f

    goto :goto_2c
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .registers 6

    const/4 v2, 0x3

    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v3, "  - ToggleManager ------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  - wifi ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  mWifiEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mWifiConnected="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mWifiChanging="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mWifiSsid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  - data ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "  mMobileDataEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mMobilePolicyEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mIsSimMissing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  mFlightMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, "  - toggles ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_71
    const/16 v3, 0x20

    if-ge v0, v3, :cond_8e

    const-string/jumbo v3, "  Toggle:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "  Status:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_8e
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c0

    const-string/jumbo v3, "  - listeners ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_a4
    if-ltz v0, :cond_c0

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    const-string/jumbo v3, "  listener:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a4

    :cond_c0
    return-void
.end method

.method public getCurBrightness()I
    .registers 7

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v3, :cond_5c

    sget-boolean v3, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_5c

    const-string/jumbo v3, "pinecone"

    sget-object v4, Lmiui/app/ToggleManager;->AUTO_BRIGHTNESS_OPTIMIZE_STRATEGY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    const-string/jumbo v3, "getScreenBrightness"

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    :goto_3c
    if-nez v2, :cond_4d

    :goto_3e
    sget v3, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int v3, v0, v3

    return v3

    :cond_43
    const-string/jumbo v3, "ToggleManager"

    const-string/jumbo v4, "pm is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_4d
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3e

    :cond_58
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    float-to-int v3, v3

    return v3

    :cond_5c
    iget v3, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v3, v4

    return v3
.end method

.method public isBrightnessAutoMode()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method isDisplayMiDropOn()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "key_midrop_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v1

    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    move v1, v2

    goto :goto_1c
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBatterySaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_81

    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    :cond_81
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public performToggle(I)Z
    .registers 6

    const-string/jumbo v2, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performToggle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_b0

    :cond_39
    :goto_39
    :pswitch_39
    return v0

    :cond_3a
    const-string/jumbo v1, ""

    goto :goto_2a

    :pswitch_3e
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    goto :goto_39

    :pswitch_42
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_39

    :pswitch_46
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    goto :goto_39

    :pswitch_4b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_39

    :pswitch_4f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_39

    :pswitch_53
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_39

    :pswitch_66
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto :goto_39

    :pswitch_6a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto :goto_39

    :pswitch_6e
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto :goto_39

    :pswitch_72
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    const/4 v0, 0x1

    goto :goto_39

    :pswitch_77
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto :goto_39

    :pswitch_7b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto :goto_39

    :pswitch_7f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto :goto_39

    :pswitch_83
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    goto :goto_39

    :pswitch_87
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto :goto_39

    :pswitch_8b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBatterySaverToggle()V

    goto :goto_39

    :pswitch_8f
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v1, :cond_39

    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto :goto_39

    :pswitch_99
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto :goto_39

    :pswitch_9d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto :goto_39

    :pswitch_a1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    goto :goto_39

    :pswitch_a5
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleCast()V

    const/4 v0, 0x1

    goto :goto_39

    :pswitch_aa
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleEdit()V

    const/4 v0, 0x1

    goto :goto_39

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_42
        :pswitch_6a
        :pswitch_39
        :pswitch_66
        :pswitch_7f
        :pswitch_4f
        :pswitch_77
        :pswitch_4b
        :pswitch_53
        :pswitch_7b
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_83
        :pswitch_39
        :pswitch_39
        :pswitch_72
        :pswitch_39
        :pswitch_6e
        :pswitch_39
        :pswitch_3e
        :pswitch_87
        :pswitch_8f
        :pswitch_99
        :pswitch_9d
        :pswitch_a1
        :pswitch_a5
        :pswitch_aa
        :pswitch_8b
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 5

    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_22
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public startLongClickAction(I)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x12

    if-ne v5, p1, :cond_b

    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    return v5

    :cond_b
    if-ne v8, p1, :cond_1a

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    return v6

    :cond_1a
    sget-object v5, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v5, p1

    if-nez v4, :cond_21

    return v6

    :cond_21
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    return v6

    :cond_2e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_35

    return v6

    :cond_35
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v8, p1, :cond_4b

    const-string/jumbo v5, ":miui:starting_window_label"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4b
    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_50
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_58

    :goto_57
    return v8

    :catch_58
    move-exception v2

    const-string/jumbo v5, "ToggleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start activity exception, component = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method toggleCast()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method toggleWifi()V
    .registers 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v3, 0xf

    invoke-static {v3}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v3

    if-nez v3, :cond_48

    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_49

    const/4 v1, 0x1

    :goto_14
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-eqz v1, :cond_37

    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lmiui/app/ConnectivityManagerReflector;->getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_37

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_37

    :cond_2e
    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v3, :cond_37

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3, v5}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_37
    iget-object v3, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lmiui/app/ToggleManager;->mBgHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4b

    move v3, v4

    :goto_41
    invoke-virtual {v6, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_48
    return-void

    :cond_49
    const/4 v1, 0x0

    goto :goto_14

    :cond_4b
    move v3, v5

    goto :goto_41
.end method

.method public updateAllToggles(I)V
    .registers 4

    sput p1, Lmiui/app/ToggleManager;->sCurrentUserId:I

    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBatterySaverToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method updateMiDropToggle(Z)V
    .registers 8

    const/16 v5, 0x1b

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    :cond_10
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v0

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v2}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v1

    :goto_20
    const-string/jumbo v2, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MiDrop: updateMiDropToggle(boolean) isMiDropOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isWifiApDisabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mMiDropChanging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mWifiChanging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_78

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-nez v2, :cond_78

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    :goto_67
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_7a

    const v2, 0x110200b2

    :goto_72
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_76
    const/4 v1, 0x0

    goto :goto_20

    :cond_78
    const/4 v2, 0x1

    goto :goto_67

    :cond_7a
    const v2, 0x110200b1

    goto :goto_72
.end method

.method public updateRingerToggle()V
    .registers 5

    const/4 v3, 0x5

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v1, :cond_21

    iget v1, p0, Lmiui/app/ToggleManager;->mZenMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_28

    const v1, 0x110200b4

    :goto_1b
    invoke-virtual {p0, v3, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_13

    :cond_21
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_13

    :cond_28
    const v1, 0x110200b3

    goto :goto_1b
.end method

.method protected updateToggleDisabled(IZ)V
    .registers 4

    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method protected updateToggleImage(II)V
    .registers 9

    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4c

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_14
    if-ltz v0, :cond_4c

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    if-nez v2, :cond_48

    const-string/jumbo v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listener is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_48
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_45

    :cond_4c
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .registers 4

    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .registers 5

    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateVibrateToggle()V
    .registers 4

    const/4 v2, 0x6

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    if-eqz v0, :cond_13

    const v1, 0x110200cc

    :goto_f
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_13
    const v1, 0x110200cb

    goto :goto_f
.end method

.method updateWifiToggle(Landroid/content/Intent;)V
    .registers 14

    const/4 v11, 0x2

    const/16 v10, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_d
    if-eqz p1, :cond_32

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    const-string/jumbo v4, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7f

    if-ne v3, v11, :cond_81

    move v4, v5

    :goto_26
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eq v3, v11, :cond_83

    if-nez v3, :cond_85

    move v4, v5

    :goto_2d
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v6}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    :cond_32
    :goto_32
    const-string/jumbo v4, "ToggleManager"

    const-string/jumbo v7, "updateWifiToggle wifiState=%d mWifiConnected=%b action=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v5

    aput-object v0, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v4, :cond_d1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1109000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_63
    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v4, :cond_d4

    const v4, 0x110200d0

    :goto_77
    invoke-virtual {p0, v10, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    return-void

    :cond_7b
    const-string/jumbo v0, ""

    goto :goto_d

    :cond_7f
    move v4, v5

    goto :goto_26

    :cond_81
    move v4, v6

    goto :goto_26

    :cond_83
    move v4, v5

    goto :goto_2d

    :cond_85
    move v4, v6

    goto :goto_2d

    :cond_87
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    :goto_9f
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    if-eqz v4, :cond_cd

    const-string/jumbo v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_b6

    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :cond_b6
    if-eqz v1, :cond_ca

    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    :goto_c2
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    goto/16 :goto_32

    :cond_c8
    move v4, v6

    goto :goto_9f

    :cond_ca
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_c2

    :cond_cd
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_32

    :cond_d1
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_63

    :cond_d4
    const v4, 0x110200cf

    goto :goto_77
.end method

.method useWifiApForMiDrop()Z
    .registers 6

    const/4 v1, 0x0

    sget-boolean v2, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    if-nez v2, :cond_18

    :try_start_5
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi.midrop"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    :goto_16
    sput-boolean v2, Lmiui/app/ToggleManager;->sHasMiDrop:Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_18} :catch_21

    :cond_18
    :goto_18
    sget-object v2, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v2, :cond_1e

    sget-boolean v1, Lmiui/app/ToggleManager;->sHasMiDrop:Z

    :cond_1e
    return v1

    :cond_1f
    move v2, v1

    goto :goto_16

    :catch_21
    move-exception v0

    goto :goto_18
.end method

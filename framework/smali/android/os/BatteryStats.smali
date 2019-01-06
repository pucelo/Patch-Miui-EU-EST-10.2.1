.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$Uid;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "27"

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final UID_TIMES_TYPE_ALL:Ljava/lang/String;

.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static synthetic -android_os_BatteryStats-mthref-0(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_os_BatteryStats-mthref-1(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_a5

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_a2

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_a0

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_9e

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_9c

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_9a

    :goto_44
    :try_start_44
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_98

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_96

    :goto_57
    :try_start_57
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_94

    :goto_61
    :try_start_61
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_92

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_90

    :goto_75
    :try_start_75
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_8e

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_8c

    :goto_89
    sput-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_8c
    move-exception v1

    goto :goto_89

    :catch_8e
    move-exception v1

    goto :goto_7f

    :catch_90
    move-exception v1

    goto :goto_75

    :catch_92
    move-exception v1

    goto :goto_6b

    :catch_94
    move-exception v1

    goto :goto_61

    :catch_96
    move-exception v1

    goto :goto_57

    :catch_98
    move-exception v1

    goto :goto_4e

    :catch_9a
    move-exception v1

    goto :goto_44

    :catch_9c
    move-exception v1

    goto :goto_3b

    :catch_9e
    move-exception v1

    goto :goto_32

    :catch_a0
    move-exception v1

    goto :goto_29

    :catch_a2
    move-exception v1

    goto/16 :goto_20

    :catch_a5
    move-exception v1

    goto/16 :goto_17
.end method

.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "l"

    aput-object v1, v0, v8

    const-string/jumbo v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "dark"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dim"

    aput-object v1, v0, v10

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v11

    const-string/jumbo v1, "light"

    aput-object v1, v0, v9

    const-string/jumbo v1, "bright"

    aput-object v1, v0, v12

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    aput-object v1, v0, v10

    const-string/jumbo v1, "2"

    aput-object v1, v0, v11

    const-string/jumbo v1, "3"

    aput-object v1, v0, v9

    const-string/jumbo v1, "4"

    aput-object v1, v0, v12

    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v8

    const-string/jumbo v1, "gprs"

    aput-object v1, v0, v10

    const-string/jumbo v1, "edge"

    aput-object v1, v0, v11

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v9

    const-string/jumbo v1, "cdma"

    aput-object v1, v0, v12

    const-string/jumbo v1, "evdo_0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_A"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1xrtt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsdpa"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsupa"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspa"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "iden"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_b"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lte"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ehrpd"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "other"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "invalid"

    aput-object v1, v0, v8

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v10

    const-string/jumbo v1, "disabled"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inactive"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v12

    const-string/jumbo v1, "authenticating"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "associating"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "associated"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way-handshake"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "group-handshake"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "completed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dormant"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "inv"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dsc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "dis"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inact"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scan"

    aput-object v1, v0, v12

    const-string/jumbo v1, "auth"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ascing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "asced"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "group"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "compl"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dorm"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "running"

    const-string/jumbo v2, "r"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wake_lock"

    const-string/jumbo v2, "w"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "sensor"

    const-string/jumbo v2, "s"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "g"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_full_lock"

    const-string/jumbo v2, "Wl"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_scan"

    const-string/jumbo v2, "Ws"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_multicast"

    const-string/jumbo v2, "Wm"

    const/high16 v3, 0x10000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_radio"

    const-string/jumbo v2, "Wr"

    const/high16 v3, 0x4000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "mobile_radio"

    const-string/jumbo v2, "Pr"

    const/high16 v3, 0x2000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_scanning"

    const-string/jumbo v2, "Psc"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "audio"

    const-string/jumbo v2, "a"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "S"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "plugged"

    const-string/jumbo v2, "BP"

    const/high16 v3, 0x80000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen_doze"

    const-string/jumbo v2, "Sd"

    const/high16 v3, 0x40000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "data_conn"

    const-string/jumbo v4, "Pcn"

    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v1, 0x3e00

    const/16 v2, 0x9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "phone_state"

    const-string/jumbo v4, "Pst"

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v5, v8

    const-string/jumbo v1, "out"

    aput-object v1, v5, v10

    const-string/jumbo v1, "emergency"

    aput-object v1, v5, v11

    const-string/jumbo v1, "off"

    aput-object v1, v5, v9

    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v6, v8

    const-string/jumbo v1, "out"

    aput-object v1, v6, v10

    const-string/jumbo v1, "em"

    aput-object v1, v6, v11

    const-string/jumbo v1, "off"

    aput-object v1, v6, v9

    const/16 v1, 0x1c0

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "phone_signal_strength"

    const-string/jumbo v4, "Pss"

    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/16 v1, 0x38

    move v2, v9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "brightness"

    const-string/jumbo v4, "Sb"

    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v0, 0xd

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "power_save"

    const-string/jumbo v2, "ps"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "v"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_running"

    const-string/jumbo v2, "Ww"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "W"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "flashlight"

    const-string/jumbo v2, "fl"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "device_idle"

    const-string/jumbo v4, "di"

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v5, v8

    const-string/jumbo v1, "light"

    aput-object v1, v5, v10

    const-string/jumbo v1, "full"

    aput-object v1, v5, v11

    const-string/jumbo v1, "???"

    aput-object v1, v5, v9

    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v6, v8

    const-string/jumbo v1, "light"

    aput-object v1, v6, v10

    const-string/jumbo v1, "full"

    aput-object v1, v6, v11

    const-string/jumbo v1, "???"

    aput-object v1, v6, v9

    const/high16 v1, 0x6000000

    const/16 v2, 0x19

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "charging"

    const-string/jumbo v2, "ch"

    const/high16 v3, 0x1000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_in_call"

    const-string/jumbo v2, "Pcl"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "bluetooth"

    const-string/jumbo v2, "b"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "wifi_signal_strength"

    const-string/jumbo v4, "Wss"

    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v5, v8

    const-string/jumbo v1, "1"

    aput-object v1, v5, v10

    const-string/jumbo v1, "2"

    aput-object v1, v5, v11

    const-string/jumbo v1, "3"

    aput-object v1, v5, v9

    const-string/jumbo v1, "4"

    aput-object v1, v5, v12

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    const/16 v1, 0x70

    move v2, v12

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "wifi_suppl"

    const-string/jumbo v4, "Wsp"

    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v1, 0xf

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "camera"

    const-string/jumbo v2, "ca"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "ble_scan"

    const-string/jumbo v2, "bles"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "null"

    aput-object v1, v0, v8

    const-string/jumbo v1, "proc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "fg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "top"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sync"

    aput-object v1, v0, v12

    const-string/jumbo v1, "wake_lock_in"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "job"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userfg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "conn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginst"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgunin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "stats"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginactive"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgactive"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "tmpwhitelist"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "screenwake"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "wakeupap"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "longwake"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "est_capacity"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Enl"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Epr"

    aput-object v1, v0, v10

    const-string/jumbo v1, "Efg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "Etp"

    aput-object v1, v0, v9

    const-string/jumbo v1, "Esy"

    aput-object v1, v0, v12

    const-string/jumbo v1, "Ewl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ejb"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eur"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ecn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eac"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epu"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eal"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Est"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eai"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eaa"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Etw"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Esw"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ewa"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Elw"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eec"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    sget-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$0:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    sget-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$1:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    sput-object v0, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v0, 0x16

    new-array v0, v0, [Landroid/os/BatteryStats$IntToString;

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v8

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v10

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v11

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v9

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v12

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v10

    const-string/jumbo v1, "no_net"

    aput-object v1, v0, v11

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sta"

    aput-object v1, v0, v12

    const-string/jumbo v1, "p2p"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sta_p2p"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "soft_ap"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_664

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_67c

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "screen off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "screen off power save"

    aput-object v1, v0, v10

    const-string/jumbo v1, "screen off device idle"

    aput-object v1, v0, v11

    const-string/jumbo v1, "screen on"

    aput-object v1, v0, v9

    const-string/jumbo v1, "screen on power save"

    aput-object v1, v0, v12

    const-string/jumbo v1, "screen doze"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze power save"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend power save"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "screen doze-suspend device idle"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    nop

    :array_664
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_67c
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v0, "A"

    iput-object v0, p0, Landroid/os/BatteryStats;->UID_TIMES_TYPE_ALL:Ljava/lang/String;

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 13

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    return-wide v2

    :cond_e
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    if-nez p0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_20

    :cond_1f
    return v10

    :cond_20
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_32
    if-ge v1, v4, :cond_42

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3f

    return v10

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_42
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 12

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_47
    if-ge v1, v3, :cond_5b

    aget-object v0, v2, v1

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_5b
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 21

    if-nez p4, :cond_3

    return-void

    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v12

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_45

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " total time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p5

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_45
    const/4 v2, 0x0

    :goto_46
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v2

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v2

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_a0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p5

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_a3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Package changes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_39

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_36

    :cond_48
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 23

    if-nez p3, :cond_4

    const/4 v11, 0x0

    return v11

    :cond_4
    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_c

    const/4 v11, 0x0

    return v11

    :cond_c
    if-nez p4, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v2, :cond_1b0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v8, v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v11

    int-to-long v12, v11

    if-eqz p4, :cond_d5

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_b8

    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1b2

    const-string/jumbo v11, "?"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    :goto_5d
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_c3

    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_bf

    const-string/jumbo v11, "p+"

    :goto_72
    const/4 v14, 0x3

    aput-object v11, v10, v14

    :goto_75
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_ce

    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_ca

    const-string/jumbo v11, "i+"

    :goto_8a
    const/4 v14, 0x4

    aput-object v11, v10, v14

    :goto_8d
    const-string/jumbo v11, "i"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v11, v1, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_98
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    :pswitch_9c
    const-string/jumbo v11, "s-"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_5d

    :pswitch_a3
    const-string/jumbo v11, "s+"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_5d

    :pswitch_aa
    const-string/jumbo v11, "sd"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_5d

    :pswitch_b1
    const-string/jumbo v11, "sds"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_5d

    :cond_b8
    const-string/jumbo v11, ""

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_5d

    :cond_bf
    const-string/jumbo v11, "p-"

    goto :goto_72

    :cond_c3
    const-string/jumbo v11, ""

    const/4 v14, 0x3

    aput-object v11, v10, v14

    goto :goto_75

    :cond_ca
    const-string/jumbo v11, "i-"

    goto :goto_8a

    :cond_ce
    const-string/jumbo v11, ""

    const/4 v14, 0x4

    aput-object v11, v10, v14

    goto :goto_8d

    :cond_d5
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v11, " to "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    const/4 v3, 0x0

    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_123

    const-string/jumbo v11, " ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1be

    const-string/jumbo v11, "screen-?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_122
    const/4 v3, 0x1

    :cond_123
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_148

    if-eqz v3, :cond_1a0

    const-string/jumbo v11, ", "

    :goto_131
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_1a4

    const-string/jumbo v11, "power-save-on"

    :goto_142
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_148
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_16d

    if-eqz v3, :cond_1a8

    const-string/jumbo v11, ", "

    :goto_156
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_1ac

    const-string/jumbo v11, "device-idle-on"

    :goto_167
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_16d
    if-eqz v3, :cond_177

    const-string/jumbo v11, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_177
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_98

    :pswitch_17c
    const-string/jumbo v11, "screen-off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_122

    :pswitch_185
    const-string/jumbo v11, "screen-on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_122

    :pswitch_18e
    const-string/jumbo v11, "screen-doze"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_122

    :pswitch_197
    const-string/jumbo v11, "screen-doze-suspend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_122

    :cond_1a0
    const-string/jumbo v11, " ("

    goto :goto_131

    :cond_1a4
    const-string/jumbo v11, "power-save-off"

    goto :goto_142

    :cond_1a8
    const-string/jumbo v11, " ("

    goto :goto_156

    :cond_1ac
    const-string/jumbo v11, "device-idle-off"

    goto :goto_167

    :cond_1b0
    const/4 v11, 0x1

    return v11

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_a3
        :pswitch_aa
        :pswitch_b1
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_185
        :pswitch_18e
        :pswitch_197
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .registers 31

    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v16, -0x1

    const-wide/16 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :cond_12
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_123

    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_26

    move-wide/from16 v6, v16

    :cond_26
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v8, p3

    if-ltz v4, :cond_12

    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_113

    xor-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_113

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v4, v8, :cond_40

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-ne v4, v8, :cond_84

    :cond_40
    const/16 v19, 0x1

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_ad

    const/4 v9, 0x1

    :goto_47
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_51
    :goto_51
    const/4 v4, 0x0

    if-eqz v4, :cond_113

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v4, :cond_67

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_b1

    const/4 v9, 0x1

    :goto_5d
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_67
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v18, v0

    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v13, 0x0

    :goto_75
    const/16 v4, 0x16

    if-ge v13, v4, :cond_10b

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_b3

    :cond_81
    add-int/lit8 v13, v13, 0x1

    goto :goto_75

    :cond_84
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v4, v8, :cond_40

    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v8, 0x8

    if-eq v4, v8, :cond_40

    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-eqz v4, :cond_51

    const/16 v19, 0x1

    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_af

    const/4 v9, 0x1

    :goto_a3
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_51

    :cond_ad
    const/4 v9, 0x0

    goto :goto_47

    :cond_af
    const/4 v9, 0x0

    goto :goto_a3

    :cond_b1
    const/4 v9, 0x0

    goto :goto_5d

    :cond_b3
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_bb
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    :goto_ce
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_bb

    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_109

    const/4 v9, 0x1

    :goto_f9
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v14, v14, 0x1

    goto :goto_ce

    :cond_109
    const/4 v9, 0x0

    goto :goto_f9

    :cond_10b
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/16 v20, 0x0

    :cond_113
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_121

    const/4 v9, 0x1

    :goto_118
    move-object/from16 v4, p1

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    goto/16 :goto_12

    :cond_121
    const/4 v9, 0x0

    goto :goto_118

    :cond_123
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_13f

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_140

    const-string/jumbo v4, "NEXT: "

    :goto_131
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long v8, v8, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    :cond_13f
    return-void

    :cond_140
    const-string/jumbo v4, "  NEXT: "

    goto :goto_131
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    array-length v2, p4

    :goto_5
    if-ge v1, v2, :cond_14

    aget-object v0, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v1, 0x2c

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 19

    if-eqz p4, :cond_2d

    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 8

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 8

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 16

    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_14

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_30

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_39

    :cond_30
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_52

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5b

    :cond_52
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_6b

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_76

    :cond_6b
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_76
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 13

    xor-int v2, p1, p2

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    array-length v5, p4

    if-ge v3, v5, :cond_9f

    aget-object v0, p4, v3

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_56

    if-eqz p5, :cond_59

    const-string/jumbo v5, " "

    :goto_16
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v5, :cond_6a

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_5d

    const-string/jumbo v5, "+"

    :goto_25
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_61

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_2c
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_56

    if-eqz p3, :cond_56

    const/4 v1, 0x1

    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_64

    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_59
    const-string/jumbo v5, ","

    goto :goto_16

    :cond_5d
    const-string/jumbo v5, "-"

    goto :goto_25

    :cond_61
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_2c

    :cond_64
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_56

    :cond_6a
    if-eqz p5, :cond_93

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_6e
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v4, v5, v6

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9b

    if-ltz v4, :cond_9b

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9b

    if-eqz p5, :cond_96

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_8f
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_56

    :cond_93
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_6e

    :cond_96
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_8f

    :cond_9b
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_56

    :cond_9f
    if-nez v1, :cond_c3

    if-eqz p3, :cond_c3

    if-eqz p5, :cond_c4

    const-string/jumbo v5, " wake_lock="

    :goto_a8
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_c8

    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c3
    :goto_c3
    return-void

    :cond_c4
    const-string/jumbo v5, ",w="

    goto :goto_a8

    :cond_c8
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_c3
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 37

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v18, v24, v26

    const-wide/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_47
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5a

    aget-object v13, v25, v24

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v28

    add-long v20, v20, v28

    add-int/lit8 v24, v24, 0x1

    goto :goto_47

    :cond_5a
    add-long v24, v6, v14

    add-long v24, v24, v20

    sub-long v16, v18, v24

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " Sleep time:  "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " Idle time:   "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " Rx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " Tx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Cellular"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_264

    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v24, "   less than 0dBm: "

    const/16 v25, 0x0

    aput-object v24, v12, v25

    const-string/jumbo v24, "   0dBm to 8dBm: "

    const/16 v25, 0x1

    aput-object v24, v12, v25

    const-string/jumbo v24, "   8dBm to 15dBm: "

    const/16 v25, 0x2

    aput-object v24, v12, v25

    const-string/jumbo v24, "   15dBm to 20dBm: "

    const/16 v25, 0x3

    aput-object v24, v12, v25

    const-string/jumbo v24, "   above 20dBm: "

    const/16 v25, 0x4

    aput-object v24, v12, v25

    :goto_1cf
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    array-length v0, v12

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v9, v0, :cond_28f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1f1
    if-ge v8, v9, :cond_2d6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    aget-object v24, v24, v8

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v24, v12, v8

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f1

    :cond_264
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v24, "[0]"

    const/16 v25, 0x0

    aput-object v24, v12, v25

    const-string/jumbo v24, "[1]"

    const/16 v25, 0x1

    aput-object v24, v12, v25

    const-string/jumbo v24, "[2]"

    const/16 v25, 0x2

    aput-object v24, v12, v25

    const-string/jumbo v24, "[3]"

    const/16 v25, 0x3

    aput-object v24, v12, v25

    const-string/jumbo v24, "[4]"

    const/16 v25, 0x4

    aput-object v24, v12, v25

    goto/16 :goto_1cf

    :cond_28f
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2d6
    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-lez v24, :cond_32a

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, " Battery drain: "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    long-to-double v0, v10

    move-wide/from16 v26, v0

    const-wide v28, 0x414b774000000000L    # 3600000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v24, "mAh"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32a
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_9
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 10

    const/high16 v4, 0x46200000    # 10240.0f

    const/high16 v3, 0x44800000    # 1024.0f

    long-to-float v0, p2

    const-string/jumbo v1, ""

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_10

    const-string/jumbo v1, "KB"

    div-float/2addr v0, v3

    :cond_10
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_18

    const-string/jumbo v1, "MB"

    div-float/2addr v0, v3

    :cond_18
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_20

    const-string/jumbo v1, "GB"

    div-float/2addr v0, v3

    :cond_20
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_28

    const-string/jumbo v1, "TB"

    div-float/2addr v0, v3

    :cond_28
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_30

    const-string/jumbo v1, "PB"

    div-float/2addr v0, v3

    :cond_30
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 23

    if-eqz p2, :cond_b3

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    const-wide/16 v12, 0x1f4

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_b3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v3, "realtime ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " times)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_76

    const-string/jumbo v3, " max="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_a1

    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-ltz v3, :cond_aa

    const-string/jumbo v3, " (running for "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a1
    :goto_a1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_aa
    const-string/jumbo v3, " (running)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    :cond_b3
    const/4 v3, 0x0

    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 23

    if-eqz p1, :cond_ba

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_ba

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p4, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " times)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-ltz v5, :cond_67

    const-string/jumbo v5, " max="

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_67
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    cmp-long v5, v10, v12

    if-lez v5, :cond_82

    const-string/jumbo v5, " actual="

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_82
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_ad

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-ltz v5, :cond_b1

    const-string/jumbo v5, " (running for "

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ad
    :goto_ad
    const-string/jumbo v5, ", "

    return-object v5

    :cond_b1
    const-string/jumbo v5, " (running)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ad

    :cond_ba
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 25

    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_3b

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    :cond_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x1f4

    add-long/2addr v14, v12

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_a1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_9d

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_9d
    const-string/jumbo v5, ","

    return-object v5

    :cond_a1
    const-string/jumbo v5, ""

    goto :goto_6d
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .registers 6

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .registers 6

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .registers 11

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .registers 272

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    mul-long v148, v12, v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    mul-long v10, v12, v18

    const-wide/16 v12, 0x1f4

    add-long/2addr v12, v10

    const-wide/16 v18, 0x3e8

    div-long v146, v12, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v32

    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v226

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v220

    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v224

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v222

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v186

    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v194

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v160

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v152

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v88

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v140

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v62

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v60

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v66

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v64

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v54

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v138

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v68

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v72

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v70

    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v198

    invoke-virtual/range {v198 .. v198}, Landroid/util/SparseArray;->size()I

    move-result v25

    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move/from16 v0, p3

    aget-object v6, v4, v0

    const-string/jumbo v7, "bt"

    const/16 v4, 0xc

    new-array v8, v4, [Ljava/lang/Object;

    move/from16 v0, p3

    if-nez v0, :cond_1ce

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_eb
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v220, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v226, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v186, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v194, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v222, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x6

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v224, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x9

    aput-object v4, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0xa

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v152, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v12, 0xb

    aput-object v4, v8, v12

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v78, 0x0

    const-wide/16 v136, 0x0

    const/16 v95, 0x0

    :goto_177
    move/from16 v0, v95

    move/from16 v1, v25

    if-ge v0, v1, :cond_1d6

    move-object/from16 v0, v198

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v197

    check-cast v197, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v216

    invoke-virtual/range {v216 .. v216}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v96, v4, -0x1

    :goto_191
    if-ltz v96, :cond_1d3

    move-object/from16 v0, v216

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v257, v0

    move-object/from16 v0, v257

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v257, v0

    const/4 v4, 0x1

    move-object/from16 v0, v257

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v75

    if-eqz v75, :cond_1b8

    move-object/from16 v0, v75

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v78, v78, v12

    :cond_1b8
    const/4 v4, 0x0

    move-object/from16 v0, v257

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v135

    if-eqz v135, :cond_1cb

    move-object/from16 v0, v135

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v136, v136, v12

    :cond_1cb
    add-int/lit8 v96, v96, -0x1

    goto :goto_191

    :cond_1ce
    const-string/jumbo v4, "N/A"

    goto/16 :goto_eb

    :cond_1d3
    add-int/lit8 v95, v95, 0x1

    goto :goto_177

    :cond_1d6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v122

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v126

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v248

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v260, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v124

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v128

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v250

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v262, v0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v50

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v52

    const-string/jumbo v4, "gn"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v122 .. v123}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v248 .. v249}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v260 .. v261}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v124 .. v125}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-static/range {v250 .. v251}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v262 .. v263}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v7, "gmcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v236

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v246

    const-string/jumbo v4, "gwfl"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v12, 0x3e8

    div-long v12, v236, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v246, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v7, "gwfcd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v7, "gble"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string/jumbo v4, "m"

    const/16 v7, 0x15

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v12, 0x3e8

    div-long v12, v160, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v138, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v78, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v136, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v88, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v140, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v60, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v64, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xb

    aput-object v8, v7, v12

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xc

    aput-object v8, v7, v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xd

    aput-object v8, v7, v12

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xe

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v62, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xf

    aput-object v8, v7, v12

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x10

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v66, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x11

    aput-object v8, v7, v12

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x12

    aput-object v8, v7, v12

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x13

    aput-object v8, v7, v12

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x14

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_43c
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_458

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_43c

    :cond_458
    const-string/jumbo v4, "br"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v166, 0x5

    move/from16 v0, v166

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_46d
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_489

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_46d

    :cond_489
    const-string/jumbo v4, "sgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v4, "sst"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_4b5
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_4cd

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_4b5

    :cond_4cd
    const-string/jumbo v4, "sgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x11

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_4e0
    const/16 v4, 0x11

    move/from16 v0, v84

    if-ge v0, v4, :cond_4fd

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_4e0

    :cond_4fd
    const-string/jumbo v4, "dct"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_50a
    const/16 v4, 0x11

    move/from16 v0, v84

    if-ge v0, v4, :cond_523

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_50a

    :cond_523
    const-string/jumbo v4, "dcc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_536
    const/16 v4, 0x8

    move/from16 v0, v84

    if-ge v0, v4, :cond_553

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_536

    :cond_553
    const-string/jumbo v4, "wst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_560
    const/16 v4, 0x8

    move/from16 v0, v84

    if-ge v0, v4, :cond_579

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_560

    :cond_579
    const-string/jumbo v4, "wsc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xd

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_58c
    const/16 v4, 0xd

    move/from16 v0, v84

    if-ge v0, v4, :cond_5a9

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_58c

    :cond_5a9
    const-string/jumbo v4, "wsst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_5b6
    const/16 v4, 0xd

    move/from16 v0, v84

    if-ge v0, v4, :cond_5cf

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_5b6

    :cond_5cf
    const-string/jumbo v4, "wssc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v84, 0x0

    :goto_5e1
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_5fd

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_5e1

    :cond_5fd
    const-string/jumbo v4, "wsgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_60a
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_622

    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    add-int/lit8 v84, v84, 0x1

    goto :goto_60a

    :cond_622
    const-string/jumbo v4, "wsgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_654

    const-string/jumbo v4, "lv"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_654
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_755

    const-string/jumbo v4, "dc"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v68, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v72, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v70, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6c8
    move/from16 v0, p4

    if-gez v0, :cond_839

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v99

    invoke-interface/range {v99 .. v99}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_7bc

    invoke-interface/range {v99 .. v99}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    :goto_6de
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7bc

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    const-string/jumbo v14, ""

    const/4 v12, 0x0

    move-object/from16 v8, v16

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_721

    const/16 v4, 0x2c

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_721

    const/16 v4, 0x2c

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    :cond_721
    const-string/jumbo v4, "kwl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v103

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, "\""

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6de

    :cond_755
    const-string/jumbo v4, "dc"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v68, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v72, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v70, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6c8

    :cond_7bc
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v217

    invoke-interface/range {v217 .. v217}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_839

    invoke-interface/range {v217 .. v217}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    :goto_7ce
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_839

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v192

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    const-string/jumbo v7, "wr"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    const-wide/16 v12, 0x1f4

    add-long v12, v12, v192

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7ce

    :cond_839
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v151

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v156

    invoke-interface/range {v151 .. v151}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8ed

    invoke-interface/range {v151 .. v151}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    :goto_84f
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8ed

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v183

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v180, v12, v18

    move-object/from16 v0, v183

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v156

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/os/BatteryStats$Timer;

    if-eqz v157, :cond_8e7

    move-object/from16 v0, v157

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v158, v12, v18

    :goto_89d
    if-eqz v157, :cond_8ea

    move-object/from16 v0, v157

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v154

    :goto_8a7
    const-string/jumbo v7, "rpm"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-static/range {v180 .. v181}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_84f

    :cond_8e7
    const-wide/16 v158, 0x0

    goto :goto_89d

    :cond_8ea
    const/16 v154, 0x0

    goto :goto_8a7

    :cond_8ed
    new-instance v83, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v4, -0x1

    move-object/from16 v0, v83

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v167

    if-eqz v167, :cond_9fc

    invoke-interface/range {v167 .. v167}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9fc

    const-string/jumbo v4, "pws"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v84, 0x0

    :goto_952
    invoke-interface/range {v167 .. v167}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v84

    if-ge v0, v4, :cond_9fc

    move-object/from16 v0, v167

    move/from16 v1, v84

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_157e

    const-string/jumbo v100, "???"

    :goto_979
    const-string/jumbo v7, "pwi"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v100, v8, v4

    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v4, :cond_9fa

    const/4 v4, 0x1

    :goto_994
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v84, v84, 0x1

    goto :goto_952

    :pswitch_9b9
    const-string/jumbo v100, "idle"

    goto :goto_979

    :pswitch_9bd
    const-string/jumbo v100, "cell"

    goto :goto_979

    :pswitch_9c1
    const-string/jumbo v100, "phone"

    goto :goto_979

    :pswitch_9c5
    const-string/jumbo v100, "wifi"

    goto :goto_979

    :pswitch_9c9
    const-string/jumbo v100, "blue"

    goto :goto_979

    :pswitch_9cd
    const-string/jumbo v100, "scrn"

    goto :goto_979

    :pswitch_9d1
    const-string/jumbo v100, "flashlight"

    goto :goto_979

    :pswitch_9d5
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const-string/jumbo v100, "uid"

    goto :goto_979

    :pswitch_9e1
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const-string/jumbo v100, "user"

    goto :goto_979

    :pswitch_9ee
    const-string/jumbo v100, "unacc"

    goto :goto_979

    :pswitch_9f2
    const-string/jumbo v100, "over"

    goto :goto_979

    :pswitch_9f6
    const-string/jumbo v100, "camera"

    goto :goto_979

    :cond_9fa
    const/4 v4, 0x0

    goto :goto_994

    :cond_9fc
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v58

    if-eqz v58, :cond_a3b

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v84, 0x0

    :goto_a0a
    move-object/from16 v0, v58

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_a28

    if-nez v84, :cond_a24

    const-string/jumbo v4, ""

    :goto_a16
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v58, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v84, v84, 0x1

    goto :goto_a0a

    :cond_a24
    const-string/jumbo v4, ","

    goto :goto_a16

    :cond_a28
    const-string/jumbo v4, "gcf"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a3b
    const/16 v95, 0x0

    :goto_a3d
    move/from16 v0, v95

    move/from16 v1, v25

    if-ge v0, v1, :cond_157d

    move-object/from16 v0, v198

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move/from16 v0, p4

    if-ltz v0, :cond_a56

    move/from16 v0, p4

    if-eq v5, v0, :cond_a56

    :cond_a53
    add-int/lit8 v95, v95, 0x1

    goto :goto_a3d

    :cond_a56
    move-object/from16 v0, v198

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v197

    check-cast v197, Landroid/os/BatteryStats$Uid;

    const/4 v4, 0x0

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v110

    const/4 v4, 0x1

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v112

    const/4 v4, 0x2

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v232

    const/4 v4, 0x3

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v234

    const/4 v4, 0x0

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v118

    const/4 v4, 0x1

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v120

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v104

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v130

    const/4 v4, 0x2

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v242

    const/4 v4, 0x3

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v244

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/16 v264, v0

    const/4 v4, 0x4

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v46

    const/4 v4, 0x5

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    const/4 v4, 0x6

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v106

    const/4 v4, 0x7

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v108

    const/16 v4, 0x8

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v228

    const/16 v4, 0x9

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v230

    const/4 v4, 0x6

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v114

    const/4 v4, 0x7

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    const/16 v4, 0x8

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v238

    const/16 v4, 0x9

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v240

    const-wide/16 v12, 0x0

    cmp-long v4, v110, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v112, v12

    if-lez v4, :cond_ddd

    :cond_b35
    :goto_b35
    const-string/jumbo v4, "nt"

    const/16 v7, 0x16

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v110 .. v111}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v232 .. v233}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v234 .. v235}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v118 .. v119}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-static/range {v242 .. v243}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v244 .. v245}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xb

    aput-object v8, v7, v12

    invoke-static/range {v130 .. v131}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xc

    aput-object v8, v7, v12

    invoke-static/range {v264 .. v265}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xd

    aput-object v8, v7, v12

    invoke-static/range {v106 .. v107}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xe

    aput-object v8, v7, v12

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xf

    aput-object v8, v7, v12

    invoke-static/range {v228 .. v229}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x10

    aput-object v8, v7, v12

    invoke-static/range {v230 .. v231}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x11

    aput-object v8, v7, v12

    invoke-static/range {v114 .. v115}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x12

    aput-object v8, v7, v12

    invoke-static/range {v116 .. v117}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x13

    aput-object v8, v7, v12

    invoke-static/range {v238 .. v239}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x14

    aput-object v8, v7, v12

    invoke-static/range {v240 .. v241}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x15

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_be9
    const-string/jumbo v7, "mcd"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v80

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move-wide/16 v258, v0

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v219

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v0

    move/16 v256, v0

    move-object/from16 v0, v197

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v252, v12, v18

    move-object/from16 v0, v197

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v254, v12, v18

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v200

    const-wide/16 v12, 0x0

    cmp-long v4, v80, v12

    if-nez v4, :cond_c4f

    const-wide/16 v12, 0x0

    move-wide/from16 v0, v258

    cmp-long v4, v0, v12

    if-eqz v4, :cond_e55

    :cond_c4f
    :goto_c4f
    const-string/jumbo v4, "wfl"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v258 .. v259}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v200 .. v201}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v219 .. v219}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v256 .. v256}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v252 .. v253}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v254 .. v255}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ca6
    const-string/jumbo v7, "wfcd"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v42

    if-eqz v42, :cond_da4

    move-object/from16 v0, v42

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v190, v12, v18

    const-wide/16 v12, 0x0

    cmp-long v4, v190, v12

    if-eqz v4, :cond_da4

    move-object/from16 v0, v42

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v43

    if-eqz v43, :cond_e6f

    move-object/from16 v0, v43

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v56

    :goto_ce6
    move-object/from16 v0, v42

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    if-eqz v43, :cond_e73

    move-object/from16 v0, v43

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    :goto_cf8
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_e77

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v145

    :goto_d08
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_e7b

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v150

    :goto_d18
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v199

    if-eqz v199, :cond_e7f

    move-object/from16 v0, v199

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v208

    :goto_d26
    if-eqz v199, :cond_e83

    move-object/from16 v0, v199

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v202

    :goto_d30
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v206

    if-eqz v206, :cond_e87

    move-object/from16 v0, v206

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v210

    :goto_d3e
    if-eqz v206, :cond_e8b

    move-object/from16 v0, v206

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v204

    :goto_d48
    const-string/jumbo v4, "blem"

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v145 .. v145}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-static/range {v150 .. v150}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v208 .. v209}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v210 .. v211}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v202 .. v203}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    invoke-static/range {v204 .. v205}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_da4
    const-string/jumbo v7, "ble"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v4

    if-eqz v4, :cond_e9b

    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v82, 0x0

    const/16 v84, 0x0

    :goto_dc1
    const/4 v4, 0x4

    move/from16 v0, v84

    if-ge v0, v4, :cond_e8f

    move-object/from16 v0, v197

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v207

    invoke-static/range {v207 .. v207}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    if-eqz v207, :cond_dda

    const/16 v82, 0x1

    :cond_dda
    add-int/lit8 v84, v84, 0x1

    goto :goto_dc1

    :cond_ddd
    const-wide/16 v12, 0x0

    cmp-long v4, v232, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v234, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v118, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v120, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v242, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v244, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v104, v12

    if-gtz v4, :cond_b35

    if-gtz v102, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v46, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v48, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v130, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    move-wide/from16 v0, v264

    cmp-long v4, v0, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v106, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v108, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v228, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v230, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v114, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v116, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v238, v12

    if-gtz v4, :cond_b35

    const-wide/16 v12, 0x0

    cmp-long v4, v240, v12

    if-lez v4, :cond_be9

    goto/16 :goto_b35

    :cond_e55
    if-nez v219, :cond_c4f

    move/from16 v0, v256

    if-nez v0, :cond_c4f

    const-wide/16 v12, 0x0

    cmp-long v4, v252, v12

    if-nez v4, :cond_c4f

    const-wide/16 v12, 0x0

    cmp-long v4, v254, v12

    if-nez v4, :cond_c4f

    const-wide/16 v12, 0x0

    cmp-long v4, v200, v12

    if-eqz v4, :cond_ca6

    goto/16 :goto_c4f

    :cond_e6f
    const/16 v56, 0x0

    goto/16 :goto_ce6

    :cond_e73
    const-wide/16 v28, 0x0

    goto/16 :goto_cf8

    :cond_e77
    const/16 v145, 0x0

    goto/16 :goto_d08

    :cond_e7b
    const/16 v150, 0x0

    goto/16 :goto_d18

    :cond_e7f
    const-wide/16 v208, 0x0

    goto/16 :goto_d26

    :cond_e83
    const-wide/16 v202, 0x0

    goto/16 :goto_d30

    :cond_e87
    const-wide/16 v210, 0x0

    goto/16 :goto_d3e

    :cond_e8b
    const-wide/16 v204, 0x0

    goto/16 :goto_d48

    :cond_e8f
    if-eqz v82, :cond_e9b

    const-string/jumbo v4, "ua"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e9b
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_ed4

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v182

    move-object/from16 v0, v182

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    invoke-virtual/range {v182 .. v182}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    if-eqz v37, :cond_fab

    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v40

    :goto_ebb
    const-string/jumbo v4, "awl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ed4
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v216

    invoke-virtual/range {v216 .. v216}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v96, v4, -0x1

    :goto_ede
    if-ltz v96, :cond_fb3

    move-object/from16 v0, v216

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v257, v0

    move-object/from16 v0, v257

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v257, v0

    const-string/jumbo v14, ""

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v257

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const-string/jumbo v12, "f"

    move-object/from16 v8, v16

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    move-object/from16 v0, v257

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const-string/jumbo v12, "p"

    move-object/from16 v8, v16

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v9, :cond_faf

    invoke-virtual {v9}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v17

    :goto_f25
    const-string/jumbo v20, "bp"

    move-wide/from16 v18, v10

    move/from16 v21, p3

    move-object/from16 v22, v14

    invoke-static/range {v16 .. v22}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x2

    move-object/from16 v0, v257

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v17

    const-string/jumbo v20, "w"

    move-wide/from16 v18, v10

    move/from16 v21, p3

    move-object/from16 v22, v14

    invoke-static/range {v16 .. v22}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_fa7

    move-object/from16 v0, v216

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Ljava/lang/String;

    const/16 v4, 0x2c

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_f6a

    const/16 v4, 0x2c

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    :cond_f6a
    const/16 v4, 0xa

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_f7e

    const/16 v4, 0xa

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    :cond_f7e
    const/16 v4, 0xd

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_f92

    const/16 v4, 0xd

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    :cond_f92
    const-string/jumbo v4, "wl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v103, v7, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_fa7
    add-int/lit8 v96, v96, -0x1

    goto/16 :goto_ede

    :cond_fab
    const-wide/16 v40, 0x0

    goto/16 :goto_ebb

    :cond_faf
    const/16 v17, 0x0

    goto/16 :goto_f25

    :cond_fb3
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v173

    invoke-virtual/range {v173 .. v173}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v94, v4, -0x1

    :goto_fbd
    if-ltz v94, :cond_1058

    move-object/from16 v0, v173

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v182

    check-cast v182, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v190, v12, v18

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    invoke-virtual/range {v182 .. v182}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    if-eqz v37, :cond_1052

    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    :goto_fef
    if-eqz v37, :cond_1055

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    :goto_ff9
    const-wide/16 v12, 0x0

    cmp-long v4, v190, v12

    if-eqz v4, :cond_104e

    const-string/jumbo v7, "sy"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v173

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_104e
    add-int/lit8 v94, v94, -0x1

    goto/16 :goto_fbd

    :cond_1052
    const-wide/16 v38, -0x1

    goto :goto_fef

    :cond_1055
    const/16 v36, -0x1

    goto :goto_ff9

    :cond_1058
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v86, v4, -0x1

    :goto_1062
    if-ltz v86, :cond_10fd

    move-object/from16 v0, v98

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v182

    check-cast v182, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v190, v12, v18

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    invoke-virtual/range {v182 .. v182}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    if-eqz v37, :cond_10f7

    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    :goto_1094
    if-eqz v37, :cond_10fa

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    :goto_109e
    const-wide/16 v12, 0x0

    cmp-long v4, v190, v12

    if-eqz v4, :cond_10f3

    const-string/jumbo v7, "jb"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v98

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10f3
    add-int/lit8 v86, v86, -0x1

    goto/16 :goto_1062

    :cond_10f7
    const-wide/16 v38, -0x1

    goto :goto_1094

    :cond_10fa
    const/16 v36, -0x1

    goto :goto_109e

    :cond_10fd
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v85, v4, -0x1

    :goto_1107
    if-ltz v85, :cond_1197

    move-object/from16 v0, v45

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/util/SparseIntArray;

    if-eqz v196, :cond_1193

    const-string/jumbo v7, "jbc"

    const/4 v4, 0x6

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v45

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v196

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v196

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v196

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v196

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    const/4 v4, 0x4

    const/4 v12, 0x0

    move-object/from16 v0, v196

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1193
    add-int/lit8 v85, v85, -0x1

    goto/16 :goto_1107

    :cond_1197
    const-string/jumbo v20, "fla"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v20, "cam"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v20, "vid"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v20, "aud"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v164

    invoke-virtual/range {v164 .. v164}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/16 v92, 0x0

    :goto_11f1
    move/from16 v0, v92

    if-ge v0, v15, :cond_128a

    move-object/from16 v0, v164

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v162

    check-cast v162, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v164

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v163

    invoke-virtual/range {v162 .. v162}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v182

    if-eqz v182, :cond_1280

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v190, v12, v18

    const-wide/16 v12, 0x0

    cmp-long v4, v190, v12

    if-eqz v4, :cond_1280

    move-object/from16 v0, v182

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    invoke-virtual/range {v162 .. v162}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    if-eqz v37, :cond_1284

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    :goto_1239
    move-object/from16 v0, v182

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    if-eqz v37, :cond_1287

    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v34

    :goto_124b
    const-string/jumbo v4, "sr"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v163 .. v163}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1280
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_11f1

    :cond_1284
    const/16 v36, 0x0

    goto :goto_1239

    :cond_1287
    const-wide/16 v34, 0x0

    goto :goto_124b

    :cond_128a
    const-string/jumbo v20, "vib"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v20, "fg"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v20, "fgs"

    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v172, v0

    const-wide/16 v188, 0x0

    const/16 v91, 0x0

    :goto_12cf
    const/4 v4, 0x6

    move/from16 v0, v91

    if-ge v0, v4, :cond_12f1

    move-object/from16 v0, v197

    move/from16 v1, v91

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v178

    add-long v188, v188, v178

    const-wide/16 v12, 0x1f4

    add-long v12, v12, v178

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v172, v91

    add-int/lit8 v91, v91, 0x1

    goto :goto_12cf

    :cond_12f1
    const-wide/16 v12, 0x0

    cmp-long v4, v188, v12

    if-lez v4, :cond_1301

    const-string/jumbo v4, "st"

    move-object/from16 v0, p2

    move-object/from16 v1, v172

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1301
    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v212

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v174

    const-wide/16 v12, 0x0

    cmp-long v4, v212, v12

    if-gtz v4, :cond_131d

    const-wide/16 v12, 0x0

    cmp-long v4, v174, v12

    if-lez v4, :cond_1346

    :cond_131d
    const-string/jumbo v4, "cpu"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v12, 0x3e8

    div-long v12, v212, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v174, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1346
    if-eqz v58, :cond_13da

    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v57

    if-eqz v57, :cond_13da

    move-object/from16 v0, v57

    array-length v4, v0

    move-object/from16 v0, v58

    array-length v7, v0

    if-ne v4, v7, :cond_13da

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v84, 0x0

    :goto_1362
    move-object/from16 v0, v57

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_1380

    if-nez v84, :cond_137c

    const-string/jumbo v4, ""

    :goto_136e
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v57, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v84, v84, 0x1

    goto :goto_1362

    :cond_137c
    const-string/jumbo v4, ","

    goto :goto_136e

    :cond_1380
    move-object/from16 v0, v197

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v155

    if-eqz v155, :cond_13a4

    const/16 v84, 0x0

    :goto_138c
    move-object/from16 v0, v155

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_13b8

    const-string/jumbo v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v155, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v84, v84, 0x1

    goto :goto_138c

    :cond_13a4
    const/16 v84, 0x0

    :goto_13a6
    move-object/from16 v0, v57

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_13b8

    const-string/jumbo v4, ",0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v84, v84, 0x1

    goto :goto_13a6

    :cond_13b8
    const-string/jumbo v4, "ctf"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "A"

    const/4 v12, 0x0

    aput-object v8, v7, v12

    move-object/from16 v0, v57

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13da
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v142

    invoke-virtual/range {v142 .. v142}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v90, v4, -0x1

    :goto_13e4
    if-ltz v90, :cond_149a

    move-object/from16 v0, v142

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v214

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v176

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v76

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v169

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v133

    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v132

    const-wide/16 v12, 0x0

    cmp-long v4, v214, v12

    if-nez v4, :cond_142c

    const-wide/16 v12, 0x0

    cmp-long v4, v176, v12

    if-eqz v4, :cond_148d

    :cond_142c
    :goto_142c
    const-string/jumbo v7, "pr"

    const/4 v4, 0x7

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v142

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-static/range {v214 .. v215}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v169 .. v169}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    invoke-static/range {v132 .. v132}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    invoke-static/range {v133 .. v133}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x6

    aput-object v4, v8, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1489
    add-int/lit8 v90, v90, -0x1

    goto/16 :goto_13e4

    :cond_148d
    const-wide/16 v12, 0x0

    cmp-long v4, v76, v12

    if-nez v4, :cond_142c

    if-nez v169, :cond_142c

    if-nez v132, :cond_142c

    if-eqz v133, :cond_1489

    goto :goto_142c

    :cond_149a
    invoke-virtual/range {v197 .. v197}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v134

    invoke-virtual/range {v134 .. v134}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v87, v4, -0x1

    :goto_14a4
    if-ltz v87, :cond_a53

    move-object/from16 v0, v134

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/os/BatteryStats$Uid$Pkg;

    const/16 v218, 0x0

    invoke-virtual/range {v143 .. v143}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v97, v4, -0x1

    :goto_14bc
    if-ltz v97, :cond_14fa

    move-object/from16 v0, v30

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v55

    add-int v218, v218, v55

    move-object/from16 v0, v30

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x2c

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    const-string/jumbo v4, "wua"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v103, v7, v8

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v97, v97, -0x1

    goto :goto_14bc

    :cond_14fa
    invoke-virtual/range {v143 .. v143}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v165

    invoke-virtual/range {v165 .. v165}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v93, v4, -0x1

    :goto_1504
    if-ltz v93, :cond_1579

    move-object/from16 v0, v165

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v168

    check-cast v168, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v0, v168

    move-wide/from16 v1, v32

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v170

    move-object/from16 v0, v168

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v169

    move-object/from16 v0, v168

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v101

    const-wide/16 v12, 0x0

    cmp-long v4, v170, v12

    if-nez v4, :cond_1532

    if-eqz v169, :cond_1576

    :cond_1532
    :goto_1532
    const-string/jumbo v4, "apk"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v218 .. v218}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    move-object/from16 v0, v134

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, v165

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v170, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v169 .. v169}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1573
    add-int/lit8 v93, v93, -0x1

    goto :goto_1504

    :cond_1576
    if-eqz v101, :cond_1573

    goto :goto_1532

    :cond_1579
    add-int/lit8 v87, v87, -0x1

    goto/16 :goto_14a4

    :cond_157d
    return-void

    :pswitch_data_157e
    .packed-switch 0x1
        :pswitch_9d5
        :pswitch_9c9
        :pswitch_9f6
        :pswitch_9bd
        :pswitch_9d1
        :pswitch_9b9
        :pswitch_9f2
        :pswitch_9c1
        :pswitch_9cd
        :pswitch_9ee
        :pswitch_9e1
        :pswitch_9c5
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "vers"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "27"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v16, v2, v4

    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_c5

    const/4 v11, 0x1

    :goto_40
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_48

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_d7

    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v12, 0x0

    :goto_4f
    :try_start_4f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v12, v2, :cond_c8

    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "hsp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ",\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "\\"

    const-string/jumbo v3, "\\\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4f

    :cond_c5
    const/4 v11, 0x0

    goto/16 :goto_40

    :cond_c8
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_d4
    .catchall {:try_start_4f .. :try_end_d4} :catchall_de

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    :cond_d7
    if-eqz v11, :cond_e3

    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_e3

    return-void

    :catchall_de
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v2

    :cond_e3
    if-eqz p3, :cond_196

    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    const/4 v12, 0x0

    :goto_eb
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_130

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    if-nez v15, :cond_124

    new-instance v15, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v15, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_124
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_eb

    :cond_130
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_13c
    if-ge v12, v9, :cond_196

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    if-eqz v15, :cond_193

    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_193

    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    const/4 v13, 0x0

    :goto_166
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_193

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_166

    :cond_193
    add-int/lit8 v12, v12, 0x1

    goto :goto_13c

    :cond_196
    if-eqz v11, :cond_19c

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_21b

    :cond_19c
    const-string/jumbo v2, ""

    const-string/jumbo v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_1d5

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "dtr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d5
    const-string/jumbo v2, ""

    const-string/jumbo v3, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_20b

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const-string/jumbo v2, "i"

    const-string/jumbo v3, "ctr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20b
    and-int/lit8 v2, p4, 0x40

    if-eqz v2, :cond_21c

    const/4 v7, 0x1

    :goto_210
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_21b
    return-void

    :cond_21c
    const/4 v7, 0x0

    goto :goto_210
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 60

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v6, p3, 0xe

    if-eqz v6, :cond_d4

    const/16 v34, 0x1

    :goto_9
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_11

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_e5

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v36, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v38, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_99

    :try_start_25
    const-string/jumbo v6, "Battery History ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x64

    mul-long v12, v12, v38

    div-long v12, v12, v36

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, "% used, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, " used of "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, ", "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " strings using "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v6, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_96
    .catchall {:try_start_25 .. :try_end_96} :catchall_d8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    :cond_99
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_e5

    :try_start_9f
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string/jumbo v6, "Old battery History:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v8, -0x1

    :goto_b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_df

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-gez v6, :cond_c3

    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_c3
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_dd

    const/4 v11, 0x1

    :goto_c8
    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_ce
    .catchall {:try_start_9f .. :try_end_ce} :catchall_cf

    goto :goto_b3

    :catchall_cf
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v6

    :cond_d4
    const/16 v34, 0x0

    goto/16 :goto_9

    :catchall_d8
    move-exception v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v6

    :cond_dd
    const/4 v11, 0x0

    goto :goto_c8

    :cond_df
    :try_start_df
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_cf

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    :cond_e5
    if-eqz v34, :cond_ec

    and-int/lit8 v6, p3, 0x6

    if-nez v6, :cond_ec

    return-void

    :cond_ec
    if-nez v34, :cond_17e

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v32, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    const/16 v35, 0x0

    :goto_fe
    move/from16 v0, v35

    if-ge v0, v4, :cond_179

    move-object/from16 v0, v51

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v44

    if-eqz v44, :cond_176

    const/16 v40, 0x0

    :goto_114
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v40

    if-ge v0, v6, :cond_176

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v32, :cond_132

    const-string/jumbo v6, "Per-PID Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v32, 0x1

    :cond_132
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-object/from16 v0, v41

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_173

    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v42, v12

    :goto_142
    add-long v46, v14, v12

    const-string/jumbo v6, "  PID "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " wake time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v46

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v40, v40, 0x1

    goto :goto_114

    :cond_173
    const-wide/16 v12, 0x0

    goto :goto_142

    :cond_176
    add-int/lit8 v35, v35, 0x1

    goto :goto_fe

    :cond_179
    if-eqz v32, :cond_17e

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_17e
    if-eqz v34, :cond_184

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_231

    :cond_184
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Discharge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1f4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v48

    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_1be

    const-string/jumbo v6, "  Estimated discharge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1be
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    const/16 v35, 0x0

    :goto_1c4
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v6, v6

    move/from16 v0, v35

    if-ge v0, v6, :cond_1f1

    const-string/jumbo v6, "  Estimated "

    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v35

    const-string/jumbo v19, " time: "

    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v12, v12, v35

    int-to-long v12, v12

    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v14, v14, v35

    int-to-long v14, v14

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v16

    move-object/from16 v12, p2

    move-object v13, v6

    move-object v14, v10

    move-object/from16 v15, v19

    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v35, v35, 0x1

    goto :goto_1c4

    :cond_1f1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1f4
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Charge step durations:"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_231

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v48

    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_22e

    const-string/jumbo v6, "  Estimated charge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_22e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_231
    if-eqz v34, :cond_237

    and-int/lit8 v6, p3, 0x6

    if-eqz v6, :cond_42d

    :cond_237
    const-string/jumbo v6, "Daily stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Current start time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Next min deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  Next max deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v45

    move-object/from16 v0, v16

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_2b9

    move-object/from16 v0, v23

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v6, :cond_3ce

    :cond_2b9
    :goto_2b9
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_2c1

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_3d2

    :cond_2c1
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily discharge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_2df

    const-string/jumbo v14, "      "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_2df
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily charge step durations:"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_301

    const-string/jumbo v21, "      "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_301
    const-string/jumbo v6, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_30d
    :goto_30d
    const/16 v31, 0x0

    :goto_30f
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v33

    if-eqz v33, :cond_42a

    add-int/lit8 v31, v31, 0x1

    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_322

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_322
    const-string/jumbo v6, "  Daily from "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " to "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_36a

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_3fa

    :cond_36a
    const-string/jumbo v6, "      "

    const-string/jumbo v10, "    Discharge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_394

    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_394
    const-string/jumbo v6, "      "

    const-string/jumbo v10, "    Charge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_3be

    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_3be
    const-string/jumbo v6, "    "

    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_30f

    :cond_3ce
    if-eqz v45, :cond_30d

    goto/16 :goto_2b9

    :cond_3d2
    const-string/jumbo v6, "  Current daily steps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v14, "    "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string/jumbo v21, "    "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_30d

    :cond_3fa
    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_30f

    :cond_42a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_42d
    if-eqz v34, :cond_433

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_480

    :cond_433
    const-string/jumbo v6, "Statistics since last charge:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  System starts: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ", currently on battery: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v27, ""

    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_481

    const/16 v30, 0x1

    :goto_470
    const/16 v28, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v29, p4

    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_480
    return-void

    :cond_481
    const/16 v30, 0x0

    goto :goto_470
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 13

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .registers 311

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v190, v6, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v24, v6, v12

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v24

    const-wide/16 v12, 0x3e8

    div-long v188, v6, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v62

    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v0

    move-wide/16 v270, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    move-wide/16 v264, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v226

    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v234

    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v0

    move-wide/16 v268, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v0

    move-wide/16 v266, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v60

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v86

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v196

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v244

    invoke-virtual/range {v244 .. v244}, Landroid/util/SparseArray;->size()I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v114

    if-lez v114, :cond_bf

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Estimated battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v114

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bf
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v148

    if-lez v148, :cond_ef

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Min learned battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v148

    div-int/lit16 v6, v0, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ef
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v147

    if-lez v147, :cond_11f

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Max learned battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v147

    div-int/lit16 v6, v0, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11f
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Time on battery: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v264

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v264

    move-wide/from16 v3, v226

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v270

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v270

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Time on battery screen off: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v266

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v266

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v268

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v268

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Time on battery screen doze: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v196, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v196

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total run time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v226, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v234, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v60, v6

    if-ltz v6, :cond_266

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Battery time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v60, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_266
    const-wide/16 v6, 0x0

    cmp-long v6, v86, v6

    if-ltz v6, :cond_28b

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Charge time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v86, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28b
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v104

    const-wide/16 v6, 0x0

    cmp-long v6, v104, v6

    if-ltz v6, :cond_2c7

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v104

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c7
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v108

    const-wide/16 v6, 0x0

    cmp-long v6, v108, v6

    if-ltz v6, :cond_303

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen off discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v108

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_303
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v106

    const-wide/16 v6, 0x0

    cmp-long v6, v106, v6

    if-ltz v6, :cond_33f

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen doze discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v106

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_33f
    sub-long v6, v104, v108

    sub-long v110, v6, v106

    const-wide/16 v6, 0x0

    cmp-long v6, v110, v6

    if-ltz v6, :cond_377

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen on discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v110

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_377
    const-string/jumbo v6, "  Start clock time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v198

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v130

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v182

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v96

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v94

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v100

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v98

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v180

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    move-wide/16 v274, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    move-wide/16 v272, v0

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v198, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v198

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x, Interactive: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v130, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v130

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Screen brightnesses:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x0

    const/16 v127, 0x0

    :goto_47d
    const/4 v6, 0x5

    move/from16 v0, v127

    if-ge v0, v6, :cond_4d2

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_497

    :goto_494
    add-int/lit8 v127, v127, 0x1

    goto :goto_47d

    :cond_497
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v198

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_494

    :cond_4d2
    if-nez v102, :cond_4da

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4da
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v182, v6

    if-eqz v6, :cond_521

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Power save mode enabled: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v182, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v182

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_521
    const-wide/16 v6, 0x0

    cmp-long v6, v100, v6

    if-eqz v6, :cond_571

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Device light idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v100, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v100

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_571
    const-wide/16 v6, 0x0

    cmp-long v6, v96, v6

    if-eqz v6, :cond_5d1

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Idle mode light time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v96, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5d1
    const-wide/16 v6, 0x0

    cmp-long v6, v98, v6

    if-eqz v6, :cond_621

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Device full idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v98, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_621
    const-wide/16 v6, 0x0

    cmp-long v6, v94, v6

    if-eqz v6, :cond_681

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Idle mode full time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v94, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v94

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_681
    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-eqz v6, :cond_6c7

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Active phone call: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v180, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v180

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c7
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v88

    if-eqz v88, :cond_6e3

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Connectivity changes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_6e3
    const-wide/16 v118, 0x0

    const-wide/16 v178, 0x0

    new-instance v218, Ljava/util/ArrayList;

    invoke-direct/range {v218 .. v218}, Ljava/util/ArrayList;-><init>()V

    const/16 v139, 0x0

    :goto_6ee
    move/from16 v0, v139

    move/from16 v1, v46

    if-ge v0, v1, :cond_76f

    move-object/from16 v0, v244

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v238

    check-cast v238, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/16 v262, v0

    invoke-virtual/range {v262 .. v262}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v140, v6, -0x1

    :goto_70b
    if-ltz v140, :cond_76c

    move-object/from16 v0, v262

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v291, v0

    move-object/from16 v0, v291

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v291, v0

    const/4 v6, 0x1

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v120

    if-eqz v120, :cond_734

    move-object/from16 v0, v120

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v118, v118, v6

    :cond_734
    const/4 v6, 0x0

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_769

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_769

    move/from16 v0, p5

    if-gez v0, :cond_767

    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v0, v262

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v218

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_767
    add-long v178, v178, v10

    :cond_769
    add-int/lit8 v140, v140, -0x1

    goto :goto_70b

    :cond_76c
    add-int/lit8 v139, v139, 0x1

    goto :goto_6ee

    :cond_76f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v156

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v164

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v282, v0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v298, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v158

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v166

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v284, v0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v300, v0

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v78

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v82

    const-wide/16 v6, 0x0

    cmp-long v6, v118, v6

    if-eqz v6, :cond_7fd

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total full wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v118

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7fd
    const-wide/16 v6, 0x0

    cmp-long v6, v178, v6

    if-eqz v6, :cond_825

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Total partial wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v178

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_825
    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Logging duration for connectivity statistics: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v264

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Cellular Statistics:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Cellular kernel active time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v150

    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Cellular data received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v156

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Cellular data sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v164

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Cellular packets received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v158

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v6, "     Cellular packets sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v166

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Cellular Radio Access Technology:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x0

    const/16 v127, 0x0

    :goto_924
    const/16 v6, 0x11

    move/from16 v0, v127

    if-ge v0, v6, :cond_97a

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_93f

    :goto_93c
    add-int/lit8 v127, v127, 0x1

    goto :goto_924

    :cond_93f
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93c

    :cond_97a
    if-nez v102, :cond_982

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_982
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v84, v0

    const-string/jumbo v6, "very poor (less than -128dBm): "

    const/4 v7, 0x0

    aput-object v6, v84, v7

    const-string/jumbo v6, "poor (-128dBm to -118dBm): "

    const/4 v7, 0x1

    aput-object v6, v84, v7

    const-string/jumbo v6, "moderate (-118dBm to -108dBm): "

    const/4 v7, 0x2

    aput-object v6, v84, v7

    const-string/jumbo v6, "good (-108dBm to -98dBm): "

    const/4 v7, 0x3

    aput-object v6, v84, v7

    const-string/jumbo v6, "great (greater than -98dBm): "

    const/4 v7, 0x4

    aput-object v6, v84, v7

    const/16 v102, 0x0

    move-object/from16 v0, v84

    array-length v6, v0

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v171

    const/16 v127, 0x0

    :goto_9c9
    move/from16 v0, v127

    move/from16 v1, v171

    if-ge v0, v1, :cond_a1d

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_9e4

    :goto_9e1
    add-int/lit8 v127, v127, 0x1

    goto :goto_9c9

    :cond_9e4
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    aget-object v6, v84, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e1

    :cond_a1d
    if-nez v102, :cond_a25

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a25
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "Cellular"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wifi Statistics:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Wifi data received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v282

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Wifi data sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v298

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     Wifi packets received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v284

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v6, "     Wifi packets sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v300

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Wifi states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x0

    const/16 v127, 0x0

    :goto_ab6
    const/16 v6, 0x8

    move/from16 v0, v127

    if-ge v0, v6, :cond_b07

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_ad1

    :goto_ace
    add-int/lit8 v127, v127, 0x1

    goto :goto_ab6

    :cond_ad1
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ace

    :cond_b07
    if-nez v102, :cond_b0f

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Wifi supplicant states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x0

    const/16 v127, 0x0

    :goto_b2b
    const/16 v6, 0xd

    move/from16 v0, v127

    if-ge v0, v6, :cond_b7c

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_b46

    :goto_b43
    add-int/lit8 v127, v127, 0x1

    goto :goto_b2b

    :cond_b46
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b43

    :cond_b7c
    if-nez v102, :cond_b84

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b84
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/16 v280, v0

    const-string/jumbo v6, "very poor (less than -88.75dBm): "

    const/4 v7, 0x0

    move-object/from16 v0, v280

    aput-object v6, v0, v7

    const-string/jumbo v6, "poor (-88.75 to -77.5dBm): "

    const/4 v7, 0x1

    move-object/from16 v0, v280

    aput-object v6, v0, v7

    const-string/jumbo v6, "moderate (-77.5dBm to -66.25dBm): "

    const/4 v7, 0x2

    move-object/from16 v0, v280

    aput-object v6, v0, v7

    const-string/jumbo v6, "good (-66.25dBm to -55dBm): "

    const/4 v7, 0x3

    move-object/from16 v0, v280

    aput-object v6, v0, v7

    const-string/jumbo v6, "great (greater than -55dBm): "

    const/4 v7, 0x4

    move-object/from16 v0, v280

    aput-object v6, v0, v7

    const/16 v102, 0x0

    move-object/from16 v0, v280

    array-length v6, v0

    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v174

    const/16 v127, 0x0

    :goto_bd6
    move/from16 v0, v127

    move/from16 v1, v174

    if-ge v0, v1, :cond_c2c

    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-nez v6, :cond_bf1

    :goto_bee
    add-int/lit8 v127, v127, 0x1

    goto :goto_bd6

    :cond_bf1
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v102, 0x1

    const-string/jumbo v6, "     "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v280

    aget-object v6, v0, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v214, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v214

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bee

    :cond_c2c
    if-nez v102, :cond_c34

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c34
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Bluetooth total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long v74, v6, v12

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Bluetooth scan time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v74

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v16, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_1021

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_fec

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently unplugged"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle current level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    :goto_d1d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen doze: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d61
    new-instance v126, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v126

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    move-object/from16 v0, v126

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v6, -0x1

    move-object/from16 v0, v126

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v204

    if-eqz v204, :cond_1136

    invoke-interface/range {v204 .. v204}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1136

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Estimated power use (mAh):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Capacity: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string/jumbo v6, ", Computed drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string/jumbo v6, ", actual drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_df2

    const-string/jumbo v6, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_df2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/16 v127, 0x0

    :goto_df7
    invoke-interface/range {v204 .. v204}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_1133

    move-object/from16 v0, v204

    move/from16 v1, v127

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/internal/os/BatterySipper;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v6

    move-object/from16 v0, v73

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_25be

    const-string/jumbo v6, "    ???: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_e25
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_f6e

    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_e61

    const-string/jumbo v6, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e61
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_e7e

    const-string/jumbo v6, " cpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e7e
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_e9b

    const-string/jumbo v6, " wake="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_e9b
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_eb8

    const-string/jumbo v6, " radio="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_eb8
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_ed5

    const-string/jumbo v6, " wifi="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_ed5
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_ef2

    const-string/jumbo v6, " bt="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_ef2
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_f0f

    const-string/jumbo v6, " gps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_f0f
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_f2c

    const-string/jumbo v6, " sensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_f2c
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_f49

    const-string/jumbo v6, " camera="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_f49
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_f66

    const-string/jumbo v6, " flash="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_f66
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f6e
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_fd7

    const-string/jumbo v6, " Including smearing: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_fb2

    const-string/jumbo v6, " screen="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_fb2
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_fcf

    const-string/jumbo v6, " proportional="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_fcf
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fd7
    move-object/from16 v0, v73

    iget-boolean v6, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v6, :cond_fe5

    const-string/jumbo v6, " Excluded from smearing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fe5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v127, v127, 0x1

    goto/16 :goto_df7

    :cond_fec
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently plugged into power"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_d1d

    :cond_1021
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device battery use since last full charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen doze: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_d61

    :pswitch_1095
    const-string/jumbo v6, "    Idle: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_109f
    const-string/jumbo v6, "    Cell standby: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10a9
    const-string/jumbo v6, "    Phone calls: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10b3
    const-string/jumbo v6, "    Wifi: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10bd
    const-string/jumbo v6, "    Bluetooth: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10c7
    const-string/jumbo v6, "    Screen: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10d1
    const-string/jumbo v6, "    Flashlight: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10db
    const-string/jumbo v6, "    Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_10fa
    const-string/jumbo v6, "    User "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_1115
    const-string/jumbo v6, "    Unaccounted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_111f
    const-string/jumbo v6, "    Over-counted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :pswitch_1129
    const-string/jumbo v6, "    Camera: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_e25

    :cond_1133
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1136
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v204

    if-eqz v204, :cond_120b

    invoke-interface/range {v204 .. v204}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_120b

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v230, 0x0

    const/16 v127, 0x0

    :goto_1151
    invoke-interface/range {v204 .. v204}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_11d2

    move-object/from16 v0, v204

    move/from16 v1, v127

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/internal/os/BatterySipper;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Uid "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v6, v12

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " packets over "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long v230, v230, v6

    add-int/lit8 v127, v127, 0x1

    goto :goto_1151

    :cond_11d2
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    TOTAL TIME: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v230

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_120b
    new-instance v217, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v217

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move/from16 v0, p5

    if-gez v0, :cond_1407

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v143

    invoke-interface/range {v143 .. v143}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_12db

    new-instance v144, Ljava/util/ArrayList;

    invoke-direct/range {v144 .. v144}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v143 .. v143}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :cond_122f
    :goto_122f
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1266

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v20

    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-lez v6, :cond_122f

    new-instance v16, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v21}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v144

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_122f

    :cond_1266
    invoke-virtual/range {v144 .. v144}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_12db

    move-object/from16 v0, v144

    move-object/from16 v1, v217

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All kernel wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v127, 0x0

    :goto_1280
    invoke-virtual/range {v144 .. v144}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_12d8

    move-object/from16 v0, v144

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v216

    check-cast v216, Landroid/os/BatteryStats$TimerEntry;

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Kernel Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v6, ": "

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12d5

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12d5
    add-int/lit8 v127, v127, 0x1

    goto :goto_1280

    :cond_12d8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_12db
    invoke-virtual/range {v218 .. v218}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1351

    move-object/from16 v0, v218

    move-object/from16 v1, v217

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All partial wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v127, 0x0

    :goto_12f5
    invoke-virtual/range {v218 .. v218}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_134b

    move-object/from16 v0, v218

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v216

    check-cast v216, Landroid/os/BatteryStats$TimerEntry;

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "  Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v127, v127, 0x1

    goto :goto_12f5

    :cond_134b
    invoke-virtual/range {v218 .. v218}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1351
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    move-object/16 v263, v0

    invoke-interface/range {v263 .. v263}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1407

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All wakeup reasons:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v187, Ljava/util/ArrayList;

    invoke-direct/range {v187 .. v187}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v263 .. v263}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_1376
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13aa

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v34, v0

    const/16 v32, 0x0

    move-object/from16 v33, v19

    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v187

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1376

    :cond_13aa
    move-object/from16 v0, v187

    move-object/from16 v1, v217

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v127, 0x0

    :goto_13b3
    invoke-virtual/range {v187 .. v187}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_1404

    move-object/from16 v0, v187

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v216

    check-cast v216, Landroid/os/BatteryStats$TimerEntry;

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "  Wakeup reason "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v216

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v127, v127, 0x1

    goto :goto_13b3

    :cond_1404
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1407
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v146

    invoke-virtual/range {v146 .. v146}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1462

    const-string/jumbo v6, "  Memory Stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v127, 0x0

    :goto_141b
    invoke-virtual/range {v146 .. v146}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_145f

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "  Bandwidth "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v146

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " Time "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v146

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v127, v127, 0x1

    goto :goto_141b

    :cond_145f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1462
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v194

    invoke-interface/range {v194 .. v194}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_14b0

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Resource Power Manager Stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v194 .. v194}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_14ad

    invoke-interface/range {v194 .. v194}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_1485
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14ad

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-object/from16 v31, v19

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1485

    :cond_14ad
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_14b0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v93

    if-eqz v93, :cond_14e4

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "  CPU freqs:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v127, 0x0

    :goto_14c2
    move-object/from16 v0, v93

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_14d8

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v93, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v127, v127, 0x1

    goto :goto_14c2

    :cond_14d8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_14e4
    const/16 v139, 0x0

    :goto_14e6
    move/from16 v0, v139

    move/from16 v1, v46

    if-ge v0, v1, :cond_25bd

    move-object/from16 v0, v244

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v239

    move/from16 v0, p5

    if-ltz v0, :cond_1507

    move/from16 v0, v239

    move/from16 v1, p5

    if-eq v0, v1, :cond_1507

    const/16 v6, 0x3e8

    move/from16 v0, v239

    if-eq v0, v6, :cond_1507

    :cond_1504
    :goto_1504
    add-int/lit8 v139, v139, 0x1

    goto :goto_14e6

    :cond_1507
    move-object/from16 v0, v244

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v238

    check-cast v238, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v239

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v152

    const/4 v6, 0x1

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v160

    const/4 v6, 0x2

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v276, v0

    const/4 v6, 0x3

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v294, v0

    const/4 v6, 0x4

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v76

    const/4 v6, 0x5

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v80

    const/4 v6, 0x0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v154

    const/4 v6, 0x1

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v162

    const/4 v6, 0x2

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v278, v0

    const/4 v6, 0x3

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v296, v0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v242

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v241

    move-object/from16 v0, v238

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v122

    move-object/from16 v0, v238

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move-wide/16 v292, v0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v0

    move/16 v281, v0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v0

    move/16 v290, v0

    move-object/from16 v0, v238

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v0

    move-wide/16 v286, v0

    move-object/from16 v0, v238

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v0

    move-wide/16 v288, v0

    move-object/from16 v0, v238

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v246

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v168

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/16 v302, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v152, v6

    if-gtz v6, :cond_160f

    const-wide/16 v6, 0x0

    cmp-long v6, v160, v6

    if-lez v6, :cond_1b5f

    :cond_160f
    :goto_160f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Mobile network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v152

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v160

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v154

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v162

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1662
    const-wide/16 v6, 0x0

    cmp-long v6, v242, v6

    if-gtz v6, :cond_166a

    if-lez v241, :cond_16d3

    :cond_166a
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Mobile radio active: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v242, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v242

    move-wide/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v241

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v176, v154, v162

    const-wide/16 v6, 0x0

    cmp-long v6, v176, v6

    if-nez v6, :cond_16ae

    const-wide/16 v176, 0x1

    :cond_16ae
    const-string/jumbo v6, " @ "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v242, v6

    long-to-double v6, v6

    move-wide/from16 v0, v176

    long-to-double v12, v0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " mspp"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16d3
    const-wide/16 v6, 0x0

    cmp-long v6, v168, v6

    if-lez v6, :cond_16f6

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Mobile radio AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v168

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16f6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Modem"

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v276

    cmp-long v6, v0, v6

    if-gtz v6, :cond_172c

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v294

    cmp-long v6, v0, v6

    if-lez v6, :cond_1b6d

    :cond_172c
    :goto_172c
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Wi-Fi network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v276

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v294

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v278

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v296

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_177f
    const-wide/16 v6, 0x0

    cmp-long v6, v122, v6

    if-nez v6, :cond_178d

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v292

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1b7f

    :cond_178d
    :goto_178d
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v246, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v246

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Full Wifi Lock: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v122, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v122

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan (blamed): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v292

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v292

    move-wide/from16 v3, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v281

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan (actual): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v286

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v286

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v281

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Background Wifi Scan: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v288

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v288

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v290

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18a6
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v302

    cmp-long v6, v0, v6

    if-lez v6, :cond_18cb

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    WiFi AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v302

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18cb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide/16 v6, 0x0

    cmp-long v6, v76, v6

    if-gtz v6, :cond_18fd

    const-wide/16 v6, 0x0

    cmp-long v6, v80, v6

    if-lez v6, :cond_1932

    :cond_18fd
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Bluetooth network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1932
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v71

    if-eqz v71, :cond_1b21

    move-object/from16 v0, v71

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v232, v6, v12

    const-wide/16 v6, 0x0

    cmp-long v6, v232, v6

    if-eqz v6, :cond_1b21

    move-object/from16 v0, v71

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v72

    if-eqz v72, :cond_1b9f

    move-object/from16 v0, v72

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v90

    :goto_1965
    move-object/from16 v0, v71

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v52

    if-eqz v72, :cond_1ba3

    move-object/from16 v0, v72

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v54

    :goto_1977
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    if-eqz v6, :cond_1ba7

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v192

    :goto_1987
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    if-eqz v6, :cond_1bab

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v193

    :goto_1997
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v245

    if-eqz v245, :cond_1baf

    move-object/from16 v0, v245

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v254

    :goto_19a5
    if-eqz v245, :cond_1bb3

    move-object/from16 v0, v245

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v248

    :goto_19af
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v252

    if-eqz v252, :cond_1bb7

    move-object/from16 v0, v252

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    move-wide/16 v256, v0

    :goto_19c0
    if-eqz v252, :cond_1bbe

    move-object/from16 v0, v252

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v250

    :goto_19ca
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v6, v52, v232

    if-eqz v6, :cond_1a05

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v232

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_19ff

    const-string/jumbo v6, " (currently running)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19ff
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a05
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v52

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_1a32

    const-string/jumbo v6, " (currently running)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a32
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v54, v6

    if-gtz v6, :cond_1a40

    if-lez v90, :cond_1a75

    :cond_1a40
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v54

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v90

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v72, :cond_1a6f

    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_1a6f

    const-string/jumbo v6, " (currently running in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a6f
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a75
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Bluetooth Scan Results: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v192

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v193

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v254, v6

    if-gtz v6, :cond_1aa4

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v256

    cmp-long v6, v0, v6

    if-lez v6, :cond_1b16

    :cond_1aa4
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v254

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, " (max "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v248

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v245, :cond_1ad9

    invoke-virtual/range {v245 .. v245}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_1ad9

    const-string/jumbo v6, " (currently running unoptimized)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ad9
    if-eqz v252, :cond_1b16

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v256

    cmp-long v6, v0, v6

    if-lez v6, :cond_1b16

    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v256

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, " (max "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v250

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v252 .. v252}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_1b16

    const-string/jumbo v6, " (currently running unoptimized in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    :cond_1b21
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_1bd4

    const/16 v124, 0x0

    const/16 v127, 0x0

    :goto_1b2b
    const/4 v6, 0x4

    move/from16 v0, v127

    if-ge v0, v6, :cond_1bc9

    move-object/from16 v0, v238

    move/from16 v1, v127

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v253

    if-eqz v253, :cond_1b5c

    if-nez v124, :cond_1bc2

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    User activity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v124, 0x1

    :goto_1b4a
    move/from16 v0, v253

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b5c
    add-int/lit8 v127, v127, 0x1

    goto :goto_1b2b

    :cond_1b5f
    const-wide/16 v6, 0x0

    cmp-long v6, v154, v6

    if-gtz v6, :cond_160f

    const-wide/16 v6, 0x0

    cmp-long v6, v162, v6

    if-lez v6, :cond_1662

    goto/16 :goto_160f

    :cond_1b6d
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v278

    cmp-long v6, v0, v6

    if-gtz v6, :cond_172c

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v296

    cmp-long v6, v0, v6

    if-lez v6, :cond_177f

    goto/16 :goto_172c

    :cond_1b7f
    move/from16 v0, v281

    if-nez v0, :cond_178d

    move/from16 v0, v290

    if-nez v0, :cond_178d

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v286

    cmp-long v6, v0, v6

    if-nez v6, :cond_178d

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v288

    cmp-long v6, v0, v6

    if-nez v6, :cond_178d

    const-wide/16 v6, 0x0

    cmp-long v6, v246, v6

    if-eqz v6, :cond_18a6

    goto/16 :goto_178d

    :cond_1b9f
    const/16 v90, 0x0

    goto/16 :goto_1965

    :cond_1ba3
    const-wide/16 v54, 0x0

    goto/16 :goto_1977

    :cond_1ba7
    const/16 v192, 0x0

    goto/16 :goto_1987

    :cond_1bab
    const/16 v193, 0x0

    goto/16 :goto_1997

    :cond_1baf
    const-wide/16 v254, 0x0

    goto/16 :goto_19a5

    :cond_1bb3
    const-wide/16 v248, 0x0

    goto/16 :goto_19af

    :cond_1bb7
    const-wide/16 v0, 0x0

    move-wide/16 v256, v0

    goto/16 :goto_19c0

    :cond_1bbe
    const-wide/16 v250, 0x0

    goto/16 :goto_19ca

    :cond_1bc2
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b4a

    :cond_1bc9
    if-eqz v124, :cond_1bd4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1bd4
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/16 v262, v0

    const-wide/16 v222, 0x0

    const-wide/16 v224, 0x0

    const-wide/16 v236, 0x0

    const-wide/16 v220, 0x0

    const/16 v91, 0x0

    invoke-virtual/range {v262 .. v262}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v140, v6, -0x1

    :goto_1beb
    if-ltz v140, :cond_1ce4

    move-object/from16 v0, v262

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v291, v0

    move-object/from16 v0, v291

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v291, v0

    const-string/jumbo v28, ": "

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v262

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "full"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/4 v6, 0x0

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    const-string/jumbo v26, "partial"

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v23, :cond_1ce0

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    :goto_1c48
    const-string/jumbo v42, "background partial"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/4 v6, 0x2

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v42, "window"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v6, 0x12

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v42, "draw"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    add-int/lit8 v91, v91, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v222, v222, v6

    const/4 v6, 0x0

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v224, v224, v6

    const/4 v6, 0x2

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v236, v236, v6

    const/16 v6, 0x12

    move-object/from16 v0, v291

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v220, v220, v6

    add-int/lit8 v140, v140, -0x1

    goto/16 :goto_1beb

    :cond_1ce0
    const/16 v39, 0x0

    goto/16 :goto_1c48

    :cond_1ce4
    const/4 v6, 0x1

    move/from16 v0, v91

    if-le v0, v6, :cond_1dd3

    const-wide/16 v56, 0x0

    const-wide/16 v48, 0x0

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1d0d

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v47

    move-object/from16 v0, v47

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v56

    invoke-virtual/range {v47 .. v47}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v66

    if-eqz v66, :cond_1e89

    move-object/from16 v0, v66

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v48

    :cond_1d0d
    :goto_1d0d
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-nez v6, :cond_1d19

    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_1e8d

    :cond_1d19
    :goto_1d19
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    TOTAL wake: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v149, 0x0

    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-eqz v6, :cond_1d3d

    const/16 v149, 0x1

    move-wide/from16 v0, v222

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "full"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d3d
    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-eqz v6, :cond_1d58

    if-eqz v149, :cond_1d4b

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d4b
    const/16 v149, 0x1

    move-wide/from16 v0, v224

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "blamed partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d58
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-eqz v6, :cond_1d73

    if-eqz v149, :cond_1d66

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d66
    const/16 v149, 0x1

    move-wide/from16 v0, v56

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "actual partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d73
    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_1d8e

    if-eqz v149, :cond_1d81

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d81
    const/16 v149, 0x1

    move-wide/from16 v0, v48

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "actual background partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d8e
    const-wide/16 v6, 0x0

    cmp-long v6, v236, v6

    if-eqz v6, :cond_1da9

    if-eqz v149, :cond_1d9c

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d9c
    const/16 v149, 0x1

    move-wide/from16 v0, v236

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "window"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1da9
    const-wide/16 v6, 0x0

    cmp-long v6, v220, v6

    if-eqz v6, :cond_1dc4

    if-eqz v149, :cond_1db7

    const-string/jumbo v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1db7
    const/16 v149, 0x1

    move-wide/from16 v0, v220

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "draw"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1dc4
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1dd3
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v209

    invoke-virtual/range {v209 .. v209}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v137, v6, -0x1

    :goto_1ddd
    if-ltz v137, :cond_1eb0

    move-object/from16 v0, v209

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v230, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    if-eqz v70, :cond_1ea1

    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v68

    :goto_1e10
    if-eqz v70, :cond_1ea5

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    :goto_1e1a
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Sync "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v209

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_1ea9

    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-lez v6, :cond_1e7a

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v68

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e7a
    :goto_1e7a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    add-int/lit8 v137, v137, -0x1

    goto/16 :goto_1ddd

    :cond_1e89
    const-wide/16 v48, 0x0

    goto/16 :goto_1d0d

    :cond_1e8d
    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-nez v6, :cond_1d19

    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-nez v6, :cond_1d19

    const-wide/16 v6, 0x0

    cmp-long v6, v236, v6

    if-eqz v6, :cond_1dd3

    goto/16 :goto_1d19

    :cond_1ea1
    const-wide/16 v68, -0x1

    goto/16 :goto_1e10

    :cond_1ea5
    const/16 v67, -0x1

    goto/16 :goto_1e1a

    :cond_1ea9
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e7a

    :cond_1eb0
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v142

    invoke-virtual/range {v142 .. v142}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v129, v6, -0x1

    :goto_1eba
    if-ltz v129, :cond_1f73

    move-object/from16 v0, v142

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v230, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    if-eqz v70, :cond_1f66

    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v68

    :goto_1eed
    if-eqz v70, :cond_1f69

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    :goto_1ef7
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Job "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v142

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_1f6c

    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-lez v6, :cond_1f57

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v68

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f57
    :goto_1f57
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    add-int/lit8 v129, v129, -0x1

    goto/16 :goto_1eba

    :cond_1f66
    const-wide/16 v68, -0x1

    goto :goto_1eed

    :cond_1f69
    const/16 v67, -0x1

    goto :goto_1ef7

    :cond_1f6c
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f57

    :cond_1f73
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v85

    invoke-virtual/range {v85 .. v85}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v128, v6, -0x1

    :goto_1f7d
    if-ltz v128, :cond_1ff6

    move-object/from16 v0, v85

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v219

    check-cast v219, Landroid/util/SparseIntArray;

    if-eqz v219, :cond_1ff3

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Job Completions "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v85

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v138, 0x0

    :goto_1faf
    invoke-virtual/range {v219 .. v219}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move/from16 v0, v138

    if-ge v0, v6, :cond_1ff0

    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v219

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v219

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, "x)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v138, v138, 0x1

    goto :goto_1faf

    :cond_1ff0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1ff3
    add-int/lit8 v128, v128, -0x1

    goto :goto_1f7d

    :cond_1ff6
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Flashlight"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Camera"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Video"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Audio"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v202

    invoke-virtual/range {v202 .. v202}, Landroid/util/SparseArray;->size()I

    move-result v45

    const/16 v135, 0x0

    :goto_205c
    move/from16 v0, v135

    move/from16 v1, v45

    if-ge v0, v1, :cond_2151

    move-object/from16 v0, v202

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v200

    check-cast v200, Landroid/os/BatteryStats$Uid$Sensor;

    move-object/from16 v0, v202

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v201

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Sensor "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v200 .. v200}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v121

    const/16 v6, -0x2710

    move/from16 v0, v121

    if-ne v0, v6, :cond_2136

    const-string/jumbo v6, "GPS"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2093
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v200 .. v200}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    if-eqz v19, :cond_214a

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v230, v6, v12

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    invoke-virtual/range {v200 .. v200}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    if-eqz v70, :cond_213d

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    :goto_20c6
    move-object/from16 v0, v19

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v50

    if-eqz v70, :cond_2140

    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v64

    :goto_20d8
    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_2143

    cmp-long v6, v50, v230

    if-eqz v6, :cond_20ed

    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "blamed realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20ed
    move-wide/from16 v0, v50

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v64, v6

    if-nez v6, :cond_210b

    if-lez v67, :cond_2127

    :cond_210b
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v64

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2127
    :goto_2127
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    add-int/lit8 v135, v135, 0x1

    goto/16 :goto_205c

    :cond_2136
    move/from16 v0, v121

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2093

    :cond_213d
    const/16 v67, 0x0

    goto :goto_20c6

    :cond_2140
    const-wide/16 v64, 0x0

    goto :goto_20d8

    :cond_2143
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2127

    :cond_214a
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2127

    :cond_2151
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Vibrator"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Foreground activities"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    const-string/jumbo v44, "Foreground services"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v240, v240, v6

    const-wide/16 v228, 0x0

    const/16 v134, 0x0

    :goto_219a
    const/4 v6, 0x6

    move/from16 v0, v134

    if-ge v0, v6, :cond_21e7

    move-object/from16 v0, v238

    move/from16 v1, v134

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v214

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-lez v6, :cond_21e4

    add-long v228, v228, v214

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v134

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v214

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v240, 0x1

    :cond_21e4
    add-int/lit8 v134, v134, 0x1

    goto :goto_219a

    :cond_21e7
    const-wide/16 v6, 0x0

    cmp-long v6, v228, v6

    if-lez v6, :cond_220f

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Total running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1f4

    add-long v6, v6, v228

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_220f
    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    move-wide/16 v258, v0

    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v210

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v258

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2230

    const-wide/16 v6, 0x0

    cmp-long v6, v210, v6

    if-lez v6, :cond_225e

    :cond_2230
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Total cpu time: u="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v258

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "s="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v210, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_225e
    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v92

    if-eqz v92, :cond_2293

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    Total cpu time per freq:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v127, 0x0

    :goto_2274
    move-object/from16 v0, v92

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_228a

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v92, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v127, v127, 0x1

    goto :goto_2274

    :cond_228a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2293
    move-object/from16 v0, v238

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v195

    if-eqz v195, :cond_22c8

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "    Total screen-off cpu time per freq:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v127, 0x0

    :goto_22a9
    move-object/from16 v0, v195

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_22bf

    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v195, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v127, v127, 0x1

    goto :goto_22a9

    :cond_22bf
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22c8
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v184

    invoke-virtual/range {v184 .. v184}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v133, v6, -0x1

    :goto_22d2
    if-ltz v133, :cond_2472

    move-object/from16 v0, v184

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v0

    move-wide/16 v260, v0

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v212

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v116

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v208

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v172

    move-object/from16 v0, v186

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v170

    move/from16 v0, p4

    if-nez v0, :cond_244c

    invoke-virtual/range {v186 .. v186}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v173

    :goto_2319
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v260

    cmp-long v6, v0, v6

    if-nez v6, :cond_2327

    const-wide/16 v6, 0x0

    cmp-long v6, v212, v6

    if-eqz v6, :cond_2450

    :cond_2327
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Proc "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v184

    move/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      CPU: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v260

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v212

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "krn ; "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v116

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "fg"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v208, :cond_2379

    if-eqz v172, :cond_2462

    :cond_2379
    :goto_2379
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v125, 0x0

    if-eqz v208, :cond_239b

    const/16 v125, 0x1

    move/from16 v0, v208

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " starts"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_239b
    if-eqz v172, :cond_23b2

    if-eqz v125, :cond_23a5

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23a5
    const/16 v125, 0x1

    move/from16 v0, v172

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " crashes"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23b2
    if-eqz v170, :cond_23c7

    if-eqz v125, :cond_23bc

    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23bc
    move/from16 v0, v170

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " anrs"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23c7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v103, 0x0

    :goto_23d2
    move/from16 v0, v103

    move/from16 v1, v173

    if-ge v0, v1, :cond_246f

    move-object/from16 v0, v186

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v115

    if-eqz v115, :cond_2449

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      * Killed for "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v115

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2466

    const-string/jumbo v6, "cpu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_23fc
    const-string/jumbo v6, " use: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v6, " over "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_2449

    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v6, v12

    move-object/from16 v0, v115

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, "%)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2449
    add-int/lit8 v103, v103, 0x1

    goto :goto_23d2

    :cond_244c
    const/16 v173, 0x0

    goto/16 :goto_2319

    :cond_2450
    const-wide/16 v6, 0x0

    cmp-long v6, v116, v6

    if-nez v6, :cond_2327

    if-nez v208, :cond_2327

    if-nez v173, :cond_2327

    if-nez v172, :cond_2327

    if-nez v170, :cond_2327

    :goto_245e
    add-int/lit8 v133, v133, -0x1

    goto/16 :goto_22d2

    :cond_2462
    if-eqz v170, :cond_23c7

    goto/16 :goto_2379

    :cond_2466
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_23fc

    :cond_246f
    const/16 v240, 0x1

    goto :goto_245e

    :cond_2472
    invoke-virtual/range {v238 .. v238}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v175

    invoke-virtual/range {v175 .. v175}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v132, v6, -0x1

    :goto_247c
    if-ltz v132, :cond_25ae

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Apk "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v175

    move/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v59, 0x0

    move-object/from16 v0, v175

    move/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v185

    check-cast v185, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v141, v6, -0x1

    :goto_24b6
    if-ltz v141, :cond_24fc

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      Wakeup alarm "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v58

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v58

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v6, " times"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v59, 0x1

    add-int/lit8 v141, v141, -0x1

    goto :goto_24b6

    :cond_24fc
    invoke-virtual/range {v185 .. v185}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v203

    invoke-virtual/range {v203 .. v203}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v136, v6, -0x1

    :goto_2506
    if-ltz v136, :cond_259b

    move-object/from16 v0, v203

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v0, v205

    move-wide/from16 v1, v62

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v206

    move-object/from16 v0, v205

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v208

    move-object/from16 v0, v205

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v145

    const-wide/16 v6, 0x0

    cmp-long v6, v206, v6

    if-nez v6, :cond_2534

    if-eqz v208, :cond_2598

    :cond_2534
    :goto_2534
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      Service "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v203

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Created for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v206, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "uptime\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Starts: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v208

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ", launches: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v145

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v59, 0x1

    :cond_2594
    add-int/lit8 v136, v136, -0x1

    goto/16 :goto_2506

    :cond_2598
    if-eqz v145, :cond_2594

    goto :goto_2534

    :cond_259b
    if-nez v59, :cond_25a8

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_25a8
    const/16 v240, 0x1

    add-int/lit8 v132, v132, -0x1

    goto/16 :goto_247c

    :cond_25ae
    if-nez v240, :cond_1504

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1504

    :cond_25bd
    return-void

    :pswitch_data_25be
    .packed-switch 0x1
        :pswitch_10db
        :pswitch_10bd
        :pswitch_1129
        :pswitch_109f
        :pswitch_10d1
        :pswitch_1095
        :pswitch_111f
        :pswitch_10a9
        :pswitch_10c7
        :pswitch_1115
        :pswitch_10fa
        :pswitch_10b3
    .end packed-switch
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_44

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_66

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_66
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .registers 12

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_b

    const-string/jumbo v1, "--%"

    return-object v1

    :cond_b
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMahDischarge(I)J
.end method

.method public abstract getMahDischargeScreenDoze(I)J
.end method

.method public abstract getMahDischargeScreenOff(I)J
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .registers 1

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method

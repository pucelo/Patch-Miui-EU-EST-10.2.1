.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field private static METRIC_AM:Ljava/lang/String; = null

.field private static METRIC_BT:Ljava/lang/String; = null

.field private static METRIC_NFC:Ljava/lang/String; = null

.field private static METRIC_PM:Ljava/lang/String; = null

.field private static METRIC_RADIO:Ljava/lang/String; = null

.field private static METRIC_RADIOS:Ljava/lang/String; = null

.field private static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field private static METRIC_SM:Ljava/lang/String; = null

.field private static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0xfa

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Lmiui/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static final sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_BT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_NFC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/ArrayMap;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic -get7()Lcom/android/server/power/ShutdownThread;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -wrap0()Landroid/util/TimingsTraceLog;
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "sys.vendor.shutdown.waittime"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/power/ShutdownThread;->MAX_SHUTDOWN_WAIT_TIME:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_bt"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_BT:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_nfc"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_NFC:Ljava/lang/String;

    const-string/jumbo v0, "shutdown_storage_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SM:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 7

    const/4 v5, 0x0

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v3, "Shutdown sequence already running, returning."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_90

    monitor-exit v2

    return-void

    :cond_13
    const/4 v1, 0x1

    :try_start_14
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_90

    monitor-exit v2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v5, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_34
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "ShutdownThread-cpu"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_53} :catch_93

    :goto_53
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v5, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_81

    :try_start_61
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "ShutdownThread-screen"

    const/16 v4, 0x1a

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_81
    .catch Ljava/lang/SecurityException; {:try_start_61 .. :try_end_81} :catch_a2

    :cond_81
    :goto_81
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v2, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v2}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownThread;->start()V

    return-void

    :catchall_90
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_93
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "No permission to acquire wake lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v5, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_53

    :catch_a2
    move-exception v0

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "No permission to acquire wake lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v5, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_81
.end method

.method private static metricEnded(Ljava/lang/String;)V
    .registers 9

    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static metricStarted(Ljava/lang/String;)V
    .registers 7

    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static newTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 16

    const-string/jumbo v10, "vendor.peripheral.shutdown_critical_list"

    const-string/jumbo v11, "ERROR"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ERROR"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ed

    const-string/jumbo v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Shutdown critical subsyslist is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Waiting for a maximum of 10000ms"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v2, 0x1

    array-length v4, v3

    :cond_47
    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v4, :cond_7c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vendor.peripheral."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ERROR"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "ONLINE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    const/4 v2, 0x0

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_7c
    if-nez v2, :cond_85

    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v9, v9, 0x1

    :cond_85
    if-nez v2, :cond_8b

    const/16 v10, 0x64

    if-lt v9, v10, :cond_47

    :cond_8b
    if-nez v2, :cond_e4

    const/4 v1, 0x0

    :goto_8e
    array-length v10, v3

    if-ge v1, v10, :cond_ed

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vendor.peripheral."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "ERROR"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "ONLINE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    const-string/jumbo v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Subsystem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "did not shut down within timeout"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_e4
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Vendor subsystem(s) shutdown successful"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    if-eqz p1, :cond_123

    const-string/jumbo v10, "ShutdownThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Rebooting, reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Reboot failed, will attempt shutdown instead"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_116
    :goto_116
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Performing low-level shutdown..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void

    :cond_123
    if-eqz p0, :cond_116

    invoke-static {}, Lcom/android/server/power/ShutdownThreadInjector;->needVibrator()Z

    move-result v10

    if-eqz v10, :cond_116

    new-instance v8, Landroid/os/SystemVibrator;

    invoke-direct {v8, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const-wide/16 v10, 0x1f4

    :try_start_132
    sget-object v12, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_137} :catch_13f

    :goto_137
    const-wide/16 v10, 0x1f4

    :try_start_139
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13c
    .catch Ljava/lang/InterruptedException; {:try_start_139 .. :try_end_13c} :catch_13d

    goto :goto_116

    :catch_13d
    move-exception v7

    goto :goto_116

    :catch_13f
    move-exception v0

    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Failed to vibrate during shutdown."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_137
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method private static saveMetrics(Z)V
    .registers 16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reboot:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_53

    const-string/jumbo v9, "y"

    :goto_10
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v5, :cond_6b

    sget-object v9, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v9, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_57

    const-string/jumbo v9, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "metricEnded wasn\'t called for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_53
    const-string/jumbo v9, "n"

    goto :goto_10

    :cond_57
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v12, 0x3a

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_6b
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/shutdown-metrics.tmp"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    :try_start_76
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7b} :catch_ae
    .catchall {:try_start_76 .. :try_end_7b} :catchall_ca

    :try_start_7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_88} :catch_cf
    .catchall {:try_start_7b .. :try_end_88} :catchall_cc

    const/4 v7, 0x1

    if-eqz v2, :cond_8e

    :try_start_8b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8e} :catch_aa
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    :cond_8e
    :goto_8e
    if-eqz v12, :cond_ac

    :try_start_90
    throw v12
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_91} :catch_91

    :catch_91
    move-exception v0

    move-object v1, v2

    :goto_93
    const-string/jumbo v9, "ShutdownThread"

    const-string/jumbo v12, "Cannot save shutdown metrics"

    invoke-static {v9, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9c
    if-eqz v7, :cond_a9

    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "/data/system/shutdown-metrics.txt"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_a9
    return-void

    :catch_aa
    move-exception v12

    goto :goto_8e

    :cond_ac
    move-object v1, v2

    goto :goto_9c

    :catch_ae
    move-exception v9

    :goto_af
    :try_start_af
    throw v9
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_b0

    :catchall_b0
    move-exception v12

    move-object v14, v12

    move-object v12, v9

    move-object v9, v14

    :goto_b4
    if-eqz v1, :cond_b9

    :try_start_b6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b9} :catch_be
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bc

    :cond_b9
    :goto_b9
    if-eqz v12, :cond_c9

    :try_start_bb
    throw v12

    :catch_bc
    move-exception v0

    goto :goto_93

    :catch_be
    move-exception v13

    if-nez v12, :cond_c3

    move-object v12, v13

    goto :goto_b9

    :cond_c3
    if-eq v12, v13, :cond_b9

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b9

    :cond_c9
    throw v9
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_ca} :catch_bc

    :catchall_ca
    move-exception v9

    goto :goto_b4

    :catchall_cc
    move-exception v9

    move-object v1, v2

    goto :goto_b4

    :catch_cf
    move-exception v9

    move-object v1, v2

    goto :goto_af
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9

    const v7, 0x10405d4

    const v6, 0x1040547

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_81

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v3, "recovery-update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_2d
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const v1, 0x104055f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_6c

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x104055d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_58
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimOrDialog(Landroid/content/Context;Z)V

    return-object v0

    :cond_6a
    move v1, v2

    goto :goto_2d

    :cond_6c
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_73

    return-object v5

    :cond_73
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x104055e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_58

    :cond_81
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_c0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v3, "recovery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_58

    :cond_a8
    const v1, 0x104055b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104055a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_58

    :cond_c0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_c7

    return-object v5

    :cond_c7
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_58
.end method

.method private static showSysuiReboot()Z
    .registers 4

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Attempting to use SysUI shutdown UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "SysUI handling shutdown UI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_26

    const/4 v2, 0x1

    return v2

    :catch_26
    move-exception v0

    :cond_27
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "SysUI is unavailable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method private static shutdownInner(Landroid/content/Context;Z)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_16

    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_9a

    monitor-exit v4

    return-void

    :cond_16
    monitor-exit v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_9d

    const v2, 0x1040557

    :goto_29
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_ac

    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    if-eqz v3, :cond_53

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_53
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_a8

    const v3, 0x1040558

    :goto_5f
    invoke-virtual {v4, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    const v5, 0x1040013

    invoke-virtual {v3, v5, v4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3, v0}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    :goto_99
    return-void

    :catchall_9a
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_9d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_a4

    const v2, 0x10405d3

    goto :goto_29

    :cond_a4
    const v2, 0x10405d2

    goto :goto_29

    :cond_a8
    const v3, 0x1040547

    goto :goto_5f

    :cond_ac
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_99
.end method

.method private shutdownRadios(I)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    const/4 v1, 0x1

    new-array v5, v1, [Z

    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    int-to-long v8, p1

    :try_start_15
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_27

    :goto_18
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_26

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void

    :catch_27
    move-exception v6

    goto :goto_18
.end method

.method private uncrypt()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Calling uncrypt and monitoring the progress..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-array v0, v11, [Z

    aput-boolean v10, v0, v10

    new-instance v3, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/32 v8, 0xdbba0

    :try_start_1f
    invoke-virtual {v3, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_51

    :goto_22
    aget-boolean v7, v0, v10

    if-nez v7, :cond_50

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Timed out waiting for uncrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x64

    const-string/jumbo v7, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v9, 0x384

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_4b
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v7, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_53

    :cond_50
    :goto_50
    return-void

    :catch_51
    move-exception v6

    goto :goto_22

    :catch_53
    move-exception v1

    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Failed to write timeout message to uncrypt status"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method


# virtual methods
.method actionDone()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 31

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v24

    const-string/jumbo v2, "SystemServerShutdown"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1fc

    const-string/jumbo v2, "1"

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_201

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    :goto_2e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string/jumbo v2, "SendShutdownBroadcast"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x11000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_91
    :try_start_91
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_ac

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v20, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_206

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_91 .. :try_end_ac} :catchall_23a

    :cond_ac
    monitor-exit v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_b8

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_b8
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ShutdownActivityManager"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    if-eqz v11, :cond_e8

    const/16 v2, 0x2710

    :try_start_e5
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_e8} :catch_23d

    :cond_e8
    :goto_e8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_f3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_f3
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ShutdownPackageManager"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/PackageManagerService;

    if-eqz v22, :cond_11f

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_11f
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_12a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_12a
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    const-string/jumbo v2, "ShutdownRadios"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_152

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_152
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    new-instance v17, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down StorageManagerService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ShutdownStorageManager"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v2, Lcom/android/server/power/ShutdownThread;->MAX_SHUTDOWN_WAIT_TIME:I

    int-to-long v8, v2

    add-long v18, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_18c
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v26

    if-eqz v26, :cond_240

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1a0} :catch_24b
    .catchall {:try_start_18c .. :try_end_1a0} :catchall_257

    :goto_1a0
    :try_start_1a0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1bb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v18, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_25a

    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "StorageManager shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_1a0 .. :try_end_1bb} :catchall_257

    :cond_1bb
    monitor-exit v4

    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SM:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_1e3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    const-string/jumbo v2, "vold.miui.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_1e3
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->saveMetrics(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    :cond_1fc
    const-string/jumbo v2, "0"

    goto/16 :goto_24

    :cond_201
    const-string/jumbo v2, ""

    goto/16 :goto_2e

    :cond_206
    :try_start_206
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_228

    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    const-wide v28, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v25, v0

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_228
    .catchall {:try_start_206 .. :try_end_228} :catchall_23a

    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0xfa

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_235
    .catch Ljava/lang/InterruptedException; {:try_start_228 .. :try_end_235} :catch_237
    .catchall {:try_start_228 .. :try_end_235} :catchall_23a

    goto/16 :goto_91

    :catch_237
    move-exception v16

    goto/16 :goto_91

    :catchall_23a
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_23d
    move-exception v14

    goto/16 :goto_e8

    :cond_240
    :try_start_240
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "StorageManagerService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_249} :catch_24b
    .catchall {:try_start_240 .. :try_end_249} :catchall_257

    goto/16 :goto_1a0

    :catch_24b
    move-exception v15

    :try_start_24c
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during StorageManagerService shutdown"

    invoke-static {v2, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_255
    .catchall {:try_start_24c .. :try_end_255} :catchall_257

    goto/16 :goto_1a0

    :catchall_257
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_25a
    :try_start_25a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_27f

    sget v2, Lcom/android/server/power/ShutdownThread;->MAX_SHUTDOWN_WAIT_TIME:I

    int-to-long v8, v2

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    sget v2, Lcom/android/server/power/ShutdownThread;->MAX_SHUTDOWN_WAIT_TIME:I

    int-to-double v0, v2

    move-wide/from16 v28, v0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x12

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_27f
    .catchall {:try_start_25a .. :try_end_27f} :catchall_257

    :cond_27f
    :try_start_27f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0xfa

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_28c
    .catch Ljava/lang/InterruptedException; {:try_start_27f .. :try_end_28c} :catch_28e
    .catchall {:try_start_27f .. :try_end_28c} :catchall_257

    goto/16 :goto_1a0

    :catch_28e
    move-exception v16

    goto/16 :goto_1a0
.end method

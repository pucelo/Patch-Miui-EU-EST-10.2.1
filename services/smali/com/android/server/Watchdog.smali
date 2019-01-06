.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$WorkerHandler;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;

.field private static final sWatchdogEnhanced:Z


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field private final mDumpCompleteLock:Ljava/lang/Object;

.field private mDumpCompleted:Ljava/lang/Boolean;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialStack:Ljava/io/File;

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private volatile mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Lcom/android/server/Watchdog;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/Watchdog;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/Watchdog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/Watchdog;Ljava/io/File;)Ljava/io/File;
    .registers 2

    iput-object p1, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/Watchdog;ZLjava/util/ArrayList;)Ljava/io/File;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/Watchdog;->dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/Watchdog;)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/Watchdog;C)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/server/Watchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/system/bin/audioserver"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/system/bin/cameraserver"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/system/bin/drmserver"

    aput-object v1, v0, v5

    const-string/jumbo v1, "/system/bin/mediadrmserver"

    aput-object v1, v0, v6

    const-string/jumbo v1, "/system/bin/mediaserver"

    aput-object v1, v0, v7

    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/netd"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "media.extractor"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "media.metrics"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "media.codec"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "statsd"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.hardware.audio@2.0::IDevicesFactory"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.hardware.bluetooth@1.0::IBluetoothHci"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.hardware.camera.provider@2.4::ICameraProvider"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.hardware.graphics.composer@2.1::IComposer"

    aput-object v1, v0, v6

    const-string/jumbo v1, "android.hardware.media.omx@1.0::IOmx"

    aput-object v1, v0, v7

    const-string/jumbo v1, "android.hardware.sensors@1.0::ISensors"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.hardware.vr@1.0::IVr"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    const-string/jumbo v0, "persist.sys.watchdog_enhanced"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    const/4 v7, 0x0

    const-wide/32 v4, 0xea60

    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    sget-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    sget-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v0, :cond_a8

    invoke-direct {p0}, Lcom/android/server/Watchdog;->ensureWorkerHandlerReady()V

    :cond_a8
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 9

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_11

    :catch_20
    move-exception v0

    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Exception while writing watchdog traces to new file!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2d
    return-void

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_20

    goto :goto_2d
.end method

.method private binderStateRead()V
    .registers 7

    :try_start_0
    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Collect Binder Transaction Status Information"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/kernel/debug/binder/state"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v4, "/data/anr/BinderTraces.txt"

    invoke-direct {v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    :goto_19
    invoke-virtual {v0}, Ljava/io/FileReader;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2f

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_19

    :catch_24
    move-exception v3

    const-string/jumbo v4, "Watchdog"

    const-string/jumbo v5, "Failed to collect state file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_24

    goto :goto_2e
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .registers 6

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    return-object v2

    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    xor-int/lit8 v12, p1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v12, v0, v14, v15, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v12, "1"

    const-string/jumbo v13, "ro.debuggable"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    :cond_21
    const-wide/16 v12, 0x7d0

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getTracesDirPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_35

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b0

    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getTracesFilePath()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "_SystemServer_WDT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v10, :cond_98

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_98

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v12, -0x1

    if-eq v12, v4, :cond_9e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8f
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object v10, v5

    :cond_98
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v12

    :cond_9e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8f

    :cond_b0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "traces_SystemServer_WDT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_pid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_ee
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v12

    if-eqz v12, :cond_155

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x180

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    if-eqz v12, :cond_15b

    const-string/jumbo v12, "Watchdog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "First set of traces taken from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    :goto_130
    if-eqz v2, :cond_170

    const-string/jumbo v12, "Watchdog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Second set of traces taken from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_155} :catch_165

    :cond_155
    :goto_155
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    return-object v11

    :cond_15b
    :try_start_15b
    const-string/jumbo v12, "Watchdog"

    const-string/jumbo v13, "First set of traces are empty!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_164} :catch_165

    goto :goto_130

    :catch_165
    move-exception v3

    const-string/jumbo v12, "Watchdog"

    const-string/jumbo v13, "Exception creating Watchdog dump file:"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_155

    :cond_170
    :try_start_170
    const-string/jumbo v12, "Watchdog"

    const-string/jumbo v13, "Second set of traces are empty!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_179} :catch_165

    goto :goto_155
.end method

.method private ensureDumpCompletedOrKernelReboot()V
    .registers 13

    const-wide/16 v10, 0x0

    const-wide/32 v4, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long v2, v6, v8

    :goto_e
    invoke-direct {p0}, Lcom/android/server/Watchdog;->isDumpCompleted()Z

    move-result v1

    if-nez v1, :cond_2c

    cmp-long v1, v4, v10

    if-lez v1, :cond_2c

    const-wide/16 v6, 0x3e8

    :try_start_1a
    invoke-virtual {p0, v6, v7}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_24

    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_e

    :catch_24
    move-exception v0

    const-string/jumbo v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :cond_2c
    cmp-long v1, v4, v10

    if-gtz v1, :cond_6d

    iget-object v6, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_33
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6e

    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v7, "Triggering SysRq for system_server watchdog"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v1, 0x6c

    invoke-direct {p0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x181

    const/4 v9, 0x0

    invoke-static {v8, v1, v7, v9}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;
    :try_end_67
    .catchall {:try_start_33 .. :try_end_67} :catchall_70

    monitor-exit v6

    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    :cond_6d
    return-void

    :cond_6e
    monitor-exit v6

    return-void

    :catchall_70
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private ensureWorkerHandlerReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "watchdogWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/Watchdog$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$WorkerHandler;-><init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    :cond_20
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getInterestingNativePids()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v3, 0x0

    array-length v4, v1

    :goto_17
    if-ge v3, v4, :cond_25

    aget v0, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    return-object v2
.end method

.method private getTracesDirPath()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "dalvik.vm.stack-trace-dir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTracesFilePath()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDumpCompleted()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method

.method private sendMessage(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/Watchdog;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/Watchdog$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public getInterestingHalPids()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v6, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    sget-object v6, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v7, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget v6, v2, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_11

    :catch_36
    move-exception v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    return-object v6

    :cond_3d
    :try_start_3d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_36

    return-object v6
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_25
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public run()V
    .registers 36

    const/16 v29, 0x0

    :goto_2
    const/4 v10, 0x0

    monitor-enter p0

    const-wide/16 v26, 0x7530

    const/16 v17, 0x0

    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    :goto_32
    const-wide/16 v30, 0x0

    cmp-long v30, v26, v30

    if-lez v30, :cond_65

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_62

    move-result v30

    if-eqz v30, :cond_3f

    const/4 v10, 0x2

    :cond_3f
    :try_start_3f
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_46} :catch_58
    .catchall {:try_start_3f .. :try_end_46} :catchall_62

    :goto_46
    :try_start_46
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v30

    if-eqz v30, :cond_4d

    const/4 v10, 0x2

    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v24

    const-wide/16 v32, 0x7530

    sub-long v26, v32, v30

    goto :goto_32

    :catch_58
    move-exception v13

    const-string/jumbo v30, "Watchdog"

    move-object/from16 v0, v30

    invoke-static {v0, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_62

    goto :goto_46

    :catchall_62
    move-exception v30

    monitor-exit p0

    throw v30

    :cond_65
    const/4 v15, 0x0

    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    move-object/from16 v30, v0

    if-eqz v30, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v15

    :cond_78
    if-nez v15, :cond_166

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_62

    move-result v28

    if-nez v28, :cond_85

    const/16 v29, 0x0

    :cond_82
    :goto_82
    monitor-exit p0

    goto/16 :goto_2

    :cond_85
    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_82

    const/16 v30, 0x2

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_fd

    if-nez v29, :cond_82

    :try_start_97
    sget-boolean v30, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v30, :cond_c8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v30

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x180

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->sendMessage(I)V
    :try_end_c3
    .catchall {:try_start_97 .. :try_end_c3} :catchall_62

    const/16 v29, 0x1

    monitor-exit p0

    goto/16 :goto_2

    :cond_c8
    :try_start_c8
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v30

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    const/16 v29, 0x1

    goto :goto_82

    :cond_fd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v23

    :goto_107
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_10b
    .catchall {:try_start_c8 .. :try_end_10b} :catchall_62

    monitor-exit p0

    const/16 v30, 0xaf2

    move/from16 v0, v30

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    sget-boolean v30, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v30, :cond_171

    if-eqz v29, :cond_16e

    const/16 v30, 0x2

    :goto_11d
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->sendMessage(ILjava/lang/String;)V

    :goto_126
    const-string/jumbo v30, "persist.sys.crashOnWatchdog"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_13a

    const/16 v30, 0x63

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    :cond_13a
    monitor-enter p0

    :try_start_13b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_13f
    .catchall {:try_start_13b .. :try_end_13f} :catchall_1f2

    monitor-exit p0

    if-eqz v8, :cond_1f6

    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Reporting stuck state to activity controller"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14b
    const-string/jumbo v30, "Service dumps disabled due to hung system process."

    invoke-static/range {v30 .. v30}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_1f6

    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Activity controller requested to coninue to wait"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_162} :catch_1f5

    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_166
    :try_start_166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v23, "Open FD high water mark reached"
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_62

    goto :goto_107

    :cond_16e
    const/16 v30, 0x1

    goto :goto_11d

    :cond_171
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v30, v0

    if-lez v30, :cond_19e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19e
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/Watchdog;->dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v19

    new-instance v11, Lcom/android/server/Watchdog$1;

    const-string/jumbo v30, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    const-wide/16 v30, 0x7d0

    :try_start_1bd
    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1c2
    .catch Ljava/lang/InterruptedException; {:try_start_1bd .. :try_end_1c2} :catch_1f0

    :goto_1c2
    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Triggering SysRq for system_server watchdog"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v30, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v31

    move/from16 v1, v30

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    goto/16 :goto_126

    :catch_1f0
    move-exception v18

    goto :goto_1c2

    :catchall_1f2
    move-exception v30

    monitor-exit p0

    throw v30

    :catch_1f5
    move-exception v12

    :cond_1f6
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v30

    if-eqz v30, :cond_1fd

    const/4 v10, 0x2

    :cond_1fd
    const/16 v30, 0x2

    move/from16 v0, v30

    if-lt v10, v0, :cond_210

    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20c
    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_210
    if-lez v10, :cond_21c

    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20c

    :cond_21c
    if-nez v6, :cond_228

    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20c

    :cond_228
    const-string/jumbo v30, "Watchdog"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_248
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_2c5

    const-string/jumbo v31, "Watchdog"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v32, " stack trace:"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v30, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v31, v0

    :goto_29b
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_2c2

    aget-object v14, v22, v30

    const-string/jumbo v32, "Watchdog"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "    at "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v30, v30, 0x1

    goto :goto_29b

    :cond_2c2
    add-int/lit8 v17, v17, 0x1

    goto :goto_248

    :cond_2c5
    const-string/jumbo v30, "Watchdog"

    const-string/jumbo v31, "*** GOODBYE!"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v30, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v30, :cond_2d7

    monitor-enter p0

    :try_start_2d3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->ensureDumpCompletedOrKernelReboot()V
    :try_end_2d6
    .catchall {:try_start_2d3 .. :try_end_2d6} :catchall_2e5

    monitor-exit p0

    :cond_2d7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/Process;->killProcess(I)V

    const/16 v30, 0xa

    invoke-static/range {v30 .. v30}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_20c

    :catchall_2e5
    move-exception v30

    monitor-exit p0

    throw v30
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

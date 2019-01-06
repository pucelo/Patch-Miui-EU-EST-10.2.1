.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303ca

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LCD_FILENAME1:Ljava/lang/String; = "/proc/tp_lockdown_info"

.field private static final LCD_FILENAME2:Ljava/lang/String; = "/sys/bus/i2c/devices/3-005d/tp_lock_down_info"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_SystemServer-mthref-0()V
    .registers 0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method private createSystemContext()V
    .registers 5

    const v3, 0x10303ca

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static synthetic lambda$-com_android_server_SystemServer_33182()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_SystemServer_38402()V
    .registers 6

    :try_start_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "SecondaryZygotePreload"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string/jumbo v2, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    invoke-direct {v1, v2, v4, v5}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v2, "SecondaryZygotePreload"

    invoke-virtual {v1, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Unable to preload default resources"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Exception preloading default resources"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method static synthetic lambda$-com_android_server_SystemServer_42824()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    sget-wide v0, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInjector;->markSystemRun(J)V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, "sys.shutdown.requested"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_94

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_94

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_6e

    const/4 v5, 0x1

    :goto_1d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_70

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2b
    if-eqz v4, :cond_7d

    const-string/jumbo v8, "recovery-update"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7d

    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/cache/recovery/uncrypt_file"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7d

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_47
    invoke-static {v3, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_72

    move-result-object v1

    :goto_4b
    if-eqz v1, :cond_7d

    const-string/jumbo v8, "/data"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7d

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/cache/recovery/block.map"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7d

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v9, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6e
    const/4 v5, 0x0

    goto :goto_1d

    :cond_70
    const/4 v4, 0x0

    goto :goto_2b

    :catch_72
    move-exception v0

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v9, "Error reading uncrypt package file"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :cond_7d
    new-instance v6, Lcom/android/server/SystemServer$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_94
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .registers 13

    const-wide/32 v10, 0x5265c00

    const/4 v8, 0x0

    :try_start_4
    const-string/jumbo v5, "InitBeforeStartServices"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-gez v5, :cond_21

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "System clock is before 1970; setting to 1970."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v6, 0x5265c00

    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_21
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_42

    :cond_30
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Timezone not set; setting to GMT."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "persist.sys.timezone"

    const-string/jumbo v6, "GMT"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-string/jumbo v5, "persist.sys.language"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "persist.sys.locale"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.language"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.country"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.localevar"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Entered the Android system server!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v4, v6

    const/16 v5, 0xbc2

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v5, :cond_9a

    const-string/jumbo v5, "boot_system_server_init"

    const/4 v6, 0x0

    invoke-static {v6, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9a
    const-string/jumbo v5, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->writeColorInfo()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    const v6, 0x3f4ccccd    # 0.8f

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/Environment;->setUserRequired(Z)V

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v5, 0x1f

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string/jumbo v5, "android_servers"

    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    new-instance v5, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    const-class v5, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_101
    .catchall {:try_start_4 .. :try_end_101} :catchall_176

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_104
    const-string/jumbo v5, "StartServices"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_116} :catch_17b
    .catchall {:try_start_104 .. :try_end_116} :catchall_18f

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_128

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_128
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v5, :cond_161

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_161

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    long-to-int v4, v6

    const-string/jumbo v5, "boot_system_server_ready"

    invoke-static {v8, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const v0, 0xea60

    const v5, 0xea60

    if-le v4, v5, :cond_161

    const-string/jumbo v5, "SystemServerTiming"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_161
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Entered the Android system server main thread loop."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Main thread loop unexpectedly exited"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_176
    move-exception v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v5

    :catch_17b
    move-exception v1

    :try_start_17c
    const-string/jumbo v5, "System"

    const-string/jumbo v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "System"

    const-string/jumbo v6, "************ Failure starting system services"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_18f
    .catchall {:try_start_17c .. :try_end_18f} :catchall_18f

    :catchall_18f
    move-exception v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v5
.end method

.method private startBootstrapServices()V
    .registers 16

    const/4 v14, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v11, "Reading configuration..."

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ReadingSystemConfig"

    const-string/jumbo v8, "ReadingSystemConfig"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v8

    sget-object v11, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v12, "ReadingSystemConfig"

    invoke-virtual {v8, v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "StartInstaller"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/pm/Installer;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "DeviceIdentifiersPolicyService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "StartActivityManager"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "StartPowerManager"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "InitPowerManagement"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "config.disable_noncore"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_a8

    const-string/jumbo v8, "StartRecoverySystemService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a8
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    const-string/jumbo v8, "StartLightsService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "StartDisplayManager"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "WaitForDisplay"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v11, 0x64

    invoke-virtual {v8, v11}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e3

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v11, "Detected encryption in progress - only parsing core apps"

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_117

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v11, "Regionalization Service"

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v5}, Lcom/android/server/os/RegionalizationService;-><init>()V

    const-string/jumbo v8, "regionalization"

    invoke-static {v8, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_117
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v8, :cond_126

    const-string/jumbo v8, "boot_package_manager_init_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-static {v14, v8, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_126
    const-string/jumbo v8, "StartPackageManagerService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v11, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v8, :cond_1f9

    move v8, v9

    :goto_137
    iget-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v11, v4, v8, v9}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/SystemServerInjector;->markPmsScan(JJ)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v8, :cond_170

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_170

    const-string/jumbo v8, "boot_package_manager_init_ready"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    long-to-int v9, v12

    invoke-static {v14, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_170
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v8, :cond_18d

    const-string/jumbo v8, "config.disable_otadexopt"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18d

    const-string/jumbo v8, "StartOtaDexOptService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_183
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8, v9}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_18a
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_18a} :catch_1fc
    .catchall {:try_start_183 .. :try_end_18a} :catchall_207

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_18d
    :goto_18d
    const-string/jumbo v8, "StartUserManagerService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "InitAttributerCache"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v8, "SetSystemProcess"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    const-string/jumbo v8, "StartOverlayManagerService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/om/OverlayManagerService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v8

    sget-object v9, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v10, "StartSensorService"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    return-void

    :cond_1e3
    const-string/jumbo v8, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fd

    const-string/jumbo v8, "SystemServer"

    const-string/jumbo v11, "Device encrypted - only parsing core apps"

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_fd

    :cond_1f9
    move v8, v10

    goto/16 :goto_137

    :catch_1fc
    move-exception v3

    :try_start_1fd
    const-string/jumbo v8, "starting OtaDexOptService"

    invoke-direct {p0, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_203
    .catchall {:try_start_1fd .. :try_end_203} :catchall_207

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_18d

    :catchall_207
    move-exception v8

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v8
.end method

.method private startCoreServices()V
    .registers 3

    const-string/jumbo v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 103

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v91, 0x0

    const/16 v87, 0x0

    const/16 v71, 0x0

    const/16 v76, 0x0

    const/16 v72, 0x0

    const/16 v30, 0x0

    const/16 v74, 0x0

    const/16 v83, 0x0

    const/16 v100, 0x0

    const/16 v81, 0x0

    const/16 v77, 0x0

    const/16 v25, 0x0

    const/16 v61, 0x0

    const/16 v89, 0x0

    const/16 v32, 0x0

    const/16 v22, 0x0

    const/16 v57, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string/jumbo v6, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    const-string/jumbo v6, "config.disable_mediaproj"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const-string/jumbo v6, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    const-string/jumbo v6, "config.disable_searchmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    const-string/jumbo v6, "config.disable_trustmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    const-string/jumbo v6, "config.disable_textservices"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    const-string/jumbo v6, "config.disable_consumerir"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string/jumbo v6, "config.disable_vrmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    const-string/jumbo v6, "config.disable_cameraservice"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string/jumbo v6, "config.enable_lefty"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    const-string/jumbo v6, "persist.vendor.wigig.enable"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_dc

    const-string/jumbo v6, "debug.crash_system"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_dc

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    :cond_dc
    :try_start_dc
    const-string/jumbo v23, "SecondaryZygotePreload"

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v8, "SecondaryZygotePreload"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v6, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "sec_key_att_app_id_provider"

    new-instance v7, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v7, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartKeyChainSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartSchedulingPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartTelecomLoaderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartTelephonyRegistry"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v90, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_149
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_149} :catch_1096

    :try_start_149
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v90

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v92, Lcom/android/server/VibratorService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1b1
    .catch Ljava/lang/RuntimeException; {:try_start_149 .. :try_end_1b1} :catch_109b

    :try_start_1b1
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v92

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v39, :cond_1d8

    const-string/jumbo v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v33, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_1cb
    .catch Ljava/lang/RuntimeException; {:try_start_1b1 .. :try_end_1cb} :catch_10a2

    :try_start_1cb
    const-string/jumbo v6, "consumer_ir"

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1d6
    .catch Ljava/lang/RuntimeException; {:try_start_1cb .. :try_end_1d6} :catch_10ab

    move-object/from16 v32, v33

    :cond_1d8
    :try_start_1d8
    const-string/jumbo v6, "StartAlarmManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "InitWatchdog"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v94

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v94

    invoke-virtual {v0, v4, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartInputManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/input/MiuiInputManagerService;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/server/input/MiuiInputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_20c
    .catch Ljava/lang/RuntimeException; {:try_start_1d8 .. :try_end_20c} :catch_10a2

    :try_start_20c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v7, "StartSensorService"

    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_def

    const/4 v6, 0x1

    :goto_22c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v9, Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {v9}, Lcom/android/server/policy/MiuiPhoneWindowManager;-><init>()V

    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v100

    const-string/jumbo v6, "window"

    move-object/from16 v0, v100

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "input"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v8, "StartHidlServices"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v52, :cond_270

    const-string/jumbo v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_270
    const-string/jumbo v6, "SetWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v62, :cond_df2

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b0
    const-string/jumbo v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2d4
    .catch Ljava/lang/RuntimeException; {:try_start_20c .. :try_end_2d4} :catch_e04

    move-object/from16 v89, v90

    move-object/from16 v91, v92

    :goto_2d8
    const/16 v85, 0x0

    const/16 v79, 0x0

    const/16 v63, 0x0

    const/16 v34, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_311

    const-string/jumbo v6, "StartInputMethodManagerLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartAccessibilityManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_303
    const-string/jumbo v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30e
    .catch Ljava/lang/Throwable; {:try_start_303 .. :try_end_30e} :catch_e58

    :goto_30e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_311
    const-string/jumbo v6, "MakeDisplayReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_317
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_31a
    .catch Ljava/lang/Throwable; {:try_start_317 .. :try_end_31a} :catch_e65

    :goto_31a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_369

    if-nez v48, :cond_369

    const-string/jumbo v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_369

    const-string/jumbo v6, "StartStorageManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_33e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_352
    .catch Ljava/lang/Throwable; {:try_start_33e .. :try_end_352} :catch_e72

    move-result-object v87

    :goto_353
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartStorageStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_35c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_366
    .catch Ljava/lang/Throwable; {:try_start_35c .. :try_end_366} :catch_e7f

    :goto_366
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_369
    const-string/jumbo v6, "StartUiModeManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_39e

    const-string/jumbo v6, "UpdatePackagesIfNeeded"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    :try_start_38b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_392
    .catch Ljava/lang/Throwable; {:try_start_38b .. :try_end_392} :catch_e8c

    :goto_392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v6, v7}, Lcom/android/server/SystemServerInjector;->markBootDexopt(JJ)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_39e
    const-string/jumbo v6, "PerformFstrimIfNeeded"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_3a4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_3ab
    .catch Ljava/lang/Throwable; {:try_start_3a4 .. :try_end_3ab} :catch_e99

    :goto_3ab
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_bbc

    if-nez v44, :cond_437

    const-string/jumbo v6, "StartLockSettingsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_3bd
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v6, "lock_settings"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_3d1
    .catch Ljava/lang/Throwable; {:try_start_3bd .. :try_end_3d1} :catch_ea6

    move-result-object v65

    :goto_3d2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v59, v6, 0x1

    if-eqz v59, :cond_3f9

    const-string/jumbo v6, "StartPersistentDataBlock"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3f9
    if-nez v59, :cond_401

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v6

    if-eqz v6, :cond_413

    :cond_401
    const-string/jumbo v6, "StartOemLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_413
    const-string/jumbo v6, "StartDeviceIdleController"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartDevicePolicyManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_437
    if-nez v49, :cond_455

    const-string/jumbo v6, "StartStatusBarManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_43f
    new-instance v86, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v86

    move-object/from16 v1, v100

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_448
    .catch Ljava/lang/Throwable; {:try_start_43f .. :try_end_448} :catch_eb3

    :try_start_448
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v86

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_450
    .catch Ljava/lang/Throwable; {:try_start_448 .. :try_end_450} :catch_1091

    move-object/from16 v85, v86

    :goto_452
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_455
    if-nez v44, :cond_469

    const-string/jumbo v6, "StartClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_469
    if-nez v42, :cond_480

    const-string/jumbo v6, "StartNetworkManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_471
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v71

    const-string/jumbo v6, "network_management"

    move-object/from16 v0, v71

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47d
    .catch Ljava/lang/Throwable; {:try_start_471 .. :try_end_47d} :catch_ec0

    :goto_47d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_480
    if-nez v44, :cond_498

    xor-int/lit8 v6, v50, 0x1

    if-eqz v6, :cond_498

    const-string/jumbo v6, "StartTextServicesManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_498
    if-nez v42, :cond_683

    const-string/jumbo v6, "StartNetworkScoreService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_4a0
    new-instance v75, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_4a7
    .catch Ljava/lang/Throwable; {:try_start_4a0 .. :try_end_4a7} :catch_ecd

    :try_start_4a7
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v75

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4af
    .catch Ljava/lang/Throwable; {:try_start_4a7 .. :try_end_4af} :catch_108c

    move-object/from16 v74, v75

    :goto_4b1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNetworkStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_4ba
    move-object/from16 v0, v71

    invoke-static {v4, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v76

    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v76

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c8
    .catch Ljava/lang/Throwable; {:try_start_4ba .. :try_end_4c8} :catch_eda

    :goto_4c8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNetworkPolicyManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_4d1
    new-instance v73, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v73

    move-object/from16 v1, v76

    move-object/from16 v2, v71

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_4e0
    .catch Ljava/lang/Throwable; {:try_start_4d1 .. :try_end_4e0} :catch_ee7

    :try_start_4e0
    const-string/jumbo v6, "netpolicy"

    move-object/from16 v0, v73

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e8
    .catch Ljava/lang/Throwable; {:try_start_4e0 .. :try_end_4e8} :catch_1087

    move-object/from16 v72, v73

    :goto_4ea
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartWifi"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartWifiScanning"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v45, :cond_528

    const-string/jumbo v6, "StartWifiRtt"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_528
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.aware"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ef4

    const-string/jumbo v6, "StartWifiAware"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_548
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.direct"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_568

    const-string/jumbo v6, "StartWifiP2P"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_568
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.lowpan"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_588

    const-string/jumbo v6, "StartLowpan"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_588
    if-eqz v56, :cond_613

    :try_start_58a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wigig Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v96, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/wigig-service.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v96

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    move-object/from16 v0, v96

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v97

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v97

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v98

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "wigigp2p"

    move-object/from16 v0, v98

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "com.qualcomm.qti.server.wigig.WigigService"

    move-object/from16 v0, v96

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v95

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v95

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v99

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Successfully loaded WigigService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "wigig"

    move-object/from16 v0, v99

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_613
    .catch Ljava/lang/Throwable; {:try_start_58a .. :try_end_613} :catch_eff

    :cond_613
    :goto_613
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_62d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_640

    :cond_62d
    const-string/jumbo v6, "StartEthernet"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_640
    const-string/jumbo v6, "StartConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_646
    new-instance v31, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v31

    move-object/from16 v1, v71

    move-object/from16 v2, v76

    move-object/from16 v3, v72

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_653
    .catch Ljava/lang/Throwable; {:try_start_646 .. :try_end_653} :catch_f0c

    :try_start_653
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v76

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v72

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_669
    .catch Ljava/lang/Throwable; {:try_start_653 .. :try_end_669} :catch_1082

    move-object/from16 v30, v31

    :goto_66b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNsdService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_674
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v83

    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v83

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_680
    .catch Ljava/lang/Throwable; {:try_start_674 .. :try_end_680} :catch_f19

    :goto_680
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_683
    if-nez v44, :cond_699

    const-string/jumbo v6, "StartUpdateLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_68b
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_696
    .catch Ljava/lang/Throwable; {:try_start_68b .. :try_end_696} :catch_f26

    :goto_696
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_699
    if-eqz v87, :cond_6af

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6af

    const-string/jumbo v6, "WaitForAsecScan"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6a9
    invoke-interface/range {v87 .. v87}, Landroid/os/storage/IStorageManager;->waitForAsecScan()V
    :try_end_6ac
    .catch Landroid/os/RemoteException; {:try_start_6a9 .. :try_end_6ac} :catch_f33

    :goto_6ac
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_6af
    const-string/jumbo v6, "StartNotificationManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v79

    move-object/from16 v0, v72

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartDeviceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v40, :cond_71e

    const-string/jumbo v6, "StartLocationManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6f0
    new-instance v64, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6f7
    .catch Ljava/lang/Throwable; {:try_start_6f0 .. :try_end_6f7} :catch_f36

    :try_start_6f7
    const-string/jumbo v6, "location"

    move-object/from16 v0, v64

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ff
    .catch Ljava/lang/Throwable; {:try_start_6f7 .. :try_end_6ff} :catch_107d

    move-object/from16 v63, v64

    :goto_701
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartCountryDetectorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_70a
    new-instance v35, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_711
    .catch Ljava/lang/Throwable; {:try_start_70a .. :try_end_711} :catch_f43

    :try_start_711
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_719
    .catch Ljava/lang/Throwable; {:try_start_711 .. :try_end_719} :catch_1078

    move-object/from16 v34, v35

    :goto_71b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_71e
    const-string/jumbo v6, "StartDisplayFeatureService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_724
    const-string/jumbo v6, "DisplayFeatureControl"

    new-instance v7, Lcom/android/server/DisplayFeatureControl;

    invoke-direct {v7, v4}, Lcom/android/server/DisplayFeatureControl;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72f
    .catch Ljava/lang/Throwable; {:try_start_724 .. :try_end_72f} :catch_f50

    :goto_72f
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v44, :cond_74e

    xor-int/lit8 v6, v46, 0x1

    if-eqz v6, :cond_74e

    const-string/jumbo v6, "StartSearchManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_74b
    .catch Ljava/lang/Throwable; {:try_start_741 .. :try_end_74b} :catch_f5d

    :goto_74b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_74e
    if-nez v44, :cond_770

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_770

    const-string/jumbo v6, "StartWallpaperManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_770
    const-string/jumbo v6, "StartAudioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.broadcastradio"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a1

    const-string/jumbo v6, "StartBroadcastRadioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_7a1
    if-nez v44, :cond_7d5

    const-string/jumbo v6, "StartDockObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d5

    const-string/jumbo v6, "StartThermalObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_7d5
    const-string/jumbo v6, "StartWiredAccessoryManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_7db
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v6, v4, v5}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_7e3
    .catch Ljava/lang/Throwable; {:try_start_7db .. :try_end_7e3} :catch_f6a

    :goto_7e3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v44, :cond_86b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_808

    const-string/jumbo v6, "StartMidiManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_808
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_822

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_835

    :cond_822
    const-string/jumbo v6, "StartUsbService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_835
    if-nez v47, :cond_851

    const-string/jumbo v6, "StartSerialService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_83d
    new-instance v82, Lcom/android/server/SerialService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_844
    .catch Ljava/lang/Throwable; {:try_start_83d .. :try_end_844} :catch_f77

    :try_start_844
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v82

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84c
    .catch Ljava/lang/Throwable; {:try_start_844 .. :try_end_84c} :catch_1073

    move-object/from16 v81, v82

    :goto_84e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_851
    const-string/jumbo v6, "StartHardwarePropertiesManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_857
    new-instance v58, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_85e
    .catch Ljava/lang/Throwable; {:try_start_857 .. :try_end_85e} :catch_f85

    :try_start_85e
    const-string/jumbo v6, "hardware_properties"

    move-object/from16 v0, v58

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_866
    .catch Ljava/lang/Throwable; {:try_start_85e .. :try_end_866} :catch_106e

    move-object/from16 v57, v58

    :goto_868
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_86b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v6}, Lcom/android/server/SystemServerInjector;->addExtraServices(Landroid/content/Context;Z)V

    const-string/jumbo v6, "StartTwilightService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {v4}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_89c

    const-string/jumbo v6, "StartNightDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_89c
    const-string/jumbo v6, "StartJobScheduler"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartSoundTrigger"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v44, :cond_976

    if-nez v51, :cond_8d6

    const-string/jumbo v6, "StartTrustManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_8d6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f6

    const-string/jumbo v6, "StartBackupManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_8f6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_910

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_923

    :cond_910
    const-string/jumbo v6, "StartAppWidgerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_923
    const-string/jumbo v6, "StartVoiceRecognitionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_952

    const-string/jumbo v6, "StartGestureLauncher"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_952
    const-string/jumbo v6, "StartSensorNotification"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartContextHubSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_976
    const-string/jumbo v6, "StartDiskStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_97c
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_987
    .catch Ljava/lang/Throwable; {:try_start_97c .. :try_end_987} :catch_f93

    :goto_987
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_fa0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120067

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v84

    :goto_99b
    if-eqz v84, :cond_9b0

    const-string/jumbo v6, "StartTimeZoneRulesManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_9b0
    if-nez v42, :cond_9d0

    xor-int/lit8 v6, v43, 0x1

    if-eqz v6, :cond_9d0

    const-string/jumbo v6, "StartNetworkTimeUpdateService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9bc
    new-instance v78, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_9c3
    .catch Ljava/lang/Throwable; {:try_start_9bc .. :try_end_9c3} :catch_fa4

    :try_start_9c3
    const-string/jumbo v6, "network_time_update_service"

    move-object/from16 v0, v78

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9cb
    .catch Ljava/lang/Throwable; {:try_start_9c3 .. :try_end_9cb} :catch_1069

    move-object/from16 v77, v78

    :goto_9cd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_9d0
    const-string/jumbo v6, "StartCommonTimeManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9d6
    new-instance v28, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_9dd
    .catch Ljava/lang/Throwable; {:try_start_9d6 .. :try_end_9dd} :catch_fb1

    :try_start_9dd
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e5
    .catch Ljava/lang/Throwable; {:try_start_9dd .. :try_end_9e5} :catch_1064

    move-object/from16 v25, v28

    :goto_9e7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v42, :cond_9fc

    const-string/jumbo v6, "CertBlacklister"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_9f2
    new-instance v24, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_9f9
    .catch Ljava/lang/Throwable; {:try_start_9f2 .. :try_end_9f9} :catch_fbe

    :goto_9f9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_9fc
    if-nez v42, :cond_a14

    xor-int/lit8 v6, v44, 0x1

    if-eqz v6, :cond_a14

    const-string/jumbo v6, "StartEmergencyAffordanceService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a14
    if-nez v44, :cond_a28

    const-string/jumbo v6, "StartDreamManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a28
    if-nez v44, :cond_a3e

    const-string/jumbo v6, "AddGraphicsStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a3e
    if-nez v44, :cond_a58

    sget-boolean v6, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v6, :cond_a58

    const-string/jumbo v6, "AddCoverageService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "coverage"

    new-instance v7, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v7}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a58
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a78

    const-string/jumbo v6, "StartPrintManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a78
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.companion_device_setup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a98

    const-string/jumbo v6, "StartCompanionDeviceManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a98
    const-string/jumbo v6, "StartRestrictionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartMediaSessionService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_adb

    const-string/jumbo v6, "StartHdmiControlService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_adb
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_af5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b07

    :cond_af5
    const-string/jumbo v6, "StartTvInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b07
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b26

    const-string/jumbo v6, "StartMediaResourceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b45

    const-string/jumbo v6, "StartTvRemoteService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b45
    if-nez v44, :cond_b98

    const-string/jumbo v6, "StartMediaRouterService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b4d
    new-instance v68, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_b54
    .catch Ljava/lang/Throwable; {:try_start_b4d .. :try_end_b54} :catch_fcb

    :try_start_b54
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v68

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b5c
    .catch Ljava/lang/Throwable; {:try_start_b54 .. :try_end_b5c} :catch_105f

    move-object/from16 v67, v68

    :goto_b5e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b80

    const-string/jumbo v6, "StartFingerprintSensor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b80
    const-string/jumbo v6, "StartBackgroundDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b86
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_b89
    .catch Ljava/lang/Throwable; {:try_start_b86 .. :try_end_b89} :catch_fd8

    :goto_b89
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b92
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_b95
    .catch Ljava/lang/Throwable; {:try_start_b92 .. :try_end_b95} :catch_fe5

    :goto_b95
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b98
    const-string/jumbo v6, "StartShortcutServiceLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartLauncherAppsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_bbc
    if-nez v44, :cond_bd4

    xor-int/lit8 v6, v41, 0x1

    if-eqz v6, :cond_bd4

    const-string/jumbo v6, "StartMediaProjectionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_bd4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c28

    const-string/jumbo v6, "StartWearConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v44, :cond_c28

    const-string/jumbo v6, "StartWearTimeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v55, :cond_c28

    const-string/jumbo v6, "StartWearLeftyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c28
    if-nez v38, :cond_c3c

    const-string/jumbo v6, "StartCameraServiceProxy"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c3c
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v80

    if-eqz v80, :cond_ff2

    const-string/jumbo v6, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_c59
    const-string/jumbo v6, "StartMmsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v22

    check-cast v22, Lcom/android/server/MmsServiceBroker;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.autofill"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c8e

    const-string/jumbo v6, "StartAutoFillService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c8e
    const-string/jumbo v6, "MakeVibratorServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c94
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_c97
    .catch Ljava/lang/Throwable; {:try_start_c94 .. :try_end_c97} :catch_1004

    :goto_c97
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v65, :cond_ca5

    :try_start_ca2
    invoke-interface/range {v65 .. v65}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_ca5
    .catch Ljava/lang/Throwable; {:try_start_ca2 .. :try_end_ca5} :catch_1011

    :cond_ca5
    :goto_ca5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartBootPhaseLockSettingsReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartBootPhaseSystemServicesReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeWindowManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v56, :cond_d31

    :try_start_cd4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "calling onBootPhase for Wigig Services"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v97

    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v101, 0x0

    aput-object v8, v7, v101

    move-object/from16 v0, v97

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v66

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x1f4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v66

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    const-string/jumbo v6, "onBootPhase"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v101, 0x0

    aput-object v8, v7, v101

    move-object/from16 v0, v95

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v66

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x1f4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v66

    move-object/from16 v1, v99

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d31
    .catch Ljava/lang/Throwable; {:try_start_cd4 .. :try_end_d31} :catch_101e

    :cond_d31
    :goto_d31
    :try_start_d31
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_d34
    .catch Ljava/lang/Throwable; {:try_start_d31 .. :try_end_d34} :catch_102b

    :goto_d34
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v80, :cond_d40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_d40
    const/4 v6, 0x0

    move-object/from16 v0, v100

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v29

    new-instance v69, Landroid/util/DisplayMetrics;

    invoke-direct/range {v69 .. v69}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/view/WindowManager;

    invoke-interface/range {v93 .. v93}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v69

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    if-eqz v6, :cond_d76

    invoke-virtual/range {v88 .. v88}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_d76
    const-string/jumbo v6, "MakePowerManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_d7c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_d8b
    .catch Ljava/lang/Throwable; {:try_start_d7c .. :try_end_d8b} :catch_1038

    :goto_d8b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakePackageManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_d94
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_d9b
    .catch Ljava/lang/Throwable; {:try_start_d94 .. :try_end_d9b} :catch_1045

    :goto_d9b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeDisplayManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_da4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v80

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_db1
    .catch Ljava/lang/Throwable; {:try_start_da4 .. :try_end_db1} :catch_1052

    :goto_db1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v80

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    move-object/from16 v11, v71

    move-object/from16 v13, v76

    move-object/from16 v12, v72

    move-object/from16 v14, v30

    move-object/from16 v10, v74

    move-object/from16 v15, v63

    move-object/from16 v16, v34

    move-object/from16 v17, v77

    move-object/from16 v18, v25

    move-object/from16 v19, v5

    move-object/from16 v20, v89

    move-object/from16 v21, v67

    move-object/from16 v70, v22

    move-object/from16 v9, v100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v101, v0

    new-instance v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v6 .. v22}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v0, v101

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    return-void

    :cond_def
    const/4 v6, 0x0

    goto/16 :goto_22c

    :cond_df2
    :try_start_df2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e1f

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e02
    .catch Ljava/lang/RuntimeException; {:try_start_df2 .. :try_end_e02} :catch_e04

    goto/16 :goto_2b0

    :catch_e04
    move-exception v53

    move-object/from16 v89, v90

    move-object/from16 v91, v92

    :goto_e09
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "System"

    const-string/jumbo v7, "************ Failure starting core service"

    move-object/from16 v0, v53

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d8

    :cond_e1f
    :try_start_e1f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e37

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b0

    :cond_e37
    if-eqz v37, :cond_e44

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b0

    :cond_e44
    const-string/jumbo v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_e56
    .catch Ljava/lang/RuntimeException; {:try_start_e1f .. :try_end_e56} :catch_e04

    goto/16 :goto_2b0

    :catch_e58
    move-exception v54

    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30e

    :catch_e65
    move-exception v54

    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31a

    :catch_e72
    move-exception v54

    const-string/jumbo v6, "starting StorageManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_353

    :catch_e7f
    move-exception v54

    const-string/jumbo v6, "starting StorageStatsService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_366

    :catch_e8c
    move-exception v54

    const-string/jumbo v6, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_392

    :catch_e99
    move-exception v54

    const-string/jumbo v6, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ab

    :catch_ea6
    move-exception v54

    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d2

    :catch_eb3
    move-exception v54

    :goto_eb4
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_452

    :catch_ec0
    move-exception v54

    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47d

    :catch_ecd
    move-exception v54

    :goto_ece
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b1

    :catch_eda
    move-exception v54

    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c8

    :catch_ee7
    move-exception v54

    :goto_ee8
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ea

    :cond_ef4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Wi-Fi Aware Service (Aware support Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_548

    :catch_eff
    move-exception v54

    const-string/jumbo v6, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_613

    :catch_f0c
    move-exception v54

    :goto_f0d
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66b

    :catch_f19
    move-exception v54

    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_680

    :catch_f26
    move-exception v54

    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_696

    :catch_f33
    move-exception v60

    goto/16 :goto_6ac

    :catch_f36
    move-exception v54

    :goto_f37
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_701

    :catch_f43
    move-exception v54

    :goto_f44
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71b

    :catch_f50
    move-exception v54

    const-string/jumbo v6, "starting DisplayFeatureService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72f

    :catch_f5d
    move-exception v54

    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_74b

    :catch_f6a
    move-exception v54

    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7e3

    :catch_f77
    move-exception v54

    :goto_f78
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SerialService"

    move-object/from16 v0, v54

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_84e

    :catch_f85
    move-exception v54

    :goto_f86
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v54

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_868

    :catch_f93
    move-exception v54

    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_987

    :cond_fa0
    const/16 v84, 0x0

    goto/16 :goto_99b

    :catch_fa4
    move-exception v54

    :goto_fa5
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9cd

    :catch_fb1
    move-exception v54

    :goto_fb2
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9e7

    :catch_fbe
    move-exception v54

    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9f9

    :catch_fcb
    move-exception v54

    :goto_fcc
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b5e

    :catch_fd8
    move-exception v54

    const-string/jumbo v6, "starting StartBackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b89

    :catch_fe5
    move-exception v54

    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b95

    :cond_ff2
    const-string/jumbo v6, "StartJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_c59

    :catch_1004
    move-exception v54

    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c97

    :catch_1011
    move-exception v54

    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ca5

    :catch_101e
    move-exception v54

    const-string/jumbo v6, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d31

    :catch_102b
    move-exception v54

    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d34

    :catch_1038
    move-exception v54

    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d8b

    :catch_1045
    move-exception v54

    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d9b

    :catch_1052
    move-exception v54

    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_db1

    :catch_105f
    move-exception v54

    move-object/from16 v67, v68

    goto/16 :goto_fcc

    :catch_1064
    move-exception v54

    move-object/from16 v25, v28

    goto/16 :goto_fb2

    :catch_1069
    move-exception v54

    move-object/from16 v77, v78

    goto/16 :goto_fa5

    :catch_106e
    move-exception v54

    move-object/from16 v57, v58

    goto/16 :goto_f86

    :catch_1073
    move-exception v54

    move-object/from16 v81, v82

    goto/16 :goto_f78

    :catch_1078
    move-exception v54

    move-object/from16 v34, v35

    goto/16 :goto_f44

    :catch_107d
    move-exception v54

    move-object/from16 v63, v64

    goto/16 :goto_f37

    :catch_1082
    move-exception v54

    move-object/from16 v30, v31

    goto/16 :goto_f0d

    :catch_1087
    move-exception v54

    move-object/from16 v72, v73

    goto/16 :goto_ee8

    :catch_108c
    move-exception v54

    move-object/from16 v74, v75

    goto/16 :goto_ece

    :catch_1091
    move-exception v54

    move-object/from16 v85, v86

    goto/16 :goto_eb4

    :catch_1096
    move-exception v53

    move-object/from16 v5, v61

    goto/16 :goto_e09

    :catch_109b
    move-exception v53

    move-object/from16 v89, v90

    move-object/from16 v5, v61

    goto/16 :goto_e09

    :catch_10a2
    move-exception v53

    move-object/from16 v89, v90

    move-object/from16 v5, v61

    move-object/from16 v91, v92

    goto/16 :goto_e09

    :catch_10ab
    move-exception v53

    move-object/from16 v32, v33

    move-object/from16 v89, v90

    move-object/from16 v5, v61

    move-object/from16 v91, v92

    goto/16 :goto_e09
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .registers 1

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method private writeColorInfo()V
    .registers 9

    const-string/jumbo v4, "unknown"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    :try_start_7
    const-string/jumbo v5, "/proc/tp_lockdown_info"

    invoke-direct {p0, v5}, Lcom/android/server/SystemServer;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const-string/jumbo v5, "longcheer"

    const-string/jumbo v6, "/proc/tp_lockdown_info exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_19} :catch_56

    :try_start_19
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/proc/tp_lockdown_info"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_51

    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_8f

    move-result-object v4

    :try_start_2c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_84

    :goto_2f
    move-object v2, v3

    :cond_30
    :goto_30
    const-string/jumbo v5, "longcheer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tplockdownInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sys.panel.color"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception v5

    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    :goto_57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :cond_5b
    :try_start_5b
    const-string/jumbo v5, "/sys/bus/i2c/devices/3-005d/tp_lock_down_info"

    invoke-direct {p0, v5}, Lcom/android/server/SystemServer;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v5, "longcheer"

    const-string/jumbo v6, "/sys/bus/i2c/devices/3-005d/tp_lock_down_info exists!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6d} :catch_56

    :try_start_6d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v6, "/sys/bus/i2c/devices/3-005d/tp_lock_down_info"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7c
    .catchall {:try_start_6d .. :try_end_7c} :catchall_87

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8c

    move-result-object v4

    :try_start_80
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_2f

    :catch_84
    move-exception v0

    move-object v2, v3

    goto :goto_57

    :catchall_87
    move-exception v5

    :goto_88
    :try_start_88
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_56

    :catchall_8c
    move-exception v5

    move-object v2, v3

    goto :goto_88

    :catchall_8f
    move-exception v5

    move-object v2, v3

    goto :goto_52
.end method


# virtual methods
.method synthetic lambda$-com_android_server_SystemServer_82816(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 24

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Making services ready"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "StartActivityManagerReadyPhase"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x226

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "StartObservingNativeCrashes"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1f
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_178

    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "WebViewFactoryPreparation"

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_3f

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;

    invoke-direct {v6, p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v7, "WebViewFactoryPreparation"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    :cond_3f
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v6, "android.hardware.type.automotive"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const-string/jumbo v5, "StartCarServiceHelperService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/car/CarServiceHelperService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_5a
    const-string/jumbo v5, "StartSystemUI"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_60
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_181

    :goto_63
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkScoreReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p3, :cond_71

    :try_start_6e
    invoke-virtual {p3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_18a

    :cond_71
    :goto_71
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkManagementServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p4, :cond_7f

    :try_start_7c
    invoke-virtual {p4}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_193

    :cond_7f
    :goto_7f
    const/4 v3, 0x0

    if-eqz p5, :cond_86

    invoke-virtual {p5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    :cond_86
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkStatsServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p6, :cond_94

    :try_start_91
    invoke-virtual {p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_19c

    :cond_94
    :goto_94
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeConnectivityServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p7, :cond_a2

    :try_start_9f
    invoke-virtual {p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_1a5

    :cond_a2
    :goto_a2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkPolicyServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p5, :cond_b0

    :try_start_ad
    invoke-virtual {p5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_1ae

    :cond_b0
    :goto_b0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "StartWatchdog"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    const-string/jumbo v5, "PhaseThirdPartyAppsCanStart"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v4, :cond_d6

    const-string/jumbo v5, "WebViewFactoryPreparation"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_d6
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x258

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeLocationServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p8, :cond_eb

    :try_start_e8
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_eb} :catch_1b7

    :cond_eb
    :goto_eb
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeCountryDetectionServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p9, :cond_f9

    :try_start_f6
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_f9} :catch_1c0

    :cond_f9
    :goto_f9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkTimeUpdateReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p10, :cond_107

    :try_start_104
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_107} :catch_1c9

    :cond_107
    :goto_107
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeCommonTimeManagementServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p11, :cond_115

    :try_start_112
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_115} :catch_1d2

    :cond_115
    :goto_115
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeInputManagerServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p12, :cond_123

    :try_start_120
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_123} :catch_1db

    :cond_123
    :goto_123
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeTelephonyRegistryReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p13, :cond_131

    :try_start_12e
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_1e4

    :cond_131
    :goto_131
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeMediaRouterServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p14, :cond_13f

    :try_start_13c
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_13f
    .catch Ljava/lang/Throwable; {:try_start_13c .. :try_end_13f} :catch_1ed

    :cond_13f
    :goto_13f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeMmsServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p15, :cond_14d

    :try_start_14a
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_14a .. :try_end_14d} :catch_1f6

    :cond_14d
    :goto_14d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "MakeNetworkScoreServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p3, :cond_15b

    :try_start_158
    invoke-virtual {p3}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_15b
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_15b} :catch_1ff

    :cond_15b
    :goto_15b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "IncidentDaemonReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_164
    const-string/jumbo v5, "incident"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v2

    if-eqz v2, :cond_174

    invoke-interface {v2}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_174} :catch_208

    :cond_174
    :goto_174
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void

    :catch_178
    move-exception v1

    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    :catch_181
    move-exception v1

    const-string/jumbo v5, "starting System UI"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    :catch_18a
    move-exception v1

    const-string/jumbo v5, "making Network Score Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_71

    :catch_193
    move-exception v1

    const-string/jumbo v5, "making Network Managment Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7f

    :catch_19c
    move-exception v1

    const-string/jumbo v5, "making Network Stats Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_94

    :catch_1a5
    move-exception v1

    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a2

    :catch_1ae
    move-exception v1

    const-string/jumbo v5, "making Network Policy Service ready"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b0

    :catch_1b7
    move-exception v1

    const-string/jumbo v5, "Notifying Location Service running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_eb

    :catch_1c0
    move-exception v1

    const-string/jumbo v5, "Notifying CountryDetectorService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f9

    :catch_1c9
    move-exception v1

    const-string/jumbo v5, "Notifying NetworkTimeService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_107

    :catch_1d2
    move-exception v1

    const-string/jumbo v5, "Notifying CommonTimeManagementService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_115

    :catch_1db
    move-exception v1

    const-string/jumbo v5, "Notifying InputManagerService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_123

    :catch_1e4
    move-exception v1

    const-string/jumbo v5, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_131

    :catch_1ed
    move-exception v1

    const-string/jumbo v5, "Notifying MediaRouterService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13f

    :catch_1f6
    move-exception v1

    const-string/jumbo v5, "Notifying MmsService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14d

    :catch_1ff
    move-exception v1

    const-string/jumbo v5, "Notifying NetworkScoreService running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15b

    :catch_208
    move-exception v1

    const-string/jumbo v5, "Notifying incident daemon running"

    invoke-direct {p0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_174
.end method

.method synthetic lambda$-com_android_server_SystemServer_83721()V
    .registers 5

    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "WebViewFactoryPreparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

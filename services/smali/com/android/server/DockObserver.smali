.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$1;,
        Lcom/android/server/DockObserver$2;,
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/DockObserver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DockObserver;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 15

    iget-object v11, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    const-string/jumbo v10, "DockObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Dock state changed from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v10, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "device_provisioned"

    const/4 v12, 0x0

    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_4f

    const-string/jumbo v10, "DockObserver"

    const-string/jumbo v12, "Device not provisioned, skipping dock broadcast"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_106

    monitor-exit v11

    return-void

    :cond_4f
    :try_start_4f
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x20000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.extra.DOCK_STATE"

    iget v12, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "dock_sounds_enabled"

    const/4 v12, 0x1

    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_da

    const/4 v2, 0x1

    :goto_70
    const-string/jumbo v10, "dock_sounds_enabled_when_accessbility"

    const/4 v12, 0x1

    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_dc

    const/4 v3, 0x1

    :goto_7c
    const-string/jumbo v10, "accessibility_enabled"

    const/4 v12, 0x0

    invoke-static {v1, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_de

    const/4 v0, 0x1

    :goto_88
    if-nez v2, :cond_8e

    if-eqz v0, :cond_cf

    if-eqz v3, :cond_cf

    :cond_8e
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v10, :cond_ea

    const/4 v10, 0x1

    if-eq v5, v10, :cond_99

    const/4 v10, 0x3

    if-ne v5, v10, :cond_e0

    :cond_99
    const-string/jumbo v9, "desk_undock_sound"

    :cond_9c
    :goto_9c
    if-eqz v9, :cond_cf

    invoke-static {v1, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_cf

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file://"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_cf

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    if-eqz v6, :cond_cf

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    :cond_cf
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d8
    .catchall {:try_start_4f .. :try_end_d8} :catchall_106

    monitor-exit v11

    return-void

    :cond_da
    const/4 v2, 0x0

    goto :goto_70

    :cond_dc
    const/4 v3, 0x0

    goto :goto_7c

    :cond_de
    const/4 v0, 0x0

    goto :goto_88

    :cond_e0
    const/4 v10, 0x4

    if-eq v5, v10, :cond_99

    const/4 v10, 0x2

    if-ne v5, v10, :cond_9c

    :try_start_e6
    const-string/jumbo v9, "car_undock_sound"

    goto :goto_9c

    :cond_ea
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x1

    if-eq v10, v12, :cond_f4

    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x3

    if-ne v10, v12, :cond_f8

    :cond_f4
    const-string/jumbo v9, "desk_dock_sound"

    goto :goto_9c

    :cond_f8
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x4

    if-eq v10, v12, :cond_f4

    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_9c

    const-string/jumbo v9, "car_dock_sound"
    :try_end_105
    .catchall {:try_start_e6 .. :try_end_105} :catchall_106

    goto :goto_9c

    :catchall_106
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private init()V
    .registers 9

    iget-object v6, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/16 v5, 0x400

    :try_start_5
    new-array v0, v5, [C

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/sys/class/switch/dock/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_43
    .catchall {:try_start_5 .. :try_end_f} :catchall_40

    const/4 v5, 0x0

    const/16 v7, 0x400

    :try_start_12
    invoke-virtual {v3, v0, v5, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v5, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2e} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_43
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    :goto_2e
    monitor-exit v6

    return-void

    :catchall_30
    move-exception v5

    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v5
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_35} :catch_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_43
    .catchall {:try_start_31 .. :try_end_35} :catchall_40

    :catch_35
    move-exception v1

    :try_start_36
    const-string/jumbo v5, "DockObserver"

    const-string/jumbo v7, "This kernel does not have dock station support"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    goto :goto_2e

    :catchall_40
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_43
    move-exception v2

    :try_start_44
    const-string/jumbo v5, "DockObserver"

    const-string/jumbo v7, ""

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_40

    goto :goto_2e
.end method

.method private setActualDockStateLocked(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_9
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2f

    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2c

    :cond_20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.server:DOCK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_2f
    return-void
.end method

.method private updateLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 4

    const-string/jumbo v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.class public Lcom/android/server/am/ProcessManagerService;
.super Lmiui/process/ProcessManagerNative;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessManagerService$LocalService;,
        Lcom/android/server/am/ProcessManagerService$MainHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final MAX_PROCESS_CONFIG_HISTORY:I

.field static final PACKAGE_NAME_CAMERA:Ljava/lang/String; = "com.android.camera"

.field static final RESTORE_AI_PROCESSES_INFO_MSG:I = 0x1

.field static final SKIP_PRELOAD_COUNT_LIMIT:I = 0x2

.field static final SKIP_PRELOAD_FC_TIME_OUT:J = 0x124f80L

.field public static final SKIP_PRELOAD_KILLED:Z

.field static final SKIP_PRELOAD_KILLED_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "ProcessManager"

.field static final USER_OWNER:I = 0x0

.field static final USER_XSPACE:I = 0x3e7


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAdjBoostProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

.field final mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

.field mHistoryNext:I

.field private mKilledProcessRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field final mProcessConfigHistory:[Lmiui/process/ProcessConfig;

.field private mProcessKiller:Lcom/android/server/am/ProcessKiller;

.field private mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

.field private mProcessStarter:Lcom/android/server/am/ProcessStarter;

.field final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSystemSignatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ProcessManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/ProcessManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ForegroundInfoManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessKiller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ProcessManagerService;JII)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessManagerService;->reportCameraBoost(JII)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ProcessManagerService;Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->setTaskToAvailableIfNeeded(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    :goto_8
    sput v0, Lcom/android/server/am/ProcessManagerService;->MAX_PROCESS_CONFIG_HISTORY:I

    const-string/jumbo v0, "ro.sys.proc.skip_pre_killed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->SKIP_PRELOAD_KILLED:Z

    return-void

    :cond_15
    const/16 v0, 0x1e

    goto :goto_8
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lmiui/process/ProcessManagerNative;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    sget v0, Lcom/android/server/am/ProcessManagerService;->MAX_PROCESS_CONFIG_HISTORY:I

    new-array v0, v0, [Lmiui/process/ProcessConfig;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ProcessKiller;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessKiller;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    new-instance v0, Lcom/android/server/am/ProcessStarter;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessStarter;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    new-instance v0, Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessPolicy;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    new-instance v0, Lcom/android/server/am/MiuiApplicationThreadManager;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    new-instance v0, Lcom/android/server/am/ForegroundInfoManager;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ForegroundInfoManager;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    new-instance v0, Lcom/android/server/am/LowMemoryKillerObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/LowMemoryKillerObserver;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemoryKillerObserver;->start()V

    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ProcessManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->systemReady()V

    const-class v0, Lmiui/process/ProcessManagerInternal;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessManagerService$LocalService;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessManagerService$LocalService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    return-void
.end method

.method private addConfigToHistory(Lmiui/process/ProcessConfig;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/process/ProcessConfig;->setKillingClockTime(J)V

    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    sget v1, Lcom/android/server/am/ProcessManagerService;->MAX_PROCESS_CONFIG_HISTORY:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    aput-object p1, v0, v1

    return-void
.end method

.method private allowPreload(Ljava/util/List;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;I)Z"
        }
    .end annotation

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/server/am/ProcessManagerService;->SKIP_PRELOAD_KILLED:Z

    if-eqz v5, :cond_8d

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_8d

    const/4 v2, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_86

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/PreloadProcessData;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_4d

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2e

    invoke-virtual {v1}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", because of errors or killed by user before"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4a

    :cond_86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_8d

    return v8

    :cond_8d
    const/4 v5, 0x1

    return v5
.end method

.method private boostCameraIfNeeded(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessPolicy;->isCameraBoostEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_1c

    const-string/jumbo v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessManagerService$3;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doAdjBoost(Ljava/lang/String;IJI)V
    .registers 13

    invoke-virtual {p0, p1, p5}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1f

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    if-nez v1, :cond_7d

    new-instance v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    invoke-direct {v1}, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;-><init>()V

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-object v0, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    iput v3, v1, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iput p2, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v3, 0xa

    iput v3, v0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    sget-object v3, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adj boost for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_32 .. :try_end_6e} :catchall_9e

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ProcessManagerService$6;

    invoke-direct {v4, p0, p5, p1}, Lcom/android/server/am/ProcessManagerService$6;-><init>(Lcom/android/server/am/ProcessManagerService;ILjava/lang/String;)V

    invoke-virtual {v3, v4, p3, p4}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7d
    sget-object v3, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is already boosted!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_9e
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/am/ProcessManagerService;->generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method private generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_32

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    new-instance v0, Lmiui/process/RunningProcessInfo;

    invoke-direct {v0}, Lmiui/process/RunningProcessInfo;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mPid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mUid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mAdj:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mProcState:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    :cond_32
    return-object v0
.end method

.method private getKillReason(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_44

    :pswitch_4
    const-string/jumbo v0, "Unknown"

    :goto_7
    return-object v0

    :pswitch_8
    const-string/jumbo v0, "OneKeyClean"

    goto :goto_7

    :pswitch_c
    const-string/jumbo v0, "ForceClean"

    goto :goto_7

    :pswitch_10
    const-string/jumbo v0, "GarbageClean"

    goto :goto_7

    :pswitch_14
    const-string/jumbo v0, "LockScreenClean"

    goto :goto_7

    :pswitch_18
    const-string/jumbo v0, "GameClean"

    goto :goto_7

    :pswitch_1c
    const-string/jumbo v0, "OptimizationClean"

    goto :goto_7

    :pswitch_20
    const-string/jumbo v0, "SwipeUpClean"

    goto :goto_7

    :pswitch_24
    const-string/jumbo v0, "UserDefined"

    goto :goto_7

    :pswitch_28
    const-string/jumbo v0, "AutoPowerKill"

    goto :goto_7

    :pswitch_2c
    const-string/jumbo v0, "AutoThermalKill"

    goto :goto_7

    :pswitch_30
    const-string/jumbo v0, "AutoIdleKill"

    goto :goto_7

    :pswitch_34
    const-string/jumbo v0, "AutoSleepClean"

    goto :goto_7

    :pswitch_38
    const-string/jumbo v0, "AutoLockOffClean"

    goto :goto_7

    :pswitch_3c
    const-string/jumbo v0, "AutoSystemAbnormalClean"

    goto :goto_7

    :pswitch_40
    const-string/jumbo v0, "AutoLockOffCleanByPriority"

    goto :goto_7

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_10
        :pswitch_20
        :pswitch_4
        :pswitch_4
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
    .end packed-switch
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v1

    :cond_c
    return-object v1
.end method

.method private hasSystemSignature(Lcom/android/server/am/ProcessRecord;)Z
    .registers 9

    const/16 v6, 0x40

    const/4 v5, 0x0

    if-nez p1, :cond_6

    return v5

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v3, v6, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_46
    return v5
.end method

.method private isAppHasActivityInOtherTask(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)Z"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p2}, Lcom/android/server/am/ProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_28

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_22
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return v2

    :catchall_28
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private isForceStopEnable(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xd

    if-ne p2, v0, :cond_7

    return v3

    :cond_7
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    return v2

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    :cond_13
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    return v2

    :cond_20
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    :cond_2d
    return v3
.end method

.method private isPackageInList(Ljava/lang/String;I)Z
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    return v3

    :cond_22
    return v4
.end method

.method private isSystemApp(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    return v0
.end method

.method private isTrimMemoryEnable(Ljava/lang/String;)Z
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isUidSystem(I)Z
    .registers 3

    const v0, 0x186a0

    rem-int/2addr p1, v0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private killAllLocked(ILjava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLruProcesses size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_32
    if-ltz v0, :cond_40

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2, p2, p1}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_40
    return-void
.end method

.method private killLevelToString(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_1c

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "trim-memory"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "kill-background"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "kill"

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "force-stop"

    goto :goto_6

    :pswitch_17
    const-string/jumbo v0, "none"

    goto :goto_6

    nop

    :pswitch_data_1c
    .packed-switch 0x64
        :pswitch_17
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    return-void
.end method

.method private killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V
    .registers 9

    const/16 v3, 0x66

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v0, :cond_8

    if-lt p3, v3, :cond_57

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/server/am/ProcessManagerService;->killLevelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    const/16 v0, 0x65

    if-ne p3, v0, :cond_61

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/ProcessKiller;->trimMemory(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    if-ne p3, v3, :cond_69

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessKiller;->killBackgroundApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_60

    :cond_69
    const/16 v0, 0x67

    if-ne p3, v0, :cond_73

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/am/ProcessKiller;->killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto :goto_60

    :cond_73
    const/16 v0, 0x68

    if-ne p3, v0, :cond_60

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/am/ProcessKiller;->forceStopPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto :goto_60
.end method

.method private killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    return-void
.end method

.method private killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V
    .registers 7

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_6

    const/16 v0, 0x64

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_19

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/am/ProcessManagerService;->isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_19
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessManagerService;->isTrimMemoryEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v0, 0x65

    :cond_25
    :goto_25
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    return-void

    :cond_29
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ProcessManagerService;->isForceStopEnable(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz p4, :cond_34

    const/16 v0, 0x68

    goto :goto_25

    :cond_34
    const/4 v1, 0x3

    if-ne p3, v1, :cond_3a

    const/16 v0, 0x66

    goto :goto_25

    :cond_3a
    const/16 v0, 0x67

    goto :goto_25
.end method

.method private reduceKilledRecordCount(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$2;-><init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllTasks(II)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2, v2}, Lcom/android/server/am/ProcessUtils;->removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V

    if-nez p1, :cond_12

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v3, 0x3e7

    invoke-static {p0, v3, p2, v2}, Lcom/android/server/am/ProcessUtils;->removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeMiuiApplicationThread(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$1;-><init>(Lcom/android/server/am/ProcessManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeTask(I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, v2}, Lcom/android/server/am/ProcessUtils;->removeTask(ILcom/android/server/am/ActivityManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeTaskIfNeeded(ILjava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, v0}, Lcom/android/server/am/ProcessUtils;->isRemoveTaskDisabled(ILjava/lang/String;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/am/ProcessPolicy;->setAppTaskAvailable(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, v0}, Lcom/android/server/am/ProcessUtils;->setTaskToUnavailable(ILcom/android/server/am/ActivityManagerService;)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->removeTask(I)V

    goto :goto_1f
.end method

.method private removeTasksIfNeeded(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, v2, v3, p3}, Lcom/android/server/am/ProcessUtils;->removeTasks(Ljava/util/List;Ljava/util/Set;Lcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeTasksInPackages(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/am/ProcessUtils;->removeTasksInPackages(Ljava/util/List;ILcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private reportCameraBoost(JII)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/android/server/am/ProcessManagerService$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessManagerService$4;-><init>(Lcom/android/server/am/ProcessManagerService;JIIJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final ringAdvance(III)I
    .registers 5

    const/4 v0, 0x0

    add-int/2addr p1, p2

    if-gez p1, :cond_7

    add-int/lit8 v0, p3, -0x1

    return v0

    :cond_7
    if-lt p1, p3, :cond_a

    return v0

    :cond_a
    return p1
.end method

.method private setTaskToAvailableIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    if-eqz p1, :cond_16

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessPolicy;->isInFastBootList(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    :cond_16
    return-void

    :cond_17
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ProcessPolicy;->isAppTaskAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/ProcessPolicy;->setAppTaskAvailable(Ljava/lang/String;IZ)V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ProcessUtils;->setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V

    :cond_36
    return-void
.end method


# virtual methods
.method public addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v1, p2, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.addMiuiApplicationThread() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/MiuiApplicationThreadManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    return-void
.end method

.method public adjBoost(Ljava/lang/String;IJI)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.adjBoost() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    if-gez p2, :cond_3b

    const/4 p2, 0x0

    :cond_3b
    const-wide/32 v2, 0x493e0

    cmp-long v1, p3, v2

    if-lez v1, :cond_45

    const-wide/32 p3, 0x493e0

    :cond_45
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ProcessManagerService;->doAdjBoost(Ljava/lang/String;IJI)V

    return-void
.end method

.method protected autoKillApp(Lmiui/process/ProcessConfig;)Z
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUidInvalid()Z

    move-result v7

    if-eqz v7, :cond_31

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_31
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUid()I

    move-result v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    invoke-direct {p0, v6}, Lcom/android/server/am/ProcessManagerService;->isUidSystem(I)Z

    move-result v7

    if-eqz v7, :cond_6a

    :cond_45
    sget-object v7, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot kill packageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_6a
    sget-object v7, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start autoKillApp: packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v7}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v3

    iget-object v7, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c1

    iget v7, v3, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    if-ne v7, v6, :cond_c1

    :cond_a0
    sget-object v7, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "autoKillApp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed, app with foreground activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_c1
    iget-object v7, v3, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cd

    iget v7, v3, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    if-eq v7, v6, :cond_a0

    :cond_cd
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    goto :goto_d5

    :cond_ed
    const/4 v7, 0x1

    return v7
.end method

.method public boostCameraIfNeeded()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V

    return-void
.end method

.method checkPermission()Z
    .registers 6

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_e

    return v4

    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->hasSystemSignature(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    return v4

    :cond_1f
    const/4 v3, 0x0

    return v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v4

    if-nez v4, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: can\'t dump ProcessManager from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string/jumbo v4, "Process Config:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iget v3, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    const/4 v1, 0x0

    :goto_3d
    if-ne v3, v5, :cond_50

    :cond_3f
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    const-string/jumbo v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/am/ForegroundInfoManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const-string/jumbo v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/am/ProcessPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_50
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    aget-object v0, v4, v3

    if-eqz v0, :cond_3f

    const-string/jumbo v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/process/ProcessConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v4, Lcom/android/server/am/ProcessManagerService;->MAX_PROCESS_CONFIG_HISTORY:I

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    if-eq v3, v2, :cond_3f

    goto :goto_3d
.end method

.method public foregroundInfoChanged(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "com.android.camera"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V

    :cond_d
    return-void
.end method

.method public getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v2

    if-nez v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: ProcessManager.getForegroundApplicationThread() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTopRunningPidLocked(Lcom/android/server/am/ActivityManagerService;)I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_50

    move-result v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v2

    return-object v2

    :catchall_50
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.unregisterForegroundInfoListener() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLockedApplication(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->getLockedApplication(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessPolicy()Lcom/android/server/am/ProcessPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object v0
.end method

.method public getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_f
    if-ltz v1, :cond_31

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_36

    if-ne v2, p2, :cond_2e

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_31
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :catchall_36
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProcessRecordByUid(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_13
    if-ltz v2, :cond_2d

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p1, :cond_2a

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_32

    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_2d
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_32
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_13
    if-ltz v2, :cond_33

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_30

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_38

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_33
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_38
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_13
    if-ltz v2, :cond_35

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_32

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3a

    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_35
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_3a
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v5

    if-nez v5, :cond_38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: ProcessManager.getRunningProcessInfo() from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_38
    if-gtz p5, :cond_3e

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p5

    :cond_3e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_46
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-lez p1, :cond_57

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_89

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_57
    :try_start_57
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    invoke-virtual {p0, p4, p5}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_89

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_69
    :try_start_69
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_94

    if-lez p2, :cond_94

    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_89

    goto :goto_79

    :catchall_89
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_8f
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_94
    :try_start_94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    invoke-virtual {p0, p3, p5}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_a2

    :cond_b2
    if-lez p2, :cond_cc

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByUid(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v0}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    :try_end_cb
    .catchall {:try_start_94 .. :try_end_cb} :catchall_89

    goto :goto_bc

    :cond_cc
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4
.end method

.method isAllowAutoStart(Ljava/lang/String;I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v3, 0x2718

    invoke-virtual {v2, v3, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 9

    const/4 v4, 0x1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x3ea

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_c

    return v4

    :cond_c
    packed-switch p3, :pswitch_data_8e

    :cond_f
    :pswitch_f
    const/4 v1, 0x0

    return v1

    :pswitch_11
    const/16 v0, 0xd

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_19

    const/16 v0, 0x100d

    :cond_19
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_3b
    return v4

    :pswitch_3c
    const/16 v0, 0xd

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_44

    const/16 v0, 0x100d

    :cond_44
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_72
    return v4

    :pswitch_73
    const/4 v0, 0x5

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_7a

    const/16 v0, 0x1005

    :cond_7a
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_8c
    return v4

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_73
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public isLockedApplication(Ljava/lang/String;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public kill(Lmiui/process/ProcessConfig;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v4

    if-nez v4, :cond_38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: ProcessManager.kill() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    sget-object v4, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Kill reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->addConfigToHistory(Lmiui/process/ProcessConfig;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessPolicy;->resetWhiteList(Landroid/content/Context;I)V

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_9c

    :pswitch_7a
    sget-object v4, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unKnown policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    return v3

    :pswitch_83
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killAll(Lmiui/process/ProcessConfig;)Z

    move-result v3

    goto :goto_82

    :pswitch_88
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->swipeToKillApp(Lmiui/process/ProcessConfig;)Z

    move-result v3

    goto :goto_82

    :pswitch_8d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->autoKillApp(Lmiui/process/ProcessConfig;)Z

    move-result v3

    goto :goto_82

    :pswitch_92
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killAny(Lmiui/process/ProcessConfig;)Z

    move-result v3

    goto :goto_82

    :pswitch_97
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killByPriority(Lmiui/process/ProcessConfig;)Z

    move-result v3

    goto :goto_82

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_83
        :pswitch_83
        :pswitch_92
        :pswitch_83
        :pswitch_83
        :pswitch_92
        :pswitch_88
        :pswitch_7a
        :pswitch_7a
        :pswitch_92
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_83
        :pswitch_83
        :pswitch_83
        :pswitch_97
    .end packed-switch
.end method

.method protected killAll(Lmiui/process/ProcessConfig;)Z
    .registers 12

    const/4 v7, 0x2

    const/4 v9, 0x1

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eq v2, v7, :cond_35

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getWhiteList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_22

    if-nez v5, :cond_1c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    const-string/jumbo v6, "com.mfashiongallery.emag"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eq v2, v9, :cond_28

    const/16 v6, 0xf

    if-ne v2, v6, :cond_6f

    :cond_28
    :goto_28
    if-nez v5, :cond_2f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ProcessUtils;->getPerceptibleRecentAppList(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object v1

    :cond_35
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getRemovingTaskIdList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7d

    if-eqz v1, :cond_7b

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    :goto_47
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getRemovingTaskIdList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, v0, v5}, Lcom/android/server/am/ProcessManagerService;->removeTasksIfNeeded(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    :cond_4e
    :goto_4e
    if-eqz v5, :cond_61

    if-eqz v1, :cond_59

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_59
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    :cond_61
    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_64
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ProcessManagerService;->killAllLocked(ILjava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_87

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_6f
    const/4 v6, 0x4

    if-eq v2, v6, :cond_28

    const/16 v6, 0xe

    if-eq v2, v6, :cond_28

    const/16 v6, 0x10

    if-ne v2, v6, :cond_35

    goto :goto_28

    :cond_7b
    const/4 v0, 0x0

    goto :goto_47

    :cond_7d
    if-ne v2, v7, :cond_4e

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/ProcessManagerService;->removeAllTasks(II)V

    goto :goto_4e

    :catchall_87
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6
.end method

.method protected killAny(Lmiui/process/ProcessConfig;)Z
    .registers 17

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v13

    if-eqz v13, :cond_30

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "userId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is invalid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v13, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_30
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getKillingPackageMaps()Landroid/util/ArrayMap;

    move-result-object v6

    if-nez v6, :cond_3c

    const/4 v13, 0x0

    return v13

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v13

    if-eqz v13, :cond_8a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_48
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v3, v13, :cond_83

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v13, 0x64

    if-eq v4, v13, :cond_60

    const/16 v13, 0x67

    if-ne v4, v13, :cond_7a

    :cond_60
    :goto_60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_77

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_77

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_7a
    const/16 v13, 0x66

    if-eq v4, v13, :cond_60

    const/16 v13, 0x68

    if-ne v4, v13, :cond_77

    goto :goto_60

    :cond_83
    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/am/ProcessManagerService;->removeTasksInPackages(Ljava/util/List;I)V

    :cond_8a
    const/4 v3, 0x0

    :goto_8b
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v3, v13, :cond_e4

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_e1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_e1

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_ad
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v13

    invoke-virtual {p0, v9, v13}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    const/16 v13, 0x64

    if-eq v4, v13, :cond_d9

    invoke-direct {p0, v0, v11, v4}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    goto :goto_c5

    :cond_d9
    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v13

    invoke-direct {p0, v0, v11, v13}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    goto :goto_c5

    :cond_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_e4
    const/4 v13, 0x1

    return v13
.end method

.method protected killByPriority(Lmiui/process/ProcessConfig;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isPriorityInvalid()Z

    move-result v6

    if-eqz v6, :cond_32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "priority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_32
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v3

    const/16 v6, 0xc8

    if-gt v3, v6, :cond_5a

    sget-object v6, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minOomAdj:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", may kill perceptible app!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v2

    :goto_6c
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6, v3, v10}, Lcom/android/server/am/ProcessUtils;->getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_99

    :cond_7a
    sget-object v6, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no process found for adj:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_94
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    :cond_99
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getWhiteList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_ae

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_ae

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5, v9}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    :cond_ae
    const/4 v1, 0x0

    :goto_af
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_c5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v7

    invoke-direct {p0, v6, v2, v7, v9}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    :cond_c5
    const/4 v6, 0x1

    return v6
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$8;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/ActivityStack$ActivityState;",
            "I",
            "Landroid/content/pm/ApplicationInfo;",
            ")V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/ProcessManagerService$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessManagerService$7;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public protectCurrentProcess(ZI)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessPolicy;->isInAppProtectList(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: ProcessManager.protectCurrentProcess() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/am/ProcessPolicy;->protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v2

    if-eqz p1, :cond_5f

    if-lez p2, :cond_5f

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ProcessManagerService$5;

    invoke-direct {v4, p0, v0}, Lcom/android/server/am/ProcessManagerService$5;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V

    int-to-long v6, p2

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5f
    return v2
.end method

.method public recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-direct {p0, p3}, Lcom/android/server/am/ProcessManagerService;->removeMiuiApplicationThread(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_48

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_48
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v0, 0x493e0

    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    const-wide/32 v0, 0x124f80

    :cond_6b
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/ProcessManagerService;->reduceKilledRecordCount(Ljava/lang/String;J)V

    goto :goto_27

    :cond_6f
    return-void
.end method

.method public registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.registerActivityChangeListener() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ForegroundInfoManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    return-void
.end method

.method public registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.registerForegroundInfoListener() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForegroundInfoListener, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ForegroundInfoManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

.method public startProcesses(Ljava/util/List;IZII)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: ProcessManager.startMutiProcesses() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4a

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageNames cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_59

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal start number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    if-nez p3, :cond_6a

    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "low memory! skip start process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6a
    if-gtz p2, :cond_75

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startProcessCount <= 0, skip start process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_75
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessManagerService;->allowPreload(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_7c

    return v2

    :cond_7c
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessStarter;->startProcesses(Ljava/util/List;IZII)I

    move-result v0

    return v0
.end method

.method protected swipeToKillApp(Lmiui/process/ProcessConfig;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isTaskIdInvalid()Z

    move-result v10

    if-eqz v10, :cond_46

    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " or taskId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is invalid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_46
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_51

    return v12

    :cond_51
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v8

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v10

    invoke-virtual {p0, v6, v10}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v8}, Lcom/android/server/am/ProcessManagerService;->isAppHasActivityInOtherTask(Ljava/util/List;I)Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_6a

    iget-object v10, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v8, v10}, Lcom/android/server/am/ProcessUtils;->getTaskTopApp(ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    :cond_6a
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9b

    const/4 v10, -0x1

    invoke-direct {p0, v8, v6, v10}, Lcom/android/server/am/ProcessManagerService;->removeTaskIfNeeded(ILjava/lang/String;I)V

    :cond_7a
    :goto_7a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_af

    if-eqz v9, :cond_99

    iget-object v11, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_85
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {v9, v8}, Lcom/android/server/am/ProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_a9

    move-result v7

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v7, :cond_99

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v10

    invoke-direct {p0, v9, v4, v10, v12}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    :cond_99
    const/4 v10, 0x1

    return v10

    :cond_9b
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v8, v6, v10}, Lcom/android/server/am/ProcessManagerService;->removeTaskIfNeeded(ILjava/lang/String;I)V

    goto :goto_7a

    :catchall_a9
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_af
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v10

    invoke-direct {p0, v0, v4, v10}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    goto :goto_b3
.end method

.method protected systemReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->systemReady(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.unregisterActivityChangeListener() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ForegroundInfoManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    return-void
.end method

.method public unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.unregisterForegroundInfoListener() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ForegroundInfoManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method public updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.updateApplicationLockedState() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.updateCloudWhiteList() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    if-nez p1, :cond_43

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "cloudData cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    return-void
.end method

.method public updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v1

    if-nez v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: ProcessManager.updateConfig() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    return-void
.end method

.class Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;,
        Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;
    }
.end annotation


# static fields
.field public static final BOOST_DURATION:J = 0xbb8L

.field private static final BOOST_TAG:Ljava/lang/String; = "Boost"

.field private static final DEBUG:Z = true

.field private static final FLAG_GRANT_SYSTEM_APP_URI_PERMISSION:I = -0x80000000

.field private static final PACKAGE_FORE_BUFFER_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceInjector"

.field private static enableAdjDowngrade:Z = false

.field protected static enableTaskIsolation:Z = false

.field private static lastForegroundPkg:Ljava/lang/String; = null

.field private static mLastCheckProcessCpuUsageUptime:J = 0x0L

.field static mProtectedProcessList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResizeBlackList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResizeWhiteList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mipushCaller:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static final mipushServiceName:Ljava/lang/String; = "com.xiaomi.mipush.sdk.PushMessageHandler"

.field private static final sCachedForegroundPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldBinderCpuTime:Ljava/lang/reflect/Field; = null

.field private static sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field; = null

.field private static sFieldProcCpuTime:Ljava/lang/reflect/Field; = null

.field private static final sPackageList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sPackageList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver; = null

.field private static sSwitchUserCallingUid:I = 0x0

.field private static sSystemBootCompleted:Z = false

.field private static skipVerifyList:[Ljava/lang/String; = null

.field private static final xiaomiVoiceServiceName:Ljava/lang/String; = "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v0, "persist.sys.task_isolation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    const-string/jumbo v0, "persist.sys.adj_downgrade"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    const-string/jumbo v0, "sys.proc.fore_pkg_buffer"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PACKAGE_FORE_BUFFER_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "lastCheckedCpuTime"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "procCpuTimeLastCheck"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "binderCpuTimeLastCheck"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustThreadGroup(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    return-void
.end method

.method public static attachProcessStartReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " #for# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1c

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static broadcastIntentLocked(Lcom/android/server/am/ActivityManagerService;ZZLcom/android/server/am/BroadcastRecord;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static broadcastQueueByFlag(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/BroadcastQueue;
    .registers 3

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method static broadcastVRAppFC(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.vr.apperror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.mi.dlabs.vr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static checkBoostPriorityForLockTime(J)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3f

    const-string/jumbo v2, "ActivityManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slow operation: holding ams lock in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method

.method public static checkGMSInstall(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    if-eqz p1, :cond_2d

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    const-string/jumbo v3, "com.google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "com.android.provision"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "ActivityManagerServiceInjector"

    const-string/jumbo v4, "delay gms service timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_2d
    const/4 v3, 0x0

    return v3
.end method

.method public static checkMemForServiceRestart(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "don\'t allow bg service restart under lowmem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method static checkProcessCpuUsage(Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    if-nez v2, :cond_9

    :cond_8
    return-void

    :cond_9
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->updateBinderClientCpuUsages()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sget-wide v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    sub-long v6, v14, v2

    sput-wide v14, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_a8

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_24
    if-lez v18, :cond_a8

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    :try_start_32
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_8f

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v20

    iget-wide v2, v12, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    sub-long v2, v2, v20

    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long v8, v2, v4

    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->getBinderClientCpuUsages()Ljava/util/HashMap;

    move-result-object v2

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_62

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :cond_62
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Landroid/os/statistics/BinderServerMonitor;->computeCpuUsage(JJ)I

    move-result v2

    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->getExcessiveCpuUsageThreshold()I

    move-result v3

    if-lt v2, v3, :cond_8f

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static/range {v2 .. v11}, Landroid/os/statistics/BinderServerMonitor;->recordExcessiveCpuUsage(Ljava/lang/String;IIIJJJ)V

    :cond_8f
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v12, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v12, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v4, v12, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v2, v12, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_a4} :catch_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_a4} :catch_a9

    goto :goto_24

    :catch_a5
    move-exception v17

    goto/16 :goto_24

    :cond_a8
    return-void

    :catch_a9
    move-exception v16

    goto/16 :goto_24
.end method

.method static checkSystemUidHoldingPermissionsLocked(II)Z
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_7

    if-nez p1, :cond_b

    :cond_7
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->ignoreSystemUidAppCheck(I)Z

    move-result v0

    :cond_b
    return v0
.end method

.method public static clearDeadAppFromNative(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Thread;Lcom/android/internal/os/ProcessCpuTracker;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/Thread;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static computeAdjForLowmem(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;JI)I
    .registers 9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_59

    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    const-string/jumbo v0, "fg-service"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return p4

    :cond_15
    const/16 v0, 0x1f4

    if-ge p4, v0, :cond_59

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_5a

    const-wide/32 v0, 0x927c0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5a

    :goto_29
    const/16 p4, 0x1f4

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to A service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return p4

    :cond_5a
    const-string/jumbo v0, "provider"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_29
.end method

.method static computeGids(I[I)[I
    .registers 6

    const/4 v1, 0x0

    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object p1

    :cond_8
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    array-length v2, p1

    :goto_f
    if-ge v1, v2, :cond_1d

    aget v0, p1, v1

    sget v3, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    if-ne v0, v3, :cond_1e

    sget v1, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    :cond_1d
    :goto_1d
    return-object p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    if-nez p0, :cond_1d

    array-length v2, p1

    :goto_24
    if-ge v1, v2, :cond_1d

    aget v0, p1, v1

    sget v3, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    if-ne v0, v3, :cond_33

    sget v1, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    goto :goto_1d

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method static doBoost(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    const/4 v1, 0x2

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    if-eq v0, v1, :cond_2a

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const-string/jumbo v0, "Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Process is boosted to top app, processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method static dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    const-string/jumbo v16, "dalvik.vm.stack-trace-file"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_12

    :cond_11
    return-void

    :cond_12
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    :try_start_19
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "_tmp_"

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_164

    :try_start_2c
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_43

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3c} :catch_13a
    .catchall {:try_start_2c .. :try_end_3c} :catchall_164

    move-result v16

    if-nez v16, :cond_43

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_43
    :try_start_43
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1fd

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5c

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    invoke-virtual {v13, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, "pid : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, "pkgName : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v16, "processName : "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1b6

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-static/range {v16 .. v19}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_e1} :catch_13a
    .catchall {:try_start_43 .. :try_end_e1} :catchall_164

    if-eqz p1, :cond_104

    :try_start_e3
    new-instance v9, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-direct {v9, v14, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Ljava/lang/String;I)V
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_164

    :try_start_ec
    invoke-virtual {v9}, Landroid/os/FileObserver;->startWatching()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_15f

    :try_start_ef
    monitor-enter v9
    :try_end_f0
    .catch Ljava/lang/InterruptedException; {:try_start_ef .. :try_end_f0} :catch_15d
    .catchall {:try_start_ef .. :try_end_f0} :catchall_15f

    const/16 v16, 0x3

    :try_start_f2
    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/FileObserver;->wait(J)V
    :try_end_100
    .catchall {:try_start_f2 .. :try_end_100} :catchall_15a

    :try_start_100
    monitor-exit v9
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_100 .. :try_end_101} :catch_15d
    .catchall {:try_start_100 .. :try_end_101} :catchall_15f

    :goto_101
    :try_start_101
    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    :cond_104
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    :goto_107
    if-ltz v6, :cond_16d

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v17, "slow_app_%s_%02d.txt"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p3, v18, v19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_136

    if-eqz v7, :cond_169

    invoke-virtual {v2, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_136
    :goto_136
    move-object v7, v2

    add-int/lit8 v6, v6, -0x1

    goto :goto_107

    :catch_13a
    move-exception v3

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to dump app traces file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_156
    .catchall {:try_start_101 .. :try_end_156} :catchall_164

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_15a
    move-exception v16

    :try_start_15b
    monitor-exit v9

    throw v16
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_15b .. :try_end_15d} :catch_15d
    .catchall {:try_start_15b .. :try_end_15d} :catchall_15f

    :catch_15d
    move-exception v4

    goto :goto_101

    :catchall_15f
    move-exception v16

    :try_start_160
    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    throw v16
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_164

    :catchall_164
    move-exception v16

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v16

    :cond_169
    :try_start_169
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_136

    :cond_16d
    invoke-virtual {v13, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_179

    invoke-virtual {v15, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_179
    .catchall {:try_start_169 .. :try_end_179} :catchall_164

    :cond_179
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public static exitFreeFormIfNeeded(Landroid/os/IBinder;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 5

    const/4 v2, 0x2

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return-void

    :cond_a
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v1

    if-eq v1, v2, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_1a
    return-void
.end method

.method static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendFinishBootingBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static finishSilentAnr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)Z
    .registers 20

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_4d

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish silent ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const-string/jumbo v0, "bg anr"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const-string/jumbo v1, "anr"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4d
    const/4 v0, 0x0

    return v0
.end method

.method public static finishSilentAnr(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    const/4 v3, 0x1

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_36

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finish silent ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const-string/jumbo v0, "bg anr"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return v3

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->forceStopUserLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static getAppStartMode(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6

    const/4 v1, 0x0

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    if-nez v0, :cond_12

    return p2

    :cond_12
    if-eqz p3, :cond_1b

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    if-nez p2, :cond_1e

    return v1

    :cond_1e
    invoke-static {p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result v0

    return v0
.end method

.method public static getAppStartMode(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;ILjava/lang/String;)I
    .registers 9

    const/4 v3, 0x0

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_1a

    iput-boolean v3, v0, Lcom/android/server/am/UidRecord;->idle:Z

    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    return v3

    :cond_22
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v1

    if-nez v1, :cond_29

    return p3

    :cond_29
    if-eqz p4, :cond_32

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    return v3

    :cond_32
    if-nez p3, :cond_35

    return v3

    :cond_35
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result v1

    return v1
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_c

    return-object v5

    :cond_c
    iget v0, v3, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-lez v0, :cond_22

    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    array-length v4, v2

    if-lez v4, :cond_22

    const/4 v4, 0x0

    aget-object v4, v2, v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_20} :catch_21

    return-object v4

    :catch_21
    move-exception v1

    :cond_22
    return-object v5
.end method

.method static getExtraQueueSize()I
    .registers 1

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->getExtraQueueSize()I

    move-result v0

    return v0
.end method

.method static getMiuiActivityController()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .registers 1

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    move-result-object v0

    return-object v0
.end method

.method static getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/MiuiBroadcastManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .registers 13

    sget v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V

    return-void
.end method

.method public static hookGetCallingPkg(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/hybrid/hook/HookClient;->hookGetCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static ignoreSystemUidAppCheck(I)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method static inResizeBlackList(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
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

.method static inResizeWhiteList(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
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

.method static final init(Landroid/content/Context;)V
    .registers 2

    sget v0, Lmiui/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiWarnings;->init(Landroid/content/Context;)V

    return-void
.end method

.method static initExtraQuqueIfNeed(Lcom/android/server/am/ActivityManagerService;I)Z
    .registers 3

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->initExtraQuqueIfNeed(I)Z

    move-result v0

    return v0
.end method

.method static initSettingObserver(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->observe()V

    return-void
.end method

.method static isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    const-string/jumbo v3, "service"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "com.xiaomi.xmsf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    move v1, v2

    :goto_23
    const-string/jumbo v3, "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    :goto_2c
    const-string/jumbo v3, "Boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hostingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hostingName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isSystem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isBoostNeeded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7a
    const/4 v1, 0x0

    goto :goto_23

    :cond_7c
    const/4 v1, 0x1

    goto :goto_2c
.end method

.method static isExtraQueueEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->isExtraQueueEnabled()Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Landroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Landroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z

    move-result v0

    return v0
.end method

.method static isGetTasksOpAllowed(Lcom/android/server/AppOpsService;Ljava/lang/String;II)Z
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    :cond_8
    const-string/jumbo v2, "getRunningAppProcesses"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    invoke-static {p2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/16 v2, 0x2723

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public static isKillProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_10

    invoke-static {p2}, Lcom/android/server/am/ProcessUtils;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const-string/jumbo v1, "ActivityManagerServiceInjector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visible app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " depends on provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " in dying proc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_68

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " (adj "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_6c

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_68
    const-string/jumbo v0, "??"

    goto :goto_41

    :cond_6c
    const-string/jumbo v0, "??"

    goto :goto_54
.end method

.method static isProcStateBackground(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v2, 0x9

    if-lt p0, v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    const/4 v2, 0x4

    if-le p0, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method static isProcessNameInList(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->initSettingObserver(Landroid/content/Context;)V

    :cond_7
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    monitor-enter v2

    :try_start_a
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1d

    move-result v0

    monitor-exit v2

    if-eqz v0, :cond_1c

    const-string/jumbo v1, "ActivityManagerServiceInjector"

    const-string/jumbo v2, "processName in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v0

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static isSpecialBroadcast(ILjava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_25

    const-string/jumbo v0, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_23
    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method static isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v1, :cond_19

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    iget-object v0, v1, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    :goto_8
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_18
    return v1

    :cond_19
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_8

    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    :cond_14
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_e

    return v3

    :cond_e
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_1b

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_18

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_19

    :cond_18
    :goto_18
    return v3

    :cond_19
    move v3, v4

    goto :goto_18

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method static isUserSwitchable(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isUserSwitchable(I)Z

    move-result v0

    return v0
.end method

.method static isVRMode(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vr_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    move v1, v2

    goto :goto_f
.end method

.method static final killNativePackageProcesses(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    const-string/jumbo v3, "security"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1b

    invoke-virtual {v1, v2, p1}, Lmiui/security/SecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method static markAmsReady()V
    .registers 4

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    return-void
.end method

.method static markPrebootAppCount(I)V
    .registers 2

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/BootEventManager;->setPrebootAppCount(I)V

    return-void
.end method

.method static markUIReady()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    return-void
.end method

.method public static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 20

    const-string/jumbo v1, "anr"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    invoke-static/range {p0 .. p8}, Lcom/android/server/am/ANRManager;->onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    return-void
.end method

.method static onForegroundActivityChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
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

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_10

    :cond_6
    const-string/jumbo v0, "ActivityManagerServiceInjector"

    const-string/jumbo v1, "next or next process is null, skip report!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmiui/process/ProcessManagerInternal;->notifyForegroundInfoChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V

    invoke-static {p0, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportPackageForeground(Lcom/android/server/am/ActivityRecord;I)V

    :cond_34
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->notifyActivityChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    const-class v3, Lmiui/process/ProcessManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/process/ProcessManagerInternal;

    invoke-virtual {v3}, Lmiui/process/ProcessManagerInternal;->getMultiWindowForegroundAppInfoLocked()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceInjector$4;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$4;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onFreeFormToFullScreen(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    if-eqz p0, :cond_6

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_7

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceInjector$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$3;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static declared-synchronized parseDumpArgs(Lcom/android/server/am/ActivityManagerService;[Ljava/lang/String;I)Z
    .registers 19

    const-class v13, Lcom/android/server/am/ActivityManagerServiceInjector;

    monitor-enter v13

    :try_start_3
    aget-object v5, p1, p2

    const-string/jumbo v12, "dump-app-trace"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11c

    move-result v12

    if-eqz v12, :cond_11f

    :try_start_e
    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_65

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "startIndex "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    :goto_38
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v7, v12, :cond_65

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "args["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, p1, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_65
    move-object/from16 v0, p1

    array-length v12, v0

    move/from16 v0, p2

    if-ge v0, v12, :cond_111

    add-int/lit8 p2, p2, 0x1

    aget-object v5, p1, p2

    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v12, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v12, :cond_bf

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dump-app-trace cmd : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    :goto_94
    array-length v12, v4

    if-ge v7, v12, :cond_bf

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "arr["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "] "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, v4, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    :cond_bf
    if-eqz v4, :cond_111

    array-length v12, v4

    const/4 v14, 0x4

    if-ne v12, v14, :cond_111

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v12, 0x1

    aget-object v9, v4, v12

    const/4 v12, 0x2

    aget-object v2, v4, v12

    const/4 v12, 0x3

    aget-object v8, v4, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v2, v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dump "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " trace took "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "ms"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_111} :catch_114
    .catchall {:try_start_e .. :try_end_111} :catchall_11c

    :cond_111
    :goto_111
    const/4 v12, 0x1

    monitor-exit v13

    return v12

    :catch_114
    move-exception v6

    :try_start_115
    const-string/jumbo v12, "parseDumpArgs failed!"

    invoke-static {v12, v6}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_11c

    goto :goto_111

    :catchall_11c
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_11f
    const/4 v12, 0x0

    monitor-exit v13

    return v12
.end method

.method public static processInitBefore(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :cond_b
    return v0
.end method

.method public static reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lmiui/mqsas/sdk/event/AnrEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>()V

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setPid(I)V

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_69

    const-string/jumbo v1, "system_server"

    :goto_13
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setProcessName(Ljava/lang/String;)V

    const-string/jumbo v1, "system"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_6b

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_29
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/AnrEvent;->setTimeStamp(J)V

    invoke-virtual {v0, p7}, Lmiui/mqsas/sdk/event/AnrEvent;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lmiui/mqsas/sdk/event/AnrEvent;->setCpuInfo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setBgAnr(Z)V

    if-eqz p8, :cond_51

    invoke-virtual {p8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {p8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setLogName(Ljava/lang/String;)V

    :cond_51
    if-eqz p4, :cond_58

    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setTargetActivity(Ljava/lang/String;)V

    :cond_58
    if-eqz p5, :cond_61

    invoke-virtual {p5}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setParent(Ljava/lang/String;)V

    :cond_61
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    return-void

    :cond_69
    move-object v1, p3

    goto :goto_13

    :cond_6b
    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/AnrEvent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29
.end method

.method static reportBootEvent()V
    .registers 0

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V

    return-void
.end method

.method private static reportPackageForeground(Lcom/android/server/am/ActivityRecord;I)V
    .registers 6

    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setPackageName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setComponentName(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setIdentity(I)V

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setPid(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setForegroundTime(J)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setColdStart(Z)V

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/android/server/am/ActivityManagerServiceInjector;->PACKAGE_FORE_BUFFER_SIZE:I

    if-lt v2, v3, :cond_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->isSystemBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string/jumbo v2, "ActivityManagerServiceInjector"

    const-string/jumbo v3, "Begin to report package foreground events..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportPackageForegroundEvents(Ljava/util/List;)V

    :cond_55
    return-void
.end method

.method private static reportPackageForegroundEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceInjector$5;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$5;-><init>(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isServiceControlEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    return p2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    sub-long v0, v2, v4

    if-nez p1, :cond_1c

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isAppInServiceControlWhitelist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    return v7

    :cond_1d
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_71

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_71

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_71

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_71

    const-string/jumbo v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is a long inactive service(millionsecond) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",do not allow restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_71
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v2, :cond_b2

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x38a

    if-lt v2, v3, :cond_b2

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_b2

    const-string/jumbo v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is killed by AMS with adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,do not allow restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b2
    return v7
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .registers 5

    if-eqz p3, :cond_7

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public static saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v9, 0x1

    :goto_12
    if-nez v9, :cond_1d

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_1d

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p4, v0, :cond_1d

    const/4 v8, 0x1

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v7

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v8}, Landroid/os/AnrMonitor;->dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;

    return-void

    :cond_2f
    const/4 v9, 0x0

    goto :goto_12
.end method

.method public static sendFinishBootingBroadcast(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public static setProcessInitState(Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_32

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in mProtectedProcessList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method static setResizeBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_10

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit v1

    :cond_10
    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setResizeWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_10

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_11

    monitor-exit v1

    :cond_10
    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setSwitchUserCallingUid(I)V
    .registers 1

    sput p0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    return-void
.end method

.method static shouldAddPersistApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.greenguard"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_36

    const-string/jumbo v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "should not add to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_36
    const/4 v0, 0x1

    return v0
.end method

.method static shouldCrossXSpace(Ljava/lang/String;I)Z
    .registers 8

    const/4 v5, 0x0

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_1c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, p0, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_1d
    .catchall {:try_start_9 .. :try_end_11} :catchall_22

    move-result-object v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1c
    :goto_1c
    return v5

    :catch_1d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    :catchall_22
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 9

    const/4 v6, 0x1

    iget-object v2, p1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iget-object v0, p1, Lcom/android/server/am/AppErrorDialog$Data;->crash:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v0, v6}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p0, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    iput-object v1, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :goto_21
    return v6

    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    goto :goto_21
.end method

.method static showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .registers 8

    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->isVRMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->broadcastVRAppFC(Landroid/content/Context;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    iput-object p4, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    iput-object p3, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    invoke-direct {v1, p2, p0, v0}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    iput-object v1, p3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_20
    return-void
.end method

.method static showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->setSwitchUserCallingUid(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_23
    const/4 v1, 0x0

    return v1

    :cond_25
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public static startProcessLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    const-string/jumbo v1, "com.xiaomi.xmsf"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_1e

    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v1, :cond_1e

    iput-boolean v5, v0, Lcom/android/server/am/UidRecord;->idle:Z

    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    :cond_2b
    return-void
.end method

.method static updateProcessCpuTime(Lcom/android/server/am/ProcessRecord;)V
    .registers 13

    const/16 v7, 0xb

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    if-nez v6, :cond_b

    :cond_a
    return-void

    :cond_b
    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v6, v7, :cond_2c

    const/4 v5, 0x1

    :goto_14
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-ge v6, v7, :cond_2e

    const/4 v2, 0x1

    :goto_19
    if-eqz v5, :cond_30

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_30

    :try_start_1f
    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/statistics/BinderServerMonitor;->clearBinderClientCpuTimeUsed(I)J

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v6, p0, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/4 v5, 0x0

    goto :goto_14

    :cond_2e
    const/4 v2, 0x0

    goto :goto_19

    :cond_30
    if-nez v5, :cond_2b

    if-eqz v2, :cond_2b

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/statistics/BinderServerMonitor;->clearBinderClientCpuTimeUsed(I)J

    move-result-wide v0

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    add-long/2addr v8, v10

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, p0, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-virtual {v6, p0, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    sget-object v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v6, p0, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_62} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_62} :catch_65

    goto :goto_2b

    :catch_63
    move-exception v4

    goto :goto_2b

    :catch_65
    move-exception v3

    goto :goto_2b
.end method

.method public static verifyForegroundService(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;)V
    .registers 7

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_7
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    :cond_1d
    iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_25

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_27

    :cond_25
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    :cond_27
    :goto_27
    return-void

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2b
    iput-boolean v4, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    goto :goto_27
.end method

.class Lcom/android/server/am/ProcessRecordInjector;
.super Ljava/lang/Object;
.source "ProcessRecordInjector.java"


# static fields
.field private static final DEVICE:Ljava/lang/String;

.field private static final MAX_PREVIOUS_APP_COUNT:I

.field private static final MAX_PREVIOUS_TIME:I = 0xea60

.field private static final PREVIOUS_APP_MAX_ADJ:I

.field public static final PREVIOUS_APP_MIN_ADJ:I = 0x2bc

.field private static final PROCESS_BUFFER_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ProcessRecordInjector"

.field private static final sCachedProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDeathProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKillingProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sPidsSelfLocked:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

.field private static sSystemBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->isLowMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x2

    :goto_34
    sput v0, Lcom/android/server/am/ProcessRecordInjector;->MAX_PREVIOUS_APP_COUNT:I

    sget v0, Lcom/android/server/am/ProcessRecordInjector;->MAX_PREVIOUS_APP_COUNT:I

    add-int/lit16 v0, v0, 0x2bc

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/am/ProcessRecordInjector;->PREVIOUS_APP_MAX_ADJ:I

    return-void

    :cond_3f
    const/4 v0, 0x5

    goto :goto_34
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNativeKillInList(ILjava/lang/String;)V
    .registers 7

    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    if-nez v0, :cond_15

    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    :cond_15
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->getPolicy()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "other"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_50

    monitor-exit v2

    return-void

    :cond_29
    :try_start_29
    const-string/jumbo v1, "ProcessRecordInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oops, missing real event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_50

    monitor-exit v2

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;
    .registers 2

    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    if-nez v0, :cond_16

    const-class v1, Lcom/android/server/am/ProcessRecordInjector;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    if-nez v0, :cond_15

    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    :cond_15
    monitor-exit v1

    :cond_16
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    if-nez v2, :cond_12

    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    sput-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    :cond_12
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_15
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    monitor-exit v3

    return-object v2

    :cond_23
    monitor-exit v3

    return-object v4

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isAppInterestingToUser(I)Z
    .registers 5

    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    if-nez v2, :cond_11

    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    sput-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    :cond_11
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_14
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_27

    move-result v2

    monitor-exit v3

    return v2

    :cond_24
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isLowMemoryDevice()Z
    .registers 4

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isPreviousApp(Lcom/android/server/am/ProcessRecord;IJ)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    sget v1, Lcom/android/server/am/ProcessRecordInjector;->PREVIOUS_APP_MAX_ADJ:I

    if-gt p1, v1, :cond_19

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long v2, p2, v2

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gtz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    :cond_14
    sget-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static reportBinderDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    if-eqz p0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecordInjector;->reportBinderDied(Ljava/lang/String;IIZ)V

    :cond_f
    return-void
.end method

.method public static reportBinderDied(Ljava/lang/String;IIZ)V
    .registers 10

    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    if-nez v0, :cond_28

    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    invoke-virtual {v0, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    :cond_28
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_32

    monitor-exit v2

    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayed(Ljava/lang/String;)V

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static reportCleanUpAppRecord(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    if-eqz p0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecordInjector;->reportCleanUpAppRecord(Ljava/lang/String;IIIZ)V

    :cond_11
    return-void
.end method

.method public static reportCleanUpAppRecord(Ljava/lang/String;IIIZ)V
    .registers 13

    sget-object v5, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/mqsas/sdk/event/KillProcessEvent;

    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    if-eqz v3, :cond_5b

    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1f
    if-eqz v0, :cond_26

    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_26
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_8c

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->isSystemBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_8c

    const-string/jumbo v4, "ProcessRecordInjector"

    const-string/jumbo v6, "Begin to report kill process events..."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_45
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_84

    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_5b
    if-nez v0, :cond_7b

    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    const-string/jumbo v4, "exception"

    invoke-virtual {v0, v4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    invoke-virtual {v0, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcState(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    invoke-virtual {v0, p4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    :cond_7b
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_81

    goto :goto_1f

    :catchall_81
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_84
    :try_start_84
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    invoke-static {v1}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvents(Ljava/util/List;)V
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_81

    :cond_8c
    monitor-exit v5

    return-void
.end method

.method public static reportKillProcessEvent(IILjava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-ne p0, p1, :cond_15

    const-string/jumbo p2, "killself"

    :goto_7
    invoke-static {p1}, Lcom/android/server/am/ProcessRecordInjector;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const v3, 0x7fffffff

    move v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V

    return-void

    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p0}, Lcom/android/server/am/ProcessRecordInjector;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object p2

    :cond_1f
    invoke-static {p1}, Lcom/android/server/am/ProcessRecordInjector;->isAppInterestingToUser(I)Z

    move-result v5

    goto :goto_7
.end method

.method public static reportKillProcessEvent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 8

    if-eqz p0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V

    :cond_12
    return-void
.end method

.method public static reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V
    .registers 12

    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    invoke-virtual {v0, p4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledReason(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcState(I)V

    invoke-virtual {v0, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    invoke-virtual {v0, p5}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2c

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p4, p0, p1}, Lmiui/process/ProcessManagerInternal;->recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static reportKillProcessEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessRecordInjector$1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ProcessRecordInjector$1;-><init>(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->updateProcessForegroundLocked(I)V

    return-void
.end method

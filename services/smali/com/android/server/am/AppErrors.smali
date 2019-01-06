.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/AppErrors;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v3, :cond_8

    return-object v4

    :cond_8
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v3, :cond_19

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_19

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_19

    return-object v4

    :cond_19
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    :cond_3b
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_45

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_4a

    :cond_45
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    :cond_49
    :goto_49
    return-object v0

    :cond_4a
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_49
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9

    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 22

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    if-eqz p1, :cond_72

    :try_start_a
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_c
    if-eqz p1, :cond_74

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_10
    if-eqz p1, :cond_77

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_16
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    const-string/jumbo v1, "1"

    const-string/jumbo v4, "ro.debuggable"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string/jumbo v1, "Native crash"

    iget-object v4, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip killing native crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") during testing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    const/4 v1, 0x1

    return v1

    :cond_72
    const/4 v2, 0x0

    goto :goto_c

    :cond_74
    move/from16 v3, p8

    goto :goto_10

    :cond_77
    move/from16 v10, p9

    goto :goto_16

    :cond_7a
    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Force-killing crashed app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at watcher\'s request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string/jumbo v1, "crash"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_b1} :catch_b2

    goto :goto_70

    :catch_b2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_c0
    const/4 v1, 0x0

    return v1

    :cond_c2
    :try_start_c2
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v10, v3}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_c8} :catch_b2

    goto :goto_70
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_1f
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v1, :cond_25

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    :cond_25
    return v0
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 13

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    const-string/jumbo v2, "force-crash"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .registers 62

    new-instance v38, Ljava/util/ArrayList;

    const/4 v5, 0x5

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Landroid/util/SparseArray;

    const/16 v5, 0x14

    invoke-direct {v13, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_3e

    :try_start_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p5

    invoke-interface {v5, v6, v7, v0}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v52

    if-gez v52, :cond_3e

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_3e

    const-string/jumbo v5, "anr"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3e} :catch_9a

    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "anr_show_background"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_ab

    const/16 v53, 0x1

    :goto_5d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_ae

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "During shutdown skipping ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_62 .. :try_end_95} :catchall_296

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_9a
    move-exception v35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_3e

    :cond_ab
    const/16 v53, 0x0

    goto :goto_5d

    :cond_ae
    :try_start_ae
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v5, :cond_e1

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping duplicate ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catchall {:try_start_ae .. :try_end_dc} :catchall_296

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_e1
    :try_start_e1
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v5, :cond_114

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Crashing app skipping ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_e1 .. :try_end_10f} :catchall_296

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_114
    :try_start_114
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v5, :cond_147

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "App already killed by AM skipping ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catchall {:try_start_114 .. :try_end_142} :catchall_296

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_147
    :try_start_147
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v5, :cond_17a

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping died app ANR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_147 .. :try_end_175} :catchall_296

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_17a
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v12}, Lcom/android/server/am/ActivityManagerServiceInjector;->finishSilentAnr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)Z
    :try_end_18f
    .catchall {:try_start_17a .. :try_end_18f} :catchall_296

    move-result v5

    if-eqz v5, :cond_197

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_197
    const/4 v5, 0x1

    :try_start_198
    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/16 v6, 0x7538

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v53, :cond_282

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    xor-int/lit8 v40, v5, 0x1

    :goto_1e6
    if-nez v40, :cond_2a4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v47, v0

    if-eqz p3, :cond_206

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_206

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v5, :cond_206

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v47, v0

    :cond_206
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v47

    if-eq v0, v5, :cond_217

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_217
    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v5, v6, :cond_230

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v47

    if-eq v5, v0, :cond_230

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v39, v5, -0x1

    :goto_23c
    if-ltz v39, :cond_2a4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/am/ProcessRecord;

    if-eqz v51, :cond_27f

    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_27f

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v48, v0

    if-lez v48, :cond_27f

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v48

    if-eq v0, v5, :cond_27f

    move/from16 v0, v48

    move/from16 v1, v47

    if-eq v0, v1, :cond_27f

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v48

    if-eq v0, v5, :cond_27f

    invoke-static/range {v51 .. v51}, Lcom/android/server/am/ProcessPolicyManager;->isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_286

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27f
    :goto_27f
    add-int/lit8 v39, v39, -0x1

    goto :goto_23c

    :cond_282
    const/16 v40, 0x0

    goto/16 :goto_1e6

    :cond_286
    move-object/from16 v0, v51

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v5, :cond_29c

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_295
    .catchall {:try_start_198 .. :try_end_295} :catchall_296

    goto :goto_27f

    :catchall_296
    move-exception v5

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_29c
    :try_start_29c
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v0, v48

    invoke-virtual {v13, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2a3
    .catchall {:try_start_29c .. :try_end_2a3} :catchall_296

    goto :goto_27f

    :cond_2a4
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v5, "ANR in "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2dc

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v5, :cond_2dc

    const-string/jumbo v5, " ("

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2dc
    const-string/jumbo v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PID: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_30c

    const-string/jumbo v5, "Reason: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30c
    if-eqz p3, :cond_329

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_329

    const-string/jumbo v5, "Parent: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_329
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v5

    if-eqz v5, :cond_360

    :try_start_32f
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dump message failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v34, p1

    new-instance v4, Lcom/android/server/am/AppErrors$1;

    const-wide/16 v6, 0x1f4

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v11, p1

    move-object/from16 v12, v38

    invoke-direct/range {v4 .. v13}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroid/os/AnrMonitor$TimerThread;->startAndWait()V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_360} :catch_3b5

    :cond_360
    :goto_360
    new-instance v50, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v5, 0x1

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    const/16 v45, 0x0

    if-eqz v40, :cond_3c2

    const/16 v39, 0x0

    :goto_36e
    sget-object v5, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v39

    if-ge v0, v5, :cond_38f

    sget-object v5, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v5, v5, v39

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bf

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v45, v6

    :cond_38f
    :goto_38f
    if-nez v45, :cond_3c5

    const/16 v49, 0x0

    :goto_393
    const/16 v44, 0x0

    if-eqz v49, :cond_3ca

    new-instance v44, Ljava/util/ArrayList;

    move-object/from16 v0, v49

    array-length v5, v0

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v49

    array-length v6, v0

    :goto_3a5
    if-ge v5, v6, :cond_3ca

    aget v39, v49, v5

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3a5

    :catch_3b5
    move-exception v36

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error happened during saving anr info"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_360

    :cond_3bf
    add-int/lit8 v39, v39, 0x1

    goto :goto_36e

    :cond_3c2
    sget-object v45, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_38f

    :cond_3c5
    invoke-static/range {v45 .. v45}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v49

    goto :goto_393

    :cond_3ca
    if-nez v40, :cond_3d9

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3d9
    if-eqz v40, :cond_498

    const/4 v5, 0x0

    :goto_3dc
    if-eqz v40, :cond_3df

    const/4 v13, 0x0

    :cond_3df
    const/4 v6, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-static {v6, v0, v5, v13, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v6

    :try_start_3f8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_403
    .catchall {:try_start_3f8 .. :try_end_403} :catchall_49c

    move-result-object v21

    monitor-exit v6

    invoke-virtual/range {v50 .. v50}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v50

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v22, :cond_42f

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/os/Process;->sendSignal(II)V

    :cond_42f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v15, "anr"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p5

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v30, 0x0

    move-object/from16 v24, p1

    move-object/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, v21

    move-object/from16 v28, p5

    move-object/from16 v29, v22

    invoke-static/range {v23 .. v31}, Lcom/android/server/am/ActivityManagerServiceInjector;->onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_4c7

    :try_start_46c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v52

    if-eqz v52, :cond_4c7

    if-gez v52, :cond_49f

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_49f

    const-string/jumbo v5, "anr"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_497
    .catch Landroid/os/RemoteException; {:try_start_46c .. :try_end_497} :catch_4b7

    :goto_497
    return-void

    :cond_498
    move-object/from16 v5, v50

    goto/16 :goto_3dc

    :catchall_49c
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_49f
    :try_start_49f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_4a4
    .catch Landroid/os/RemoteException; {:try_start_49f .. :try_end_4a4} :catch_4b7

    :try_start_4a4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_4b2
    .catchall {:try_start_4a4 .. :try_end_4b2} :catchall_4f0

    :try_start_4b2
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4b6
    .catch Landroid/os/RemoteException; {:try_start_4b2 .. :try_end_4b6} :catch_4b7

    goto :goto_497

    :catch_4b7
    move-exception v35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :cond_4c7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_4cc
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    if-eqz v40, :cond_4f6

    const-string/jumbo v5, "bg anr"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_4eb
    .catchall {:try_start_4cc .. :try_end_4eb} :catchall_612

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4f0
    move-exception v5

    :try_start_4f1
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_4f6
    .catch Landroid/os/RemoteException; {:try_start_4f1 .. :try_end_4f6} :catch_4b7

    :cond_4f6
    if-eqz p2, :cond_5e8

    :try_start_4f8
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v6, v5

    :goto_4fd
    if-eqz p5, :cond_5ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ANR "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_515
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5, v8}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.sys.enableTraceRename"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    if-eqz v37, :cond_5a7

    const-string/jumbo v5, "dalvik.vm.stack-trace-file"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_5a7

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5a7

    new-instance v54, Ljava/io/File;

    invoke-direct/range {v54 .. v55}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "."

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v41

    const/4 v5, -0x1

    move/from16 v0, v41

    if-eq v5, v0, :cond_5f1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v41

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v55

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    :goto_596
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    :cond_5a7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v43

    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x2

    move-object/from16 v0, v43

    iput v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p4, :cond_610

    const/4 v5, 0x1

    :goto_5be
    move-object/from16 v0, v43

    iput v5, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo v5, "app"

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5d8

    const-string/jumbo v5, "activity"

    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5e3
    .catchall {:try_start_4f8 .. :try_end_5e3} :catchall_612

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5e8
    const/4 v5, 0x0

    move-object v6, v5

    goto/16 :goto_4fd

    :cond_5ec
    :try_start_5ec
    const-string/jumbo v5, "ANR"

    goto/16 :goto_515

    :cond_5f1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_60e
    .catchall {:try_start_5ec .. :try_end_60e} :catchall_612

    move-result-object v46

    goto :goto_596

    :cond_610
    const/4 v5, 0x0

    goto :goto_5be

    :catchall_612
    move-exception v5

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v5, :cond_63

    if-eqz v6, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_3f

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2, v3}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    :cond_3f
    new-instance v35, Lcom/android/server/am/AppErrorResult;

    invoke-direct/range {v35 .. v35}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_4b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_199

    move-result v2

    if-eqz v2, :cond_67

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_63
    if-eqz v5, :cond_2c

    move-object v6, v5

    goto :goto_2c

    :cond_67
    if-eqz p1, :cond_74

    :try_start_69
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_199

    if-eqz v2, :cond_74

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_74
    if-eqz p1, :cond_87

    :try_start_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    :cond_87
    new-instance v15, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v15}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    move-object/from16 v0, v35

    iput-object v0, v15, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/server/am/AppErrorDialog$Data;->crash:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz p1, :cond_a9

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v10 .. v15}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    :try_end_a4
    .catchall {:try_start_76 .. :try_end_a4} :catchall_199

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ae

    :cond_a9
    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_ae
    :try_start_ae
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v33

    const/4 v2, 0x1

    move-object/from16 v0, v33

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v0, v15, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v36, v0

    move-object/from16 v0, v33

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_ca
    .catchall {:try_start_ae .. :try_end_ca} :catchall_199

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v34

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    move/from16 v0, v34

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v2, 0x6

    move/from16 v0, v34

    if-eq v0, v2, :cond_e9

    const/4 v2, 0x7

    move/from16 v0, v34

    if-ne v0, v2, :cond_eb

    :cond_e9
    const/16 v34, 0x1

    :cond_eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_f0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x5

    move/from16 v0, v34

    if-ne v0, v2, :cond_fb

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_fb
    const/4 v2, 0x3

    move/from16 v0, v34

    if-ne v0, v2, :cond_123

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "crash"

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10, v11, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_10e
    .catchall {:try_start_f0 .. :try_end_10e} :catchall_1ef

    if-eqz v36, :cond_123

    :try_start_110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_110 .. :try_end_123} :catch_19f
    .catchall {:try_start_110 .. :try_end_123} :catchall_1ef

    :cond_123
    :goto_123
    const/4 v2, 0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_150

    :try_start_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v2, :cond_150

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "crash"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10, v11, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_150
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ne v0, v2, :cond_157

    const/16 v29, 0x0

    :cond_157
    if-eqz p1, :cond_17f

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17f

    const/4 v2, 0x3

    move/from16 v0, v34

    if-eq v0, v2, :cond_17f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v4, v10, v11}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_17f
    .catchall {:try_start_128 .. :try_end_17f} :catchall_1ef

    :cond_17f
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    if-eqz v2, :cond_198

    :try_start_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_198
    .catch Landroid/content/ActivityNotFoundException; {:try_start_186 .. :try_end_198} :catch_1f5

    :cond_198
    :goto_198
    return-void

    :catchall_199
    move-exception v2

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :catch_19f
    move-exception v32

    :try_start_1a0
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v30

    if-eqz v30, :cond_123

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move/from16 v17, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v25

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v26, v0

    const-string/jumbo v28, "AppErrors"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    :try_end_1ed
    .catchall {:try_start_1a0 .. :try_end_1ed} :catchall_1ef

    goto/16 :goto_123

    :catchall_1ef
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :catch_1f5
    move-exception v31

    sget-object v2, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bug report receiver dissappeared"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_198
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v2

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_d2

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v15, :cond_d2

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v18

    const/4 v4, 0x0

    :goto_37
    move/from16 v0, v18

    if-ge v4, v0, :cond_ce

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_70

    if-eqz v17, :cond_6d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_70

    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_70
    if-nez v14, :cond_84

    if-eqz p3, :cond_77

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_77
    const/16 p3, 0x1

    const-string/jumbo v21, "  Time since processes crashed:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_84
    const-string/jumbo v21, "    Process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v21, ": last crashed "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v21, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    :cond_ce
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_24

    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_24c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_f2
    if-ge v6, v15, :cond_24c

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/SparseArray;

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v18

    const/4 v4, 0x0

    :goto_105
    move/from16 v0, v18

    if-ge v4, v0, :cond_248

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_13e

    if-eqz v17, :cond_13b

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_13e

    :cond_13b
    :goto_13b
    add-int/lit8 v4, v4, 0x1

    goto :goto_105

    :cond_13e
    if-nez v14, :cond_152

    if-eqz p3, :cond_145

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_145
    const/16 p3, 0x1

    const-string/jumbo v21, "  Bad processes:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_152
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    const-string/jumbo v21, "    Bad process "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, " uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v21, ": crashed at time "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1aa

    const-string/jumbo v21, "      Short msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1aa
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c5

    const-string/jumbo v21, "      Long msg: "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c5
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13b

    const-string/jumbo v21, "      Stack:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_1d7
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_216

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_213

    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    sub-int v22, v13, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v7, v13, 0x1

    :cond_213
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d7

    :cond_216
    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_13b

    const-string/jumbo v21, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v7

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_13b

    :cond_248
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f2

    :cond_24c
    return p3
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 32

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "anr_show_background"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9b

    const/16 v19, 0x1

    :goto_18
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_9f

    const/16 v17, 0x1

    :goto_21
    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_a2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    :goto_51
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v16, v5, -0x1

    :goto_5b
    if-ltz v16, :cond_b0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ServiceRecord;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-lez v5, :cond_a5

    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    :goto_7b
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v8, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v5, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    move-wide/from16 v22, v0

    cmp-long v5, v8, v22

    if-gez v5, :cond_98

    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_96

    if-eqz v17, :cond_98

    :cond_96
    const/16 v21, 0x1

    :cond_98
    add-int/lit8 v16, v16, -0x1

    goto :goto_5b

    :cond_9b
    const/16 v19, 0x0

    goto/16 :goto_18

    :cond_9f
    const/16 v17, 0x0

    goto :goto_21

    :cond_a2
    const/4 v15, 0x0

    const/4 v14, 0x0

    goto :goto_51

    :cond_a5
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_7b

    :cond_b0
    if-eqz v14, :cond_21c

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_21c

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has crashed too many times: killing!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/16 v8, 0x7550

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_1a9

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/16 v8, 0x753f

    invoke-static {v8, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_183

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v24, v0

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_183
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "crash"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v5, v0, v9, v1, v8}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    if-nez v19, :cond_1a9

    const/4 v5, 0x0

    return v5

    :cond_1a9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_1b2
    :goto_1b2
    if-eqz p6, :cond_1bb

    if-eqz v21, :cond_1bb

    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    :cond_1bb
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_248

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_248

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_248

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v11, v5, -0x1

    :goto_1e3
    if-ltz v11, :cond_248

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_219

    sget-object v5, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_219
    .catch Landroid/os/RemoteException; {:try_start_20e .. :try_end_219} :catch_28d

    :cond_219
    :goto_219
    add-int/lit8 v11, v11, -0x1

    goto :goto_1e3

    :cond_21c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    if-eqz p6, :cond_230

    move-object/from16 v0, p6

    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    :cond_230
    if-eqz p6, :cond_1b2

    if-eqz v15, :cond_1b2

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v22, 0xea60

    add-long v8, v8, v22

    cmp-long v5, v6, v8

    if-gez v5, :cond_1b2

    const/4 v5, 0x1

    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    goto/16 :goto_1b2

    :cond_248
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v5, :cond_278

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_278
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v5, :cond_28b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_28b
    const/4 v5, 0x1

    return v5

    :catch_28d
    move-exception v13

    goto :goto_219
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 25

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap;

    const-string/jumbo v1, "app"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    if-eqz v20, :cond_51

    move-object/from16 v0, v20

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_51

    sget-object v1, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_ea

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_51
    :try_start_51
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ANR"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_66

    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_66
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, 0x0

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_ce

    const/16 v21, 0x1

    :goto_93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v1

    if-nez v1, :cond_9f

    if-eqz v21, :cond_d3

    :cond_9f
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d1

    const/4 v10, 0x1

    :goto_bb
    move-object/from16 v8, v20

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_c0
    .catchall {:try_start_51 .. :try_end_c0} :catchall_ea

    :try_start_c0
    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_f2

    :goto_c4
    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :cond_cd
    return-void

    :cond_ce
    const/16 v21, 0x0

    goto :goto_93

    :cond_d1
    const/4 v10, 0x0

    goto :goto_bb

    :cond_d3
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v2, 0x13d

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_e7
    .catchall {:try_start_d3 .. :try_end_e7} :catchall_ea

    move-object/from16 v5, v18

    goto :goto_c4

    :catchall_ea
    move-exception v1

    move-object/from16 v5, v18

    :goto_ed
    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :catchall_f2
    move-exception v1

    goto :goto_ed
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 15

    const/4 v8, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "anr_show_background"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4a

    const/4 v5, 0x1

    :goto_15
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-eqz v3, :cond_4c

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_4c

    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App already has crash dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_45

    sget v7, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_ec

    :cond_45
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4a
    const/4 v5, 0x0

    goto :goto_15

    :cond_4c
    :try_start_4c
    iget v7, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v9, 0x2710

    if-lt v7, v9, :cond_77

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v7, v9, :cond_75

    const/4 v2, 0x1

    :goto_5d
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v7}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v11

    array-length v12, v11

    move v9, v8

    :goto_67
    if-ge v9, v12, :cond_7b

    aget v6, v11, v9

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v7, v6, :cond_79

    const/4 v7, 0x1

    :goto_70
    and-int/2addr v2, v7

    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_67

    :cond_75
    const/4 v2, 0x0

    goto :goto_5d

    :cond_77
    const/4 v2, 0x0

    goto :goto_5d

    :cond_79
    move v7, v8

    goto :goto_70

    :cond_7b
    if-eqz v2, :cond_ad

    xor-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_ad

    sget-object v7, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping crash dialog of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": background"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a8

    sget v7, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_a8
    .catchall {:try_start_4c .. :try_end_a8} :catchall_ec

    :cond_a8
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_ad
    :try_start_ad
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v7, :cond_e2

    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_bb
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v7

    if-nez v7, :cond_c5

    if-eqz v5, :cond_e4

    :cond_c5
    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_e4

    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v7, v1, v8, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector;->showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    :try_end_d0
    .catchall {:try_start_ad .. :try_end_d0} :catchall_ec

    :cond_d0
    :goto_d0
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_e1

    iget-object v7, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_e1
    return-void

    :cond_e2
    const/4 v0, 0x0

    goto :goto_bb

    :cond_e4
    if-eqz v4, :cond_d0

    :try_start_e6
    sget v7, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_ec

    goto :goto_d0

    :catchall_ec
    move-exception v7

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_10

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_16

    iput-object v3, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    :cond_16
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_32

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_32

    const-string/jumbo v2, "user-terminated"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_32
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_18

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_18

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_c
    if-ltz v3, :cond_51

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1a
    if-ltz v2, :cond_45

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-nez p1, :cond_3d

    const/4 v6, -0x1

    if-ne p3, v6, :cond_35

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_2d

    const/4 v5, 0x1

    :cond_2d
    :goto_2d
    if-eqz v5, :cond_32

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_35
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v1, v6, :cond_2d

    const/4 v5, 0x1

    goto :goto_2d

    :cond_3d
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_2d

    const/4 v5, 0x1

    goto :goto_2d

    :cond_45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_4e

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_51
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-ltz p1, :cond_24

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p1, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_77

    if-ne v3, p2, :cond_67

    move-object v2, v1

    :cond_29
    monitor-exit v4

    if-nez v2, :cond_7a

    sget-object v3, Lcom/android/server/am/AppErrors;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "crashApplication: nothing for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " initialPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_67
    :try_start_67
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    if-ltz p4, :cond_75

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_77

    if-ne v3, p4, :cond_21

    :cond_75
    move-object v2, v1

    goto :goto_21

    :catchall_77
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_7a
    invoke-virtual {v2, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    return-void
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentProfileIdsLocked()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_d
    if-ge v1, v3, :cond_28

    aget v0, v2, v1

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v0, :cond_25

    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_28
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class public Landroid/os/statistics/PerfSuperviser;
.super Ljava/lang/Object;
.source "PerfSuperviser.java"


# static fields
.field public static final DEBUGGING:Z = false

.field public static MY_PID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiuiPerfSuperviser"

.field private static volatile sInitialized:Z

.field private static volatile sStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(ZZ)V
    .registers 5

    const/4 v2, 0x1

    const-class v1, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Landroid/os/Process;->myPpid()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    move-result v0

    if-eq v0, v2, :cond_c

    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    if-nez v0, :cond_19

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->init()V

    invoke-static {p0, p1}, Landroid/os/statistics/PerfSuperviser;->nativeInit(ZZ)V

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeInit(ZZ)V
.end method

.method private static native nativeStart(ZIIIII)V
.end method

.method public static native setThreadPerfSupervisionOn(Z)V
.end method

.method public static declared-synchronized start(Z)V
    .registers 8

    const/4 v1, 0x1

    const-class v6, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v6

    :try_start_4
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_48

    if-nez v0, :cond_a

    monitor-exit v6

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Landroid/os/Process;->myPpid()I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_48

    move-result v0

    if-ne v0, v1, :cond_12

    monitor-exit v6

    return-void

    :cond_12
    :try_start_12
    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-nez v0, :cond_46

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->notifySupervisionReady()V

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v1

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    const/16 v4, 0xa

    move v0, p0

    invoke-static/range {v0 .. v5}, Landroid/os/statistics/PerfSuperviser;->nativeStart(ZIIIII)V

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->start()V

    if-nez p0, :cond_43

    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->start()V

    :cond_43
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit v6

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v6

    throw v0
.end method

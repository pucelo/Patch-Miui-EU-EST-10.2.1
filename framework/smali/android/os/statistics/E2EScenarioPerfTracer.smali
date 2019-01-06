.class public final Landroid/os/statistics/E2EScenarioPerfTracer;
.super Ljava/lang/Object;
.source "E2EScenarioPerfTracer.java"


# static fields
.field private static final VERSION:I = 0x1

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v2, 0x1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortScenario(Landroid/os/Bundle;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/statistics/E2EScenarioPerfTracer$3;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/statistics/E2EScenarioPerfTracer$3;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;IJ)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/E2EScenario;)V
    .registers 2

    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V

    return-void
.end method

.method public static abortScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .registers 10

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$2;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$2;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)V
    .registers 4

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 4

    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static asyncBeginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 14

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    :cond_15
    return-void

    :cond_16
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Landroid/os/statistics/E2EScenarioPerfTracer$1;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;)Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, ""

    invoke-static {p0, p1, v0, p2}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)Landroid/os/Bundle;
    .registers 15

    const/4 v10, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    :cond_b
    return-object v10

    :cond_c
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/os/statistics/E2EScenarioSettings;->isValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    :cond_16
    return-object v10

    :cond_17
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    if-nez v0, :cond_1e

    return-object v10

    :cond_1e
    :try_start_1e
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/app/IPerfShielder;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2e

    move-result-object v1

    return-object v1

    :catch_2e
    move-exception v9

    return-object v10
.end method

.method public static finishScenario(Landroid/os/Bundle;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 10

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v2

    if-nez v2, :cond_a

    return-void

    :cond_a
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-object v0, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroid/os/statistics/E2EScenarioPerfTracer$5;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$5;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;)V
    .registers 3

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 3

    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/statistics/E2EScenarioPerfTracer;->finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V

    return-void
.end method

.method public static finishScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;)V
    .registers 12

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenario;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-object v8, Landroid/os/statistics/E2EScenarioPerfTracer;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroid/os/statistics/E2EScenarioPerfTracer$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/os/statistics/E2EScenarioPerfTracer$4;-><init>(Lcom/android/internal/app/IPerfShielder;Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getVersion()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

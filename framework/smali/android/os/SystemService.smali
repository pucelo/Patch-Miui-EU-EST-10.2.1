.class public Landroid/os/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemService$1;,
        Landroid/os/SystemService$State;
    }
.end annotation


# static fields
.field private static sPropertyLock:Ljava/lang/Object;

.field private static sStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/SystemService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/SystemService$1;

    invoke-direct {v0}, Landroid/os/SystemService$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState(Ljava/lang/String;)Landroid/os/SystemService$State;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init.svc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemService$State;

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    sget-object v2, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    return-object v2
.end method

.method public static isRunning(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStopped(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static restart(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "ctl.restart"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "ctl.start"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "ctl.stop"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs waitForAnyStopped([Ljava/lang/String;)V
    .registers 8

    :goto_0
    sget-object v3, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_4
    array-length v4, p0

    :goto_5
    if-ge v2, v4, :cond_1a

    aget-object v1, p0, v2

    sget-object v5, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {v1}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_21

    move-result v5

    if-eqz v5, :cond_17

    monitor-exit v3

    return-void

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    :try_start_1a
    sget-object v2, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_24
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    :goto_1f
    monitor-exit v3

    goto :goto_0

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_24
    move-exception v0

    goto :goto_1f
.end method

.method public static waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p2

    :goto_6
    sget-object v5, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_9
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_58

    move-result v4

    if-eqz v4, :cond_15

    monitor-exit v5

    return-void

    :cond_15
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-ltz v4, :cond_5b

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " currently "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; waited "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_5b
    :try_start_5b
    sget-object v4, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v4, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_62
    .catchall {:try_start_5b .. :try_end_60} :catchall_58

    :goto_60
    monitor-exit v5

    goto :goto_6

    :catch_62
    move-exception v1

    goto :goto_60
.end method

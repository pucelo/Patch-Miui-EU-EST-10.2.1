.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;
    }
.end annotation


# static fields
.field private static final GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetServiceAccumulatedCallCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sGetServiceAccumulatedUs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogActualTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastSlowLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastStatsLogUptime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sServiceManager:Landroid/os/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    const-string/jumbo v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    const-string/jumbo v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    const-string/jumbo v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    const-string/jumbo v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    :catch_19
    move-exception v0

    const-string/jumbo v2, "ServiceManager"

    const-string/jumbo v3, "error in checkService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .registers 1

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v0

    const-string/jumbo v2, "ServiceManager"

    const-string/jumbo v3, "error in getService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public static getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v1, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static listServices()[Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IServiceManager;->listServices()[Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "ServiceManager"

    const-string/jumbo v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v10, v14, v16

    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long/2addr v14, v10

    long-to-int v12, v14

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_92

    sget-wide v8, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    :goto_28
    sget-object v14, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_2b
    sget v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v13, v12

    sput v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    sget v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    int-to-long v0, v12

    move-wide/from16 v16, v0

    cmp-long v13, v16, v8

    if-ltz v13, :cond_62

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    const-wide/16 v18, 0x1388

    add-long v16, v16, v18

    cmp-long v13, v6, v16

    if-gtz v13, :cond_54

    sget-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    int-to-long v0, v12

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-gez v13, :cond_62

    :cond_54
    div-int/lit16 v13, v12, 0x3e8

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    sput-wide v6, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sput-wide v16, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    :cond_62
    if-eqz v3, :cond_95

    sget v4, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    :goto_66
    sget v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v13, v4, :cond_90

    sget-wide v16, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    const-wide/16 v18, 0x1388

    add-long v16, v16, v18

    cmp-long v13, v6, v16

    if-ltz v13, :cond_90

    sget v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sget v15, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v15, v15, 0x3e8

    sget-wide v16, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    sub-long v16, v6, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    const/4 v13, 0x0

    sput v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    const/4 v13, 0x0

    sput v13, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    sput-wide v6, Landroid/os/ServiceManager;->sLastStatsLogUptime:J
    :try_end_90
    .catchall {:try_start_2b .. :try_end_90} :catchall_98

    :cond_90
    monitor-exit v14

    return-object v2

    :cond_92
    sget-wide v8, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    goto :goto_28

    :cond_95
    :try_start_95
    sget v4, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I
    :try_end_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_98

    goto :goto_66

    :catchall_98
    move-exception v13

    monitor-exit v14

    throw v13
.end method

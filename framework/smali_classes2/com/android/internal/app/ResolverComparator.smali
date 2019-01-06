.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$1;,
        Lcom/android/internal/app/ResolverComparator$AfterCompute;,
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final RESOLVER_RANKER_RESULT_TIMEOUT:I = 0x1

.field private static final RESOLVER_RANKER_SERVICE_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

.field private mAnnotations:[Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurrentTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttp:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRanker:Landroid/service/resolver/IResolverRankerService;

.field private mRankerServiceName:Landroid/content/ComponentName;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolvedRankerName:Landroid/content/ComponentName;

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/app/ResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ResolverComparator$1;-><init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_40
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-void

    :cond_90
    const/4 v1, 0x1

    goto :goto_40
.end method

.method private addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .registers 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v1

    const v2, 0x402379a7    # 2.5543f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    const v3, 0x4035d639

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    const v3, 0x3e89ba5e    # 0.269f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    const v3, 0x40871c43    # 4.2222f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    const v1, 0x3fd41206    # 1.6568f

    sub-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double v2, v4, v2

    double-to-float v1, v2

    invoke-virtual {p1, v1}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    return-void
.end method

.method private initRanker(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_16

    if-eqz v1, :cond_e

    monitor-exit v2

    return-void

    :cond_e
    monitor-exit v2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_19

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_19
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    return v0
.end method

.method private logMetrics(I)V
    .registers 7

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2f

    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v3, 0x43d

    invoke-direct {v1, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-nez v3, :cond_30

    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x43e

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x43f

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method private predictSelectProbabilities(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-nez v2, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_39

    :try_start_11
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v4, v4, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v2, p1, v4}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_2b

    :try_start_1e
    monitor-exit v3

    return-void

    :cond_20
    monitor-exit v3
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_39

    :goto_21
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3

    throw v2
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2e} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2e} :catch_39

    :catch_2e
    move-exception v1

    const-string/jumbo v2, "ResolverComparator"

    const-string/jumbo v3, "Error in Wait for Service Connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_39
    move-exception v0

    const-string/jumbo v2, "ResolverComparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in Predict: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private reset()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->startWatchDog(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->initRanker(Landroid/content/Context;)V

    return-void
.end method

.method private resolveRankerService()Landroid/content/Intent;
    .registers 12

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.service.resolver.ResolverRankerService"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_14

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_14

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_14

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3b
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v7, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d0

    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not require"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - this service will not be queried for ResolverComparator."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " add android:permission=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to the <service> tag for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in the manifest."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_aa} :catch_ac

    goto/16 :goto_14

    :catch_ac
    move-exception v1

    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not look up service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; component name not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_d0
    :try_start_d0
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_117

    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not hold"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - this service will not be queried for ResolverComparator."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_115} :catch_ac

    goto/16 :goto_14

    :cond_117
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2

    :cond_11d
    return-object v10
.end method

.method private setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .registers 6

    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    return-void
.end method

.method private startWatchDog(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    const-string/jumbo v0, "ResolverComparator"

    const-string/jumbo v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .registers 19

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget v12, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_1c

    iget v12, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_1a

    const/4 v12, 0x0

    :goto_19
    return v12

    :cond_1a
    const/4 v12, 0x1

    goto :goto_19

    :cond_1c
    iget v12, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_23

    const/4 v12, -0x1

    return v12

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v12, :cond_3d

    iget v12, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v3

    iget v12, v6, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v7

    if-eq v3, v7, :cond_3d

    if-eqz v3, :cond_3b

    const/4 v12, -0x1

    :goto_3a
    return v12

    :cond_3b
    const/4 v12, 0x1

    goto :goto_3a

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v5

    if-eqz v1, :cond_4d

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_4d

    const/4 v12, -0x1

    return v12

    :cond_4d
    if-nez v1, :cond_53

    if-eqz v5, :cond_53

    const/4 v12, 0x1

    return v12

    :cond_53
    if-nez v1, :cond_a5

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_a5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v12, :cond_a5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/resolver/ResolverTarget;

    if-eqz v4, :cond_a5

    if-eqz v8, :cond_a5

    invoke-virtual {v8}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v12

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_a5

    if-lez v11, :cond_a3

    const/4 v12, 0x1

    :goto_a2
    return v12

    :cond_a3
    const/4 v12, -0x1

    goto :goto_a2

    :cond_a5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_b3

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_b3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_c1

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_c1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    return v12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

.method public compute(Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverComparator;->reset()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v6, 0x2932e00

    sub-long v18, v4, v6

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_18
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v20, Landroid/service/resolver/ResolverTarget;

    invoke-direct/range {v20 .. v20}, Landroid/service/resolver/ResolverTarget;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    if-eqz v15, :cond_18

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static/range {v22 .. v22}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_80

    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    sub-long v4, v4, v18

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v0, v4

    move/from16 v17, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    cmpl-float v2, v17, v13

    if-lez v2, :cond_80

    move/from16 v13, v17

    :cond_80
    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    long-to-float v0, v4

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    cmpl-float v2, v24, v14

    if-lez v2, :cond_94

    move/from16 v14, v24

    :cond_94
    iget v2, v15, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v10, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    cmpl-float v2, v10, v12

    if-lez v2, :cond_a1

    move v12, v10

    :cond_a1
    const/4 v8, 0x0

    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v2, :cond_110

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_110

    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_110

    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v2, :cond_110

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v0, v2

    move/from16 v21, v0

    const/4 v9, 0x0

    :goto_e6
    move/from16 v0, v21

    if-ge v9, v0, :cond_110

    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v4, v4, v9

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    :cond_110
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    cmpl-float v2, v8, v11

    if-lez v2, :cond_18

    move v11, v8

    goto/16 :goto_18

    :cond_11c
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_135
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_169

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    div-float v16, v2, v13

    mul-float v2, v16, v16

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v2

    div-float v5, v2, v12

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    div-float v6, v2, v14

    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    div-float v7, v2, v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    goto :goto_135

    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    :cond_25
    return-void
.end method

.method public getContentAnnotations(Landroid/content/Intent;)V
    .registers 7

    const-string/jumbo v3, "android.intent.extra.CONTENT_ANNOTATIONS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    const/4 v2, 0x3

    :cond_11
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_25

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_25
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .registers 4

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .registers 12

    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_66

    if-eqz v6, :cond_48

    :try_start_7
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_48

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v6, :cond_48

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v3

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3e
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverComparator;->logMetrics(I)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v6, v8, v2}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_48} :catch_4a
    .catchall {:try_start_7 .. :try_end_48} :catchall_66

    :cond_48
    :goto_48
    monitor-exit v7

    return-void

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string/jumbo v6, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in Train: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_66

    goto :goto_48

    :catchall_66
    move-exception v6

    monitor-exit v7

    throw v6
.end method

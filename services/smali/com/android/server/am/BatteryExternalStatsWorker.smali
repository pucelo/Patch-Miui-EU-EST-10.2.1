.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryExternalStatsWorker$1;,
        Lcom/android/server/am/BatteryExternalStatsWorker$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;->$INST$0:Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v3, Landroid/net/wifi/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    new-array v9, v2, [J

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    aput-wide v10, v9, v2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v15}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_4

    return-object v6

    :cond_4
    const-wide/16 v4, 0x7d0

    :try_start_6
    invoke-virtual {p0, v4, v5}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_20

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v4, "controller_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    :cond_20
    const-string/jumbo v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no controller energy info supplied for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v6

    :catch_3f
    move-exception v1

    const-string/jumbo v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeout reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stats"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 32

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    move-wide/from16 v28, v0

    sub-long v20, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v8, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v26

    move/from16 v0, v26

    iput v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v26, v0

    sub-long v24, v26, v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v26, v0

    sub-long v18, v26, v12

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v26, v0

    sub-long v6, v26, v10

    const-wide/16 v26, 0x0

    cmp-long v26, v24, v26

    if-ltz v26, :cond_74

    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-gez v26, :cond_bf

    :cond_74
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    const-string/jumbo v26, "BatteryExternalStatsWorker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    return-object v4

    :cond_bf
    add-long v22, v24, v18

    cmp-long v26, v22, v20

    if-lez v26, :cond_1c4

    const-wide/16 v16, 0x0

    const-wide/16 v26, 0x2ee

    add-long v26, v26, v20

    cmp-long v26, v22, v26

    if-lez v26, :cond_194

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Total Active time "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " is longer than sample period "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, ".\n"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Previous WiFi snapshot: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "idle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " rx="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " tx="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " e="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v26, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Current WiFi snapshot: "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "idle="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " rx="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " tx="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v26, " e="

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v26, "BatteryExternalStatsWorker"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    :goto_194
    move-wide/from16 v0, v24

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    move-wide/from16 v0, v18

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    move-wide/from16 v0, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    const-wide/16 v26, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    move-wide/from16 v28, v0

    sub-long v28, v28, v8

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    goto/16 :goto_b8

    :cond_1c4
    sub-long v16, v20, v22

    goto :goto_194
.end method

.method static synthetic lambda$-com_android_server_am_BatteryExternalStatsWorker_2654(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "batterystats-worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_27

    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    :cond_27
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;I)V
    .registers 23

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v3, :cond_1d

    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v3, :cond_38

    :try_start_23
    new-instance v18, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "wifi"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_157

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_36} :catch_15a

    move-object/from16 v17, v18

    :cond_38
    :goto_38
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_4d

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_4d

    new-instance v12, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "bluetooth"

    invoke-direct {v12, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    :cond_4d
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_78

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_63

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_78

    new-instance v15, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "telephony"

    invoke-direct {v15, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v15}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    :cond_78
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiActivityEnergyInfo;

    invoke-static {v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {v15}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/telephony/ModemActivityInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/16 v8, 0xe

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_bf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    :cond_bf
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    :cond_ca
    if-eqz v11, :cond_d9

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    :try_end_d9
    .catchall {:try_start_91 .. :try_end_d9} :catchall_11c

    :cond_d9
    :goto_d9
    monitor-exit v19

    if-eqz v16, :cond_f1

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_11f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    :cond_f1
    :goto_f1
    if-eqz v14, :cond_100

    invoke-virtual {v14}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_13c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v14}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    :cond_100
    :goto_100
    return-void

    :cond_101
    :try_start_101
    const-string/jumbo v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bluetooth info is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_101 .. :try_end_11b} :catchall_11c

    goto :goto_d9

    :catchall_11c
    move-exception v3

    monitor-exit v19

    throw v3

    :cond_11f
    const-string/jumbo v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi info is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    :cond_13c
    const-string/jumbo v3, "BatteryExternalStatsWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modem info is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :catch_157
    move-exception v13

    goto/16 :goto_38

    :catch_15a
    move-exception v13

    move-object/from16 v17, v18

    goto/16 :goto_38
.end method


# virtual methods
.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_29

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

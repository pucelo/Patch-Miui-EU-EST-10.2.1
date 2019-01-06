.class Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-void
.end method

.method private getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J
    .registers 18

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v12, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v13, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-wide v2

    return-wide v2

    :catch_1e
    move-exception v0

    const-wide/16 v2, 0x0

    return-wide v2
.end method


# virtual methods
.method protected checkStats()Z
    .registers 8

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v5, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v6, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v3

    const/4 v2, 0x0

    :goto_b
    array-length v4, v3

    if-ge v2, v4, :cond_25

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-object v4, v4, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    aget v5, v3, v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-wide v4, v4, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_22

    const/4 v4, 0x1

    return v4

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    return v4
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mUidSnapshot:Landroid/net/NetworkStats;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveUidIfaces:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mVpnArray:[Lcom/android/internal/net/VpnInfo;

    iget-wide v4, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    return-void
.end method

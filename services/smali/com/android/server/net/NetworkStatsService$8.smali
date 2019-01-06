.class Lcom/android/server/net/NetworkStatsService$8;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessLevel:I

.field private final mCallingPackage:Ljava/lang/String;

.field private final mCallingUid:I

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->val$callingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get6(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    :cond_17
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .registers 3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get7(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    :cond_17
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 16

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v9, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .registers 9

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v4, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v5, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 20

    if-nez p4, :cond_20

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iget v12, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v13, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    const/4 v3, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v1

    iget v12, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v13, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    const/4 v3, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .registers 26

    if-nez p4, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    return-object v2

    :cond_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v2

    return-object v2

    :cond_4a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService$8;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot access tag information from a different uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRelevantUids()[I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .registers 19

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v6, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v9

    if-eqz p6, :cond_25

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$8;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iget v6, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v7, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    return-object v9

    :catch_26
    move-exception v8

    const-string/jumbo v0, "NetworkStats"

    const-string/jumbo v1, "NullPointerException in getSummaryForAllUid"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v8
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 16

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v3, p0, Lcom/android/server/net/NetworkStatsService$8;->val$flags:I

    iget v8, p0, Lcom/android/server/net/NetworkStatsService$8;->mAccessLevel:I

    iget v9, p0, Lcom/android/server/net/NetworkStatsService$8;->mCallingUid:I

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

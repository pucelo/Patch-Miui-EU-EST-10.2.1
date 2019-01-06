.class public Lmiui/securitycenter/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source "MiuiNetworkSessionStats.java"


# instance fields
.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    return-void
.end method

.method private buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkTemplate;",
            "JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v2, 0x0

    return-object v2

    :cond_b
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_22

    move-result-object v12

    :goto_18
    if-eqz v12, :cond_20

    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-nez v2, :cond_27

    :cond_20
    const/4 v2, 0x0

    return-object v2

    :catch_22
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :cond_27
    new-instance v13, Landroid/util/SparseArray;

    const/16 v2, 0xff

    invoke-direct {v13, v2}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v19, Landroid/net/NetworkStats$Entry;

    invoke-direct/range {v19 .. v19}, Landroid/net/NetworkStats$Entry;-><init>()V

    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v18

    const/4 v11, 0x0

    :goto_38
    move/from16 v0, v18

    if-ge v11, v0, :cond_e3

    move-object/from16 v0, v19

    invoke-virtual {v12, v11, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v10

    if-nez v10, :cond_47

    :goto_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_38

    :cond_47
    iget v0, v10, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map;

    if-nez v20, :cond_60

    invoke-direct/range {p0 .. p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildStatsMap()Ljava/util/Map;

    move-result-object v20

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_60
    iget v2, v10, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a3

    const-string/jumbo v2, "txForegroundBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v24, v2, v4

    const-string/jumbo v2, "txForegroundBytes"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "rxForegroundBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v16, v2, v4

    const-string/jumbo v2, "rxForegroundBytes"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    const-string/jumbo v2, "txBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v22, v2, v4

    const-string/jumbo v2, "txBytes"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "rxBytes"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long v14, v2, v4

    const-string/jumbo v2, "rxBytes"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_44

    :cond_e3
    return-object v13
.end method

.method private buildStatsMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "rxForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "txForegroundBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "txBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rxBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .registers 2

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    .registers 14

    const/4 v1, 0x2

    new-array v7, v1, [J

    new-instance v6, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    if-eqz p1, :cond_2b

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2c

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const/4 v1, 0x0

    aput-wide v2, v7, v1

    :goto_1e
    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_32

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const/4 v1, 0x1

    aput-wide v2, v7, v1

    :cond_2b
    :goto_2b
    return-object v7

    :cond_2c
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    aput-wide v2, v7, v1

    goto :goto_1e

    :cond_32
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    aput-wide v2, v7, v1

    goto :goto_2b
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeSession()V
    .registers 4

    iget-object v2, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v2, :cond_9

    :try_start_4
    iget-object v2, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_c

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    throw v1

    :catch_c
    move-exception v0

    goto :goto_9
.end method

.method public forceUpdate()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .registers 18

    const/4 v0, 0x2

    new-array v9, v0, [J

    :try_start_3
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v9

    :cond_a
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1d

    move-result-object v9

    :goto_1c
    return-object v9

    :catch_1d
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c
.end method

.method public getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .registers 16

    const-wide/16 v8, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result-wide v8

    :cond_f
    :goto_f
    return-wide v8

    :catch_10
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .registers 16

    const-wide/16 v8, 0x0

    :try_start_2
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result-wide v8

    :cond_f
    :goto_f
    return-wide v8

    :catch_10
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public getWifiHistoryForUid(IJJ)[J
    .registers 16

    const/4 v0, 0x2

    new-array v9, v0, [J

    :try_start_3
    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v9

    :cond_a
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getHistoryStats(Landroid/net/NetworkStatsHistory;JJ)[J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1c

    move-result-object v9

    :goto_1b
    return-object v9

    :catch_1c
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->buildNetworkStatsMap(Landroid/net/NetworkTemplate;JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public openSession()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

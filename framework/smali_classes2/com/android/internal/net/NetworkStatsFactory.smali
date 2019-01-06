.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field private static final IPV4V6_HEADER_DELTA:I = 0x14

.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStackedIfaces"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, -0x1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_18
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_22} :catch_d9
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_d9
    .catchall {:try_start_18 .. :try_end_22} :catchall_74

    :try_start_22
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    :goto_25
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_d2

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    add-int/lit8 v8, v3, 0x1

    if-eq v2, v8, :cond_7c

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "inconsistent idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " after lastIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_58} :catch_58
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_58} :catch_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_cf

    :catch_58
    move-exception v0

    move-object v4, v5

    :goto_5a
    :try_start_5a
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v8

    :goto_75
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    :cond_7c
    move v3, v2

    :try_start_7d
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    if-eqz p2, :cond_bb

    iget-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    :cond_bb
    if-eq p1, v11, :cond_c1

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v8, :cond_ca

    :cond_c1
    if-eq p3, v11, :cond_c7

    iget v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v8, :cond_ca

    :cond_c7
    invoke-virtual {v7, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_ca
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_cd
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_cd} :catch_58
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_cd} :catch_58
    .catchall {:try_start_7d .. :try_end_cd} :catchall_cf

    goto/16 :goto_25

    :catchall_cf
    move-exception v8

    move-object v4, v5

    goto :goto_75

    :cond_d2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v7

    :catch_d9
    move-exception v0

    goto :goto_5a
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v1, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v1

    if-eqz p1, :cond_c

    :try_start_5
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    sget-object v0, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1f

    move-object v0, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    :goto_a
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    goto :goto_a

    :cond_2a
    return-object v0
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 9

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-eq v3, v4, :cond_37

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", actual size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_37
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3a
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_81

    invoke-virtual {p1, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    invoke-virtual {p2, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", actual row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_81
    return-void
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v23

    sget-object v8, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_7
    new-instance v22, Landroid/util/ArrayMap;

    sget-object v7, Lcom/android/internal/net/NetworkStatsFactory;->sStackedIfaces:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_4a

    monitor-exit v8

    new-instance v4, Landroid/net/NetworkStats;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-direct {v4, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_20
    invoke-virtual/range {v23 .. v23}, Landroid/net/NetworkStats;->size()I

    move-result v7

    move/from16 v0, v21

    if-ge v0, v7, :cond_cf

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v7, :cond_47

    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v8, "v4-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4d

    :cond_47
    :goto_47
    add-int/lit8 v21, v21, 0x1

    goto :goto_20

    :catchall_4a
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_4d
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_47

    new-instance v5, Landroid/net/NetworkStats$Entry;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v14, 0x14

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v14, 0x14

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto/16 :goto_47

    :cond_cf
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-object v23
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v7, 0x6

    invoke-direct {v6, v8, v9, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v3, 0x0

    :try_start_14
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_20} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_a0
    .catchall {:try_start_14 .. :try_end_20} :catchall_8c

    :goto_20
    :try_start_20
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, v2, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v7, -0x1

    iput v7, v2, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v7, 0x0

    iput v7, v2, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v7

    if-eqz v7, :cond_94

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    if-eqz v0, :cond_7a

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    :cond_7a
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_80
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_80} :catch_81
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_80} :catch_81
    .catchall {:try_start_20 .. :try_end_80} :catchall_9d

    goto :goto_20

    :catch_81
    move-exception v1

    move-object v3, v4

    :goto_83
    :try_start_83
    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "problem parsing stats"

    invoke-direct {v7, v8, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v7

    :goto_8d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    :cond_94
    const/4 v0, 0x0

    goto :goto_3c

    :cond_96
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v6

    :catchall_9d
    move-exception v7

    move-object v3, v4

    goto :goto_8d

    :catch_a0
    move-exception v1

    goto :goto_83
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x0

    return-object v6

    :cond_e
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    :try_start_1e
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_2a} :catch_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2a} :catch_7e
    .catchall {:try_start_1e .. :try_end_2a} :catchall_6c

    :try_start_2a
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    :goto_2d
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_60
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_60} :catch_61
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_60} :catch_61
    .catchall {:try_start_2a .. :try_end_60} :catchall_7b

    goto :goto_2d

    :catch_61
    move-exception v0

    move-object v2, v3

    :goto_63
    :try_start_63
    new-instance v6, Ljava/net/ProtocolException;

    const-string/jumbo v7, "problem parsing stats"

    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v6

    :goto_6d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    :cond_74
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v5

    :catchall_7b
    move-exception v6

    move-object v2, v3

    goto :goto_6d

    :catch_7e
    move-exception v0

    goto :goto_63
.end method

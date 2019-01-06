.class Landroid/os/statistics/SystemServerLockStatistics;
.super Ljava/lang/Object;
.source "SystemServerLockStatistics.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20

.field private static volatile filter:Landroid/os/statistics/PerfEventFilter;

.field private static final lockHolds:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MonitorSuperviser$SingleLockHold;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempLockHolds:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempLockWaits:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x20

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized report(Landroid/os/statistics/FastPerfEventList;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;J)V"
        }
    .end annotation

    const-class v7, Landroid/os/statistics/SystemServerLockStatistics;

    monitor-enter v7

    :try_start_3
    iget v4, p0, Landroid/os/statistics/FastPerfEventList;->size:I

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_37

    iget-object v6, p0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v2, v6, v3

    if-nez v2, :cond_11

    :cond_e
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    instance-of v6, v2, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    if-eqz v6, :cond_2d

    move-object v0, v2

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    move-object v5, v0

    iget-wide v8, v5, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->endUptimeMillis:J

    iget-wide v10, v5, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->beginUptimeMillis:J

    sub-long/2addr v8, v10

    sget-wide v10, Landroid/os/AnrMonitor;->LOCK_WAIT_THRESHOLD:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_e

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6, v5}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_e

    :catchall_2a
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2d
    :try_start_2d
    instance-of v6, v2, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    if-eqz v6, :cond_e

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6, v2}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_e

    :cond_37
    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    sget-object v8, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-static {v6, v8, p1, p2}, Landroid/os/statistics/SystemServerLockStatistics;->reportLocks(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;J)V

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6}, Landroid/os/statistics/FastPerfEventList;->clear()V

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockWaits:Landroid/os/statistics/FastPerfEventList;

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v6}, Landroid/os/statistics/FastPerfEventList;->clear()V

    sget-object v6, Landroid/os/statistics/SystemServerLockStatistics;->tempLockHolds:Landroid/os/statistics/FastPerfEventList;

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_2a

    monitor-exit v7

    return-void
.end method

.method private static declared-synchronized reportLocks(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;J)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;J)V"
        }
    .end annotation

    const-class v19, Landroid/os/statistics/SystemServerLockStatistics;

    monitor-enter v19

    :try_start_3
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    if-nez v18, :cond_14

    new-instance v18, Landroid/os/statistics/PerfEventFilter;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEventFilter;-><init>(Z)V

    sput-object v18, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    :cond_14
    sget-object v3, Landroid/os/statistics/SystemServerLockStatistics;->filter:Landroid/os/statistics/PerfEventFilter;

    sget-object v8, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/statistics/PerfEventFilter;->filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V

    const/4 v12, 0x0

    :goto_22
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_4a

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    aget-object v9, v18, v12

    instance-of v0, v9, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    move/from16 v18, v0

    if-eqz v18, :cond_47

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    check-cast v9, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    :cond_47
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    :cond_4a
    const/4 v13, 0x0

    :goto_4b
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_be

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    aget-object v9, v18, v13

    instance-of v0, v9, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    move/from16 v18, v0

    if-nez v18, :cond_6a

    :goto_67
    add-int/lit8 v13, v13, 0x1

    goto :goto_4b

    :cond_6a
    move-object v0, v9

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->resolveLazyInfo()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_78
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_b2

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/statistics/FastPerfEventList;->get(I)Landroid/os/statistics/PerfEvent;

    move-result-object v14

    check-cast v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-virtual {v2, v14}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v18

    if-eqz v18, :cond_af

    add-int/lit8 v3, v3, 0x1

    iget-wide v0, v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->endUptimeMillis:J

    move-wide/from16 v20, v0

    iget-wide v0, v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->beginUptimeMillis:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;->beginUptimeMillis:J

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    sub-long v10, v20, v22

    add-long/2addr v4, v10

    cmp-long v18, v10, v6

    if-lez v18, :cond_af

    move-wide v6, v10

    move-object v8, v14

    :cond_af
    add-int/lit8 v15, v15, 0x1

    goto :goto_78

    :cond_b2
    if-eqz v8, :cond_b7

    invoke-virtual {v8}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->resolveLazyInfo()V

    :cond_b7
    invoke-static/range {v2 .. v8}, Landroid/os/AnrMonitor;->checkLockWaitTime(Landroid/os/statistics/MonitorSuperviser$SingleLockWait;IJJLandroid/os/statistics/MonitorSuperviser$SingleLockHold;)V
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_bb

    goto :goto_67

    :catchall_bb
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_be
    :try_start_be
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v18 .. v18}, Landroid/os/statistics/FastPerfEventList;->clear()V

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->tempCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v20, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v16

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    :goto_dc
    if-ltz v12, :cond_106

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/statistics/FastPerfEventList;->get(I)Landroid/os/statistics/PerfEvent;

    move-result-object v14

    check-cast v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    iget-wide v0, v14, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;->endUptimeMillis:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    sub-long v22, v16, v22

    cmp-long v18, v20, v22

    if-gez v18, :cond_103

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v18, v0

    check-cast v18, [Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    const/16 v20, 0x0

    aput-object v20, v18, v12

    :cond_103
    add-int/lit8 v12, v12, -0x1

    goto :goto_dc

    :cond_106
    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v18 .. v18}, Landroid/os/statistics/FastPerfEventList;->compact()V

    sget-object v18, Landroid/os/statistics/SystemServerLockStatistics;->lockHolds:Landroid/os/statistics/FastPerfEventList;

    const/16 v20, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V
    :try_end_116
    .catchall {:try_start_be .. :try_end_116} :catchall_bb

    monitor-exit v19

    return-void
.end method

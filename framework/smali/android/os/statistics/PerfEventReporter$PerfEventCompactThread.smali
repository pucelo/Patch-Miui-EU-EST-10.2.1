.class Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
.super Ljava/lang/Thread;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfEventCompactThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;


# instance fields
.field private latestFilterUptimeMillis:J

.field private final mCompletedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

.field private mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

.field private final mRootEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingParcel:Landroid/os/Parcel;

.field private final mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final perfEventFilter:Landroid/os/statistics/PerfEventFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    invoke-direct {v0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/16 v2, 0x20

    const-string/jumbo v0, "Binder:perf-event-compact"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/PerfEvent;

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/PerfEventFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/statistics/PerfEventFilter;-><init>(Z)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    return-void
.end method

.method private fetchPerfEventsFromBuffer()V
    .registers 12

    const/4 v10, 0x0

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    if-nez v1, :cond_d

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->-wrap0()[Landroid/os/statistics/PerfEvent;

    move-result-object v7

    iput-object v7, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    iget-object v1, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventFetchingBuffer:[Landroid/os/statistics/PerfEvent;

    :cond_d
    invoke-static {v1}, Landroid/os/statistics/PerfEventReporter;->-wrap1([Landroid/os/statistics/PerfEvent;)I

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_6b

    aget-object v4, v1, v2

    aput-object v10, v1, v2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v7

    if-eqz v7, :cond_47

    const-string/jumbo v7, "MiuiPerfSuperviser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fetched: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->isConcerned()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->fillInCurrentProcessId()V

    instance-of v7, v4, Landroid/os/statistics/MicroscopicEvent;

    if-eqz v7, :cond_67

    move-object v3, v4

    check-cast v3, Landroid/os/statistics/MicroscopicEvent;

    invoke-virtual {v3}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-virtual {v5, v3}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_63
    invoke-virtual {v6, v3}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_60

    :cond_67
    invoke-virtual {v6, v4}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_60

    :cond_6b
    return-void
.end method

.method private getEarliestBeginUptimeMillis(Landroid/os/statistics/FastPerfEventList;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;)J"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_6
    iget v4, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v2, v4, :cond_1d

    iget-object v4, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v4, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v3, v4, v2

    if-eqz v3, :cond_1a

    iget-wide v4, v3, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1a

    iget-wide v0, v3, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    return-wide v0
.end method

.method public static getInstance()Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
    .registers 1

    sget-object v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sInstance:Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    return-object v0
.end method

.method private loopOnce()V
    .registers 25

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    const/16 v6, -0xa

    invoke-static {v5, v6}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    const-wide/16 v18, 0x0

    const-wide/16 v12, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-gtz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-lez v5, :cond_36

    :cond_1d
    const/16 v20, 0x3e8

    :goto_1f
    invoke-static/range {v20 .. v20}, Landroid/os/statistics/PerfEventReporter;->-wrap3(I)V

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    sub-long v6, v18, v6

    const-wide/16 v22, 0x7d0

    cmp-long v5, v6, v22

    if-gez v5, :cond_46

    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->fetchPerfEventsFromBuffer()V

    goto :goto_d

    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    invoke-virtual {v5}, Landroid/os/statistics/PerfEventFilter;->hasPendingPerfEvents()Z

    move-result v5

    if-eqz v5, :cond_43

    const/16 v20, 0x7d0

    goto :goto_1f

    :cond_43
    const/16 v20, -0x1

    goto :goto_1f

    :cond_46
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->-wrap2()J

    move-result-wide v12

    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->fetchPerfEventsFromBuffer()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->getEarliestBeginUptimeMillis(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v5

    if-eqz v5, :cond_74

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-static {v5, v8, v9}, Landroid/os/statistics/SystemServerLockStatistics;->report(Landroid/os/statistics/FastPerfEventList;J)V

    :cond_74
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->perfEventFilter:Landroid/os/statistics/PerfEventFilter;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual/range {v5 .. v10}, Landroid/os/statistics/PerfEventFilter;->filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10c

    invoke-direct/range {p0 .. p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->obtainPerfEventSocketFd()V

    const/4 v11, 0x0

    :goto_95
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    iget v5, v5, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v11, v5, :cond_10c

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v5, v5, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    aget-object v4, v5, v11

    instance-of v5, v4, Landroid/os/statistics/LooperOnce;

    if-nez v5, :cond_ad

    instance-of v5, v4, Landroid/os/statistics/LooperCheckPoint;

    if-eqz v5, :cond_b0

    :cond_ad
    :goto_ad
    add-int/lit8 v11, v11, 0x1

    goto :goto_95

    :cond_b0
    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->fillInCurrentProcessInfo()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataSize(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    iget v6, v4, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->sendPerfEventParcel(Landroid/os/Parcel;)Z

    move-result v16

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v5

    if-eqz v5, :cond_108

    if-nez v16, :cond_108

    const-string/jumbo v5, "MiuiPerfSuperviser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to send by PerfEventReporter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/statistics/PerfEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    invoke-static {v4}, Landroid/os/AnrMonitor;->checkPerfEvent(Landroid/os/statistics/PerfEvent;)V

    goto :goto_ad

    :cond_10c
    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v5

    if-eqz v5, :cond_148

    const/16 v17, 0x100

    :goto_114
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mRootEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSuspectedEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v5}, Landroid/os/statistics/FastPerfEventList;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mCompletedEvents:Landroid/os/statistics/FastPerfEventList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_148
    const/16 v17, 0x40

    goto :goto_114
.end method

.method private obtainPerfEventSocketFd()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_20

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getService()Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    :try_start_c
    invoke-interface {v1}, Lcom/android/internal/app/IPerfShielder;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_21

    :cond_12
    :goto_12
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_32

    :cond_1e
    :goto_1e
    iput-object v4, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    :cond_20
    return-void

    :catch_21
    move-exception v0

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "MiuiPerfSuperviser"

    const-string/jumbo v3, "Failed to get perf event socket fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_32
    iget-object v2, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_20

    goto :goto_1e
.end method

.method private sendPerfEventParcel(Landroid/os/Parcel;)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_5a

    const/4 v3, 0x0

    :goto_7
    const/4 v5, 0x6

    if-ge v3, v5, :cond_5a

    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    const/16 v6, 0x1000

    invoke-static {v5, p1, v6}, Landroid/os/statistics/PerfEventSocket;->sendPerfEvent(ILandroid/os/Parcel;I)I

    move-result v4

    if-ltz v4, :cond_1e

    const/4 v5, 0x1

    return v5

    :cond_1e
    neg-int v0, v4

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string/jumbo v5, "MiuiPerfSuperviser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to send perf event to perf event socket, errno: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v5, :cond_47

    sget v5, Landroid/system/OsConstants;->EINTR:I

    if-ne v0, v5, :cond_52

    :cond_47
    :try_start_47
    div-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4f} :catch_68

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_52
    sget v5, Landroid/system/OsConstants;->EMSGSIZE:I

    if-eq v0, v5, :cond_5a

    sget v5, Landroid/system/OsConstants;->ENOMEM:I

    if-ne v0, v5, :cond_5b

    :cond_5a
    :goto_5a
    return v8

    :cond_5b
    :try_start_5b
    iget-object v5, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_63

    :goto_60
    iput-object v9, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mPerfEventSocketFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_5a

    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :catch_68
    move-exception v2

    goto :goto_4f
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/statistics/PerfSuperviser;->setThreadPerfSupervisionOn(Z)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    iget-object v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->mSendingParcel:Landroid/os/Parcel;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->latestFilterUptimeMillis:J

    :goto_17
    invoke-direct {p0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->loopOnce()V

    goto :goto_17
.end method

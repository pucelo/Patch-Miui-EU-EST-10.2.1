.class public Landroid/os/statistics/PerfEventFilter;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x40

.field private static final DEFAULT_SUSPECTED_CAPACITY:I = 0x80


# instance fields
.field private final effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final isAppSideFilter:Z

.field private lastBatchBeginTimeMillis:J

.field private nativeBacktraceMapUpdated:Z

.field private final suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MicroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/MacroscopicEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;
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
.method public constructor <init>(Z)V
    .registers 6

    const/16 v3, 0x40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MacroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    new-instance v0, Landroid/os/statistics/FastPerfEventList;

    const-class v1, Landroid/os/statistics/MicroscopicEvent;

    invoke-direct {v0, v1, v3}, Landroid/os/statistics/FastPerfEventList;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iput-boolean p1, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    return-void
.end method

.method private addCompletedEvent(Landroid/os/statistics/MicroscopicEvent;)V
    .registers 10

    iget-boolean v4, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    :cond_7
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v1, v4, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v1, [Landroid/os/statistics/MicroscopicEvent;

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v4, v4, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/lit8 v2, v4, -0x1

    :goto_14
    if-ltz v2, :cond_2d

    aget-object v0, v1, v2

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_23

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_23
    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5b

    add-int/lit8 v3, v2, 0x1

    :cond_2d
    :goto_2d
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v4, v3, p1}, Landroid/os/statistics/FastPerfEventList;->add(ILandroid/os/statistics/PerfEvent;)V

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string/jumbo v4, "MiuiPerfSuperviser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "completed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void

    :cond_5b
    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isRootEvent()Z

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v4

    if-gtz v4, :cond_6c

    add-int/lit8 v3, v2, 0x1

    goto :goto_2d

    :cond_6c
    invoke-virtual {v0}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isMasterEvent()Z

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v4

    if-gtz v4, :cond_20

    add-int/lit8 v3, v2, 0x1

    goto :goto_2d
.end method

.method private checkEffectivePerfEvent(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v3, :cond_22

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->hasNativeStack()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->updateBacktraceMap()I

    iput-boolean v8, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    :cond_18
    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isMeaningful()Z

    move-result v3

    if-nez v3, :cond_22

    return v4

    :cond_22
    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->hasPeerBlockingEvent()Z

    move-result v3

    if-eqz v3, :cond_38

    iget-boolean v3, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v3, :cond_32

    invoke-virtual {p1}, Landroid/os/statistics/MicroscopicEvent;->isBlockedBySameProcess()Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_32
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v3, p1}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    :cond_37
    return v8

    :cond_38
    const/4 v0, 0x0

    :goto_39
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v3, v3, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v0, v3, :cond_54

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v2, v3, v0

    if-nez v2, :cond_4c

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4c
    iget-wide v4, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_55

    :cond_54
    return v8

    :cond_55
    iget-wide v4, v2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v6, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_49

    invoke-virtual {v2}, Landroid/os/statistics/MicroscopicEvent;->isPeerBlockingEvent()Z

    move-result v3

    if-nez v3, :cond_86

    invoke-direct {p0, p1, v2}, Landroid/os/statistics/PerfEventFilter;->isIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v1

    :goto_67
    if-eqz v1, :cond_49

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aput-object v9, v3, v0

    iget v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_80

    iget v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    iget v4, p1, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    iput v3, v2, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    :cond_80
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v3, v2}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto :goto_49

    :cond_86
    const/4 v1, 0x0

    goto :goto_67
.end method

.method private checkEffectivePerfEvents(II)V
    .registers 8

    const/4 v4, 0x0

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_25

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v0, v3, v1

    if-nez v0, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvent(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v2

    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v3, v3, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v3, [Landroid/os/statistics/MicroscopicEvent;

    aput-object v4, v3, v1

    if-eqz v2, :cond_22

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->addCompletedEvent(Landroid/os/statistics/MicroscopicEvent;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    return-void
.end method

.method private checkEventWaitingBlockingPeer(Landroid/os/statistics/MicroscopicEvent;J)Z
    .registers 38

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    move-wide/from16 v24, v0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    move-object/from16 v17, v0

    check-cast v17, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v15, 0x0

    :goto_2b
    move/from16 v0, v27

    if-ge v15, v0, :cond_40

    aget-object v26, v17, v15

    if-nez v26, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    :cond_36
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v8

    if-ltz v28, :cond_9a

    :cond_40
    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    sub-long v6, v8, v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    move/from16 v28, v0

    if-eqz v28, :cond_12f

    move-wide/from16 v22, v6

    const-wide/16 v28, 0x7d0

    cmp-long v28, v6, v28

    if-gez v28, :cond_5a

    const-wide/16 v22, 0x7d0

    :cond_5a
    :goto_5a
    const/16 v28, 0x1

    shr-long v28, v6, v28

    const/16 v30, 0x2

    shr-long v30, v6, v30

    add-long v28, v28, v30

    const/16 v30, 0x3

    shr-long v30, v6, v30

    add-long v28, v28, v30

    const/16 v30, 0x4

    shr-long v30, v6, v30

    add-long v20, v28, v30

    invoke-virtual/range {p1 .. p1}, Landroid/os/statistics/MicroscopicEvent;->hasMultiplePeerBlockingEvents()Z

    move-result v28

    if-eqz v28, :cond_143

    const/16 v28, 0x1

    shr-long v28, v6, v28

    const/16 v30, 0x2

    shr-long v30, v6, v30

    add-long v28, v28, v30

    const/16 v30, 0x4

    shr-long v30, v6, v30

    add-long v18, v28, v30

    cmp-long v28, v10, v18

    if-gez v28, :cond_13d

    cmp-long v28, v24, v20

    if-ltz v28, :cond_140

    const/4 v14, 0x1

    :goto_8f
    if-nez v14, :cond_97

    add-long v28, v8, v22

    cmp-long v28, v28, p2

    if-gez v28, :cond_14d

    :cond_97
    const/16 v28, 0x1

    :goto_99
    return v28

    :cond_9a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v28, v0

    cmp-long v28, v28, v4

    if-lez v28, :cond_33

    invoke-virtual/range {v26 .. v26}, Landroid/os/statistics/MicroscopicEvent;->isPeerBlockingEvent()Z

    move-result v28

    if-eqz v28, :cond_11e

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/statistics/MicroscopicEvent;->isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v28

    if-eqz v28, :cond_11e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/os/statistics/PerfEventFilter;->isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v16

    :goto_be
    if-eqz v16, :cond_33

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v32, v0

    cmp-long v28, v28, v32

    if-ltz v28, :cond_121

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    :goto_dc
    sub-long v12, v30, v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/statistics/MicroscopicEvent;->hasMultiplePeerBlockingEvents()Z

    move-result v28

    if-eqz v28, :cond_128

    add-long v24, v24, v12

    :cond_e6
    :goto_e6
    cmp-long v28, v10, v12

    if-gez v28, :cond_eb

    move-wide v10, v12

    :cond_eb
    const/16 v28, 0x0

    aput-object v28, v17, v15

    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    if-nez v28, :cond_10f

    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x3

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    goto/16 :goto_33

    :cond_11e
    const/16 v16, 0x0

    goto :goto_be

    :cond_121
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v28, v0

    goto :goto_dc

    :cond_128
    cmp-long v28, v24, v12

    if-gez v28, :cond_e6

    move-wide/from16 v24, v12

    goto :goto_e6

    :cond_12f
    const/16 v28, 0x1

    shl-long v22, v6, v28

    const-wide/16 v28, 0x2710

    cmp-long v28, v22, v28

    if-gez v28, :cond_5a

    const-wide/16 v22, 0x2710

    goto/16 :goto_5a

    :cond_13d
    const/4 v14, 0x1

    goto/16 :goto_8f

    :cond_140
    const/4 v14, 0x0

    goto/16 :goto_8f

    :cond_143
    cmp-long v28, v24, v20

    if-ltz v28, :cond_14a

    const/4 v14, 0x1

    goto/16 :goto_8f

    :cond_14a
    const/4 v14, 0x0

    goto/16 :goto_8f

    :cond_14d
    const/16 v28, 0x0

    goto/16 :goto_99
.end method

.method private checkEventsWaitingBlockingPeer(IIJ)V
    .registers 12

    const/4 v5, 0x0

    move v1, p1

    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget-object v2, v4, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v2, [Landroid/os/statistics/MicroscopicEvent;

    :goto_8
    if-ge v1, p2, :cond_1c

    aget-object v0, v2, v1

    if-nez v0, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    invoke-direct {p0, v0, p3, p4}, Landroid/os/statistics/PerfEventFilter;->checkEventWaitingBlockingPeer(Landroid/os/statistics/MicroscopicEvent;J)Z

    move-result v3

    if-eqz v3, :cond_19

    aput-object v5, v2, v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method private checkSuspectedPerfEvents(JJ)V
    .registers 16

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v6, Landroid/os/statistics/FastPerfEventList;->size:I

    if-ge v4, v6, :cond_8d

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    aget-object v5, v6, v4

    if-nez v5, :cond_14

    :cond_11
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_14
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v6, v6, p1

    if-gez v6, :cond_24

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    goto :goto_11

    :cond_24
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v8, v5, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v6, v8

    iget-boolean v6, p0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v6, :cond_79

    const/4 v6, 0x5

    shl-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v8, v6

    if-gez v6, :cond_75

    const-wide/32 v6, 0x1d4c0

    :goto_3b
    sub-long v0, p3, v6

    :goto_3d
    iget-wide v6, v5, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_11

    iget-object v6, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v6, v6, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v6, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v7, 0x0

    aput-object v7, v6, v4

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInTestMode()Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v6, "MiuiPerfSuperviser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "discarded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/os/statistics/MicroscopicEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_75
    const/4 v6, 0x5

    shl-long v6, v2, v6

    goto :goto_3b

    :cond_79
    const/4 v6, 0x5

    shl-long v6, v2, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v8, v6

    if-gez v6, :cond_89

    const-wide/32 v6, 0x1d4c0

    :goto_86
    sub-long v0, p3, v6

    goto :goto_3d

    :cond_89
    const/4 v6, 0x5

    shl-long v6, v2, v6

    goto :goto_86

    :cond_8d
    return-void
.end method

.method private getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/statistics/PerfEvent;",
            ">(",
            "Landroid/os/statistics/FastPerfEventList",
            "<TT;>;)J"
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    iget v7, p1, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v4, p1, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v7, :cond_1a

    aget-object v6, v4, v5

    invoke-virtual {v6}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v0

    cmp-long v8, v2, v0

    if-lez v8, :cond_17

    move-wide v2, v0

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_1a
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v2, v8

    if-nez v8, :cond_25

    const-wide/16 v2, 0x0

    :cond_25
    return-wide v2
.end method

.method private isIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 5

    iget v0, p1, Landroid/os/statistics/MicroscopicEvent;->pid:I

    iget v1, p2, Landroid/os/statistics/MicroscopicEvent;->pid:I

    if-ne v0, v1, :cond_c

    iget v0, p1, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    iget v1, p2, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    if-eq v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEventFilter;->isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z

    move-result v0

    return v0
.end method

.method private isTimeIncludedEnough(Landroid/os/statistics/MicroscopicEvent;Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 15

    const/4 v6, 0x1

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v0, v8, v10

    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v4, v8, v10

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_3e

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_3b

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3b

    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    :goto_2b
    cmp-long v7, v2, v4

    if-eqz v7, :cond_3a

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    int-to-long v8, v7

    mul-long/2addr v8, v2

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_70

    :cond_3a
    :goto_3a
    return v6

    :cond_3b
    const-wide/16 v2, 0x0

    goto :goto_2b

    :cond_3e
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_58

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_55

    iget-wide v8, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    goto :goto_2b

    :cond_55
    const-wide/16 v2, 0x0

    goto :goto_2b

    :cond_58
    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_6d

    iget-wide v8, p1, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-wide v10, p2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    sub-long v2, v8, v10

    goto :goto_2b

    :cond_6d
    const-wide/16 v2, 0x0

    goto :goto_2b

    :cond_70
    const-wide/16 v8, 0x5

    mul-long/2addr v8, v2

    cmp-long v7, v8, v0

    if-gez v7, :cond_3a

    const/4 v6, 0x0

    goto :goto_3a
.end method

.method private mergeSuspectedEvents(Landroid/os/statistics/FastPerfEventList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    if-nez v12, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v3, v13, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int v11, v12, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v13, v13, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v13, [Landroid/os/statistics/MicroscopicEvent;

    array-length v13, v13

    if-le v11, v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v13, v11}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget-object v4, v13, Landroid/os/statistics/FastPerfEventList;->events:[Landroid/os/statistics/PerfEvent;

    check-cast v4, [Landroid/os/statistics/MicroscopicEvent;

    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v12, :cond_6e

    aget-object v8, v5, v6

    instance-of v13, v8, Landroid/os/statistics/MacroscopicEvent;

    if-eqz v13, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/os/statistics/PerfEventFilter;->isAppSideFilter:Z

    if-eqz v13, :cond_3f

    invoke-virtual {v8}, Landroid/os/statistics/PerfEvent;->resolveLazyInfo()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    check-cast v8, Landroid/os/statistics/MacroscopicEvent;

    invoke-virtual {v13, v8}, Landroid/os/statistics/FastPerfEventList;->add(Landroid/os/statistics/PerfEvent;)V

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_4b
    move-object v9, v8

    check-cast v9, Landroid/os/statistics/MicroscopicEvent;

    const/4 v10, 0x0

    add-int/lit8 v7, v3, -0x1

    :goto_51
    if-ltz v7, :cond_61

    aget-object v2, v4, v7

    iget-wide v14, v2, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    iget-wide v0, v9, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_6b

    add-int/lit8 v10, v7, 0x1

    :cond_61
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v13, v10, v9}, Landroid/os/statistics/FastPerfEventList;->add(ILandroid/os/statistics/PerfEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_6b
    add-int/lit8 v7, v7, -0x1

    goto :goto_51

    :cond_6e
    return-void
.end method


# virtual methods
.method public filter(Landroid/os/statistics/FastPerfEventList;Landroid/os/statistics/FastPerfEventList;JLandroid/os/statistics/FastPerfEventList;)V
    .registers 21
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
            ">;J",
            "Landroid/os/statistics/FastPerfEventList",
            "<",
            "Landroid/os/statistics/PerfEvent;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/os/statistics/PerfEventFilter;->nativeBacktraceMapUpdated:Z

    invoke-direct/range {p0 .. p1}, Landroid/os/statistics/PerfEventFilter;->getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->getEarliestEventBeginUptimeMillisInBatch(Landroid/os/statistics/FastPerfEventList;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_1b

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v8

    :cond_1b
    iget-wide v10, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/PerfEventFilter;->lastBatchBeginTimeMillis:J

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/statistics/FastPerfEventList;->size:I

    if-lez v10, :cond_30

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    :cond_30
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEventFilter;->mergeSuspectedEvents(Landroid/os/statistics/FastPerfEventList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget v7, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    :goto_3f
    if-ne v7, v5, :cond_43

    if-eq v6, v4, :cond_54

    :cond_43
    invoke-direct {p0, v5, v7, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkEventsWaitingBlockingPeer(IIJ)V

    move v5, v7

    invoke-direct {p0, v4, v6}, Landroid/os/statistics/PerfEventFilter;->checkEffectivePerfEvents(II)V

    move v4, v6

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    iget v7, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    iget v6, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    goto :goto_3f

    :cond_54
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/statistics/PerfEventFilter;->checkSuspectedPerfEvents(JJ)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v10, v10, Landroid/os/statistics/FastPerfEventList;->size:I

    iget-object v11, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    iget v11, v11, Landroid/os/statistics/FastPerfEventList;->size:I

    add-int/2addr v10, v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->ensureCapacity(I)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/os/statistics/FastPerfEventList;->addAll(Landroid/os/statistics/FastPerfEventList;)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->compact()V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->clear()V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMacroEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v10}, Landroid/os/statistics/FastPerfEventList;->clear()V

    iget-object v10, p0, Landroid/os/statistics/PerfEventFilter;->tempCompletedMicroEvents:Landroid/os/statistics/FastPerfEventList;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Landroid/os/statistics/FastPerfEventList;->trimTo(I)V

    return-void
.end method

.method public hasPendingPerfEvents()Z
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->effectivePerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v0}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->eventsWaitingBlockingPeer:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v0}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/os/statistics/PerfEventFilter;->suspectedPerfEvents:Landroid/os/statistics/FastPerfEventList;

    invoke-virtual {v0}, Landroid/os/statistics/FastPerfEventList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

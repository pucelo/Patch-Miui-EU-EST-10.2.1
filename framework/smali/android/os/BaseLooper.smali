.class public Landroid/os/BaseLooper;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseLooper$MessageMonitorInfo;
    }
.end annotation


# static fields
.field private static final LATE_FRAME_THREASHOLD_MS:I = 0x12c

.field private static final LOG_MESSAGE_RUNNING_TIME:Z

.field private static final LONG_MSG_THREASHOLD_MS:I = 0xa

.field private static final MAX_MESSAGE_SUMMARY_HISTORY:I = 0x32

.field private static final MSG_QUEUE_SIZE:I = 0x40

.field protected static final STATE_DISPATCH:I = 0x1

.field protected static final STATE_ENQUEUE:I = 0x0

.field protected static final STATE_FINISH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseLooper"

.field private static final sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/BaseLooper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCallbacksLock:Ljava/lang/Object;


# instance fields
.field private mEnableAnrMonitor:Z

.field private mEnableMonitor:Z

.field private mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

.field private mLongMsgIndexNext:I

.field private mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

.field private mMsgIndexNext:I

.field private final mMsgLock:Ljava/lang/Object;

.field private mRunningMessage:Landroid/os/Message;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Landroid/os/BaseLooper;->LOG_MESSAGE_RUNNING_TIME:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    const-string/jumbo v0, "debug.perf.message_running_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/BaseLooper;->LOG_MESSAGE_RUNNING_TIME:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [Landroid/os/BaseLooper$MessageMonitorInfo;

    iput-object v0, p0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iput v1, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    const/16 v0, 0x40

    new-array v0, v0, [Landroid/os/BaseLooper$MessageMonitorInfo;

    iput-object v0, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iput v1, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    return-void
.end method

.method private addMessageToHistoryIfNeed(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V
    .registers 7

    iget-object v1, p0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p2}, Landroid/os/AnrMonitor;->isLongTimeMsg(Landroid/os/BaseLooper$MessageMonitorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iget v2, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    aput-object p2, v0, v2

    iget v0, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-static {v0, v2, v3}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    :cond_1a
    iget-object v0, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    iget v2, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    aput-object p2, v0, v2

    iget v0, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-static {v0, v2, v3}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .registers 13

    invoke-virtual {p0}, Landroid/os/BaseLooper;->isMonitorLooper()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    :cond_e
    if-eqz p5, :cond_1c

    invoke-virtual {p0}, Landroid/os/BaseLooper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v3, v4, p2}, Landroid/os/BaseLooper;->dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    sget-object v4, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_21
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_27
    if-ge v0, v2, :cond_4d

    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BaseLooper;

    if-eqz v1, :cond_4a

    invoke-virtual {v1, p1, p3, p4}, Landroid/os/BaseLooper;->dumpLtMessageHistory(Ljava/io/PrintWriter;J)V

    if-eqz p5, :cond_4a

    invoke-virtual {p0}, Landroid/os/BaseLooper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v3, v5, p2}, Landroid/os/BaseLooper;->dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_4f

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_4d
    monitor-exit v4

    goto :goto_1c

    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getMessageString(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    :try_start_3
    invoke-virtual {p0}, Landroid/os/Message;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    :goto_7
    return-object v1

    :catch_8
    move-exception v0

    const-string/jumbo v2, "BaseLooper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMessageString failed ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static ringAdvance(III)I
    .registers 5

    add-int v1, p0, p1

    rem-int v0, v1, p2

    if-gez v0, :cond_7

    add-int/2addr v0, p2

    :cond_7
    return v0
.end method

.method private updateCallbackIfNeed(Z)V
    .registers 8

    const/4 v5, -0x1

    sget-object v4, Landroid/os/BaseLooper;->sCallbacksLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_6
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_1d

    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_2d

    move v0, v1

    :cond_1d
    if-eqz p1, :cond_30

    if-ne v0, v5, :cond_30

    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_3a

    :cond_2b
    :goto_2b
    monitor-exit v4

    return-void

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_30
    if-nez p1, :cond_2b

    if-eq v0, v5, :cond_2b

    :try_start_34
    sget-object v3, Landroid/os/BaseLooper;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    goto :goto_2b

    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public dumpAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseLooper;->dumpAll(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpAll(Ljava/lang/String;J)Ljava/lang/String;
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " version Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " version Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " cur loop is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/BaseLooper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/BaseLooper;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const-string/jumbo v1, "BaseLooper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump anr message took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpHistoryMessage(Landroid/util/Printer;J)V
    .registers 12

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v3, "history message"

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/os/BaseLooper;->dumpInternal(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpLtMessageHistory(Ljava/io/PrintWriter;J)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/BaseLooper;->mMsgLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Dump time : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "---------- History of long time messages on "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BaseLooper;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, "----------"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Landroid/os/BaseLooper;->mLongMsgIndexNext:I

    move v13, v11

    const/4 v10, -0x1

    :cond_6d
    const/4 v15, -0x1

    const/16 v17, 0x32

    move/from16 v0, v17

    invoke-static {v13, v15, v0}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/BaseLooper;->mLongMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v12, v15, v13

    if-eqz v12, :cond_92

    invoke-virtual {v12}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_92

    iget-wide v0, v12, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    move-wide/from16 v18, v0

    sub-long v18, v2, v18

    cmp-long v15, v18, p2

    if-lez v15, :cond_9c

    :cond_92
    const-string/jumbo v15, "-------------------------- END --------------------------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_7 .. :try_end_9a} :catchall_13a

    monitor-exit v16

    return-void

    :cond_9c
    add-int/lit8 v10, v10, 0x1

    :try_start_9e
    const-string/jumbo v15, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v15, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/BaseLooper$MessageMonitorInfo;->getMonitorMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v6, v12, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    iget-wide v4, v12, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iget-wide v8, v12, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    const-string/jumbo v15, "    Total: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v15, " Waiting: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v15, " Processing: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v15, "    enq="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, " disp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, " fin="

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-ne v13, v11, :cond_6d

    const-string/jumbo v15, "-------------------------- END --------------------------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_9e .. :try_end_138} :catchall_13a

    monitor-exit v16

    return-void

    :catchall_13a
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public dumpMessageQueue(Landroid/os/MessageQueue;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "---------- Dump MessageQueue on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Running message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_40
    if-eqz p1, :cond_45

    invoke-virtual {p1, p2, p3, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_45
    const-string/jumbo v0, "-------------------------- END --------------------------"

    invoke-interface {p2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableAnrMonitor(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableAnrMonitor:Z

    invoke-direct {p0, p1}, Landroid/os/BaseLooper;->updateCallbackIfNeed(Z)V

    return-void
.end method

.method public enableMonitor(Z)V
    .registers 7

    iput-boolean p1, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    if-eqz p1, :cond_1f

    :try_start_4
    const-string/jumbo v2, "getQueue"

    const-class v3, Landroid/os/MessageQueue;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageQueue;

    if-eqz v1, :cond_1f

    const-string/jumbo v2, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method isMonitorAnr()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableAnrMonitor:Z

    return v0
.end method

.method public isMonitorLooper()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableMonitor:Z

    return v0
.end method

.method public logLateFrameIfNeed(JJ)V
    .registers 20

    const-wide/32 v10, 0xf4240

    div-long v2, p1, v10

    const-wide/16 v10, 0x12c

    cmp-long v9, v2, v10

    if-gez v9, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    iget v9, p0, Landroid/os/BaseLooper;->mMsgIndexNext:I

    const/4 v10, -0x1

    const/16 v11, 0x40

    invoke-static {v9, v10, v11}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v6

    const/4 v1, 0x0

    :goto_1c
    const/16 v9, 0x32

    if-ge v1, v9, :cond_54

    iget-object v9, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v9, v9, v6

    if-eqz v9, :cond_30

    iget-object v9, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v9, v9, v6

    iget-wide v10, v9, Landroid/os/BaseLooper$MessageMonitorInfo;->finishNanos:J

    cmp-long v9, v10, p3

    if-gez v9, :cond_eb

    :cond_30
    const-string/jumbo v9, "Slow Frame: doFrame is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms late"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_54

    const-string/jumbo v9, " because of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " msg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const/4 v1, 0x0

    :goto_55
    if-ge v1, v8, :cond_f8

    const/4 v9, 0x1

    const/16 v10, 0x40

    invoke-static {v6, v9, v10}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v6

    iget-object v9, p0, Landroid/os/BaseLooper;->mMsgHistoryQueue:[Landroid/os/BaseLooper$MessageMonitorInfo;

    aget-object v7, v9, v6

    iget-wide v10, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->finishNanos:J

    iget-wide v12, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchNanos:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    div-long v4, v10, v12

    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-lez v9, :cond_e7

    const-string/jumbo v9, ", msg "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Landroid/os/BaseLooper;->LOG_MESSAGE_RUNNING_TIME:Z

    if-eqz v9, :cond_b1

    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b1

    const-string/jumbo v9, " (running "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/os/BaseLooper$MessageMonitorInfo;->getRunningTimeMs()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b1
    const-string/jumbo v9, " (target="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->handlerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d1

    const-string/jumbo v9, " callback="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->callbackName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1
    iget v9, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    if-eqz v9, :cond_e1

    const-string/jumbo v9, " what="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/os/BaseLooper$MessageMonitorInfo;->msgWhat:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_e1
    const-string/jumbo v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    :cond_eb
    const/4 v9, -0x1

    const/16 v10, 0x40

    invoke-static {v6, v9, v10}, Landroid/os/BaseLooper;->ringAdvance(III)I

    move-result v6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1c

    :cond_f8
    const-string/jumbo v9, "Looper"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final updateMessageByState(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;I)V
    .registers 5

    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/os/BaseLooper;->mEnableAnrMonitor:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    packed-switch p3, :pswitch_data_2e

    :goto_10
    return-void

    :pswitch_11
    invoke-virtual {p2, p3}, Landroid/os/BaseLooper$MessageMonitorInfo;->updateMessageTimeByState(I)V

    invoke-virtual {p2, p1}, Landroid/os/BaseLooper$MessageMonitorInfo;->setMonitorMessage(Landroid/os/Message;)V

    iput-object p1, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->startMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    goto :goto_10

    :pswitch_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseLooper;->mRunningMessage:Landroid/os/Message;

    invoke-virtual {p2, p3}, Landroid/os/BaseLooper$MessageMonitorInfo;->updateMessageTimeByState(I)V

    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->finishMonitor(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    invoke-static {p1, p2}, Landroid/os/AnrMonitor;->checkMsgTime(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    invoke-direct {p0, p1, p2}, Landroid/os/BaseLooper;->addMessageToHistoryIfNeed(Landroid/os/Message;Landroid/os/BaseLooper$MessageMonitorInfo;)V

    goto :goto_10

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

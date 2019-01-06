.class public Landroid/app/ReceiverReporter;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ReceiverReporter$ReceiverHandler;,
        Landroid/app/ReceiverReporter$ReceiverObj;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field private static RE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MIUI-ReceiverReporter"

.field public static mDispatchThreshold:J

.field private static mHandleThreshold:J

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static volatile mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

.field private static mReThread:Landroid/os/HandlerThread;

.field private static mReceiverMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ReceiverReporter$ReceiverObj;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sSystemBootCompleted:Z


# direct methods
.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Landroid/app/ReceiverReporter;->mIndex:I

    const-string/jumbo v0, "persist.receiver.dispatch"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    const-string/jumbo v0, "persist.receiver.handle"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static currentPackageName()Ljava/lang/String;
    .registers 2

    sget-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "android"

    sput-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    :cond_17
    :goto_17
    sget-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    return-object v1

    :cond_1a
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    goto :goto_17
.end method

.method private static currentProcessName()Ljava/lang/String;
    .registers 2

    sget-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    :cond_17
    :goto_17
    sget-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    return-object v1

    :cond_1a
    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    goto :goto_17
.end method

.method static getReceiverHandler()Landroid/os/Handler;
    .registers 3

    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_28

    sget-object v1, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "receiver-thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/app/ReceiverReporter$ReceiverHandler;

    sget-object v2, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ReceiverReporter$ReceiverHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2b

    :cond_27
    monitor-exit v1

    :cond_28
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    :cond_14
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    return v0
.end method

.method static onReceiverFinished(Landroid/content/Intent;JJJLjava/lang/String;Z)V
    .registers 22

    sget-boolean v8, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    if-eqz v8, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "null"

    :cond_e
    invoke-static {}, Landroid/app/ReceiverReporter;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    sub-long v8, p3, p1

    sget-wide v10, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_22

    sub-long v8, p5, p3

    sget-wide v10, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_99

    :cond_22
    new-instance v6, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    const/16 v8, 0x41

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    invoke-virtual {v6, v2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    invoke-virtual {v6, p1, p2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setBrReceiver(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setQuWorked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    invoke-static {}, Landroid/app/ReceiverReporter;->currentProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    const-string/jumbo v8, "android"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    if-ltz v8, :cond_72

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-le v8, v9, :cond_9a

    :cond_72
    const/4 v8, 0x0

    :goto_73
    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    new-instance v7, Landroid/app/ReceiverReporter$ReceiverObj;

    move-object/from16 v0, p7

    invoke-direct {v7, v2, v4, v0}, Landroid/app/ReceiverReporter$ReceiverObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    if-eqz v8, :cond_9d

    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-gt v8, v9, :cond_9d

    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_99
    :goto_99
    return-void

    :cond_9a
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    goto :goto_73

    :cond_9d
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_cd

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/4 v8, 0x0

    iput v8, v5, Landroid/os/Message;->what:I

    new-instance v9, Landroid/content/pm/ParceledListSlice;

    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/app/ReceiverReporter;->getReceiverHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    :cond_cd
    sget v8, Landroid/app/ReceiverReporter;->mIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/app/ReceiverReporter;->mIndex:I

    sget-object v8, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99
.end method

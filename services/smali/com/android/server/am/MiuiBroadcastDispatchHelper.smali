.class public Lcom/android/server/am/MiuiBroadcastDispatchHelper;
.super Ljava/lang/Object;
.source "MiuiBroadcastDispatchHelper.java"


# static fields
.field private static final ANDROID_VERSION_N:I = 0x18

.field private static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEFAULT_SLEEP_TIME:J = 0x5L

.field static final DISPATCH_SLEEP_TIME:J = 0x8L

.field static final HEAVY_CONSUMING_INTENT:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field static final HEAVY_CONSUMING_INTENT_SLEEP_TIME:J = 0x32L

.field static final LIMIT_DISPATCH_SLEEP_TIME:J = 0xaL

.field private static final MAX_DISPATCH_INTENT_COUNT:I = 0x3

.field static final MAX_RECEIVERS_SIZE:I = 0x1e

.field static final MIN_RECEIVERS_SIZE:I = 0x3

.field static final MSG_PROCESS_NEXT_BROADCAST_FROM_AMS:I = 0x249f1

.field static final ONE_DISPATCH_MAX_TIME:J = 0xaL

.field static final PROP_MIUI_BROADCAST_DISPATCH:Ljava/lang/String; = "persist.sys.m_b_dispatch"

.field static final SHORT_SLEEP_TIME:J = 0x3L

.field private static mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;


# instance fields
.field private mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

.field private mDispatchSleep:Z

.field private final mEnable:Z

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private timeConsumingIntents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    iput-object p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findDeliverToRegisteredReceiverLocked()V

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findAddBroadcastToHistoryLocked()V

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    if-nez v0, :cond_21

    :cond_1e
    iput-boolean v3, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    return-void

    :cond_21
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "BroadcastQueueInjector"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-void
.end method

.method private addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public static addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addIntent([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static clearTimeConsumingIntent()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearIntent()V

    :cond_d
    return-void
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V
    .registers 10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_29

    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3f} :catch_40

    goto :goto_23

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method private findAddBroadcastToHistoryLocked()V
    .registers 7

    :try_start_0
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    const-string/jumbo v2, "addBroadcastToHistoryLocked"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private findDeliverToRegisteredReceiverLocked()V
    .registers 7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2e

    :try_start_6
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    const-string/jumbo v2, "deliverToRegisteredReceiverLocked"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/android/server/am/BroadcastFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :cond_2e
    :try_start_2e
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    const-string/jumbo v2, "deliverToRegisteredReceiverLocked"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/android/server/am/BroadcastFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4b} :catch_4c

    goto :goto_28

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public static getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;
    .registers 1

    sget-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    new-instance v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    return-void
.end method

.method public static onScreenOffBroadcastSend()V
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    :cond_e
    return-void
.end method

.method public static onScreenOnBroadcastDone()V
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    :cond_e
    return-void
.end method

.method public static removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeIntent([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static setMiuiBroadcastDispatchEnable(Z)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setEnable(Z)V

    :cond_d
    return-void
.end method

.method private shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_23

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method private sleep(J)V
    .registers 4

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public addIntent([Ljava/lang/String;)V
    .registers 7

    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_9
    array-length v3, p1

    :goto_a
    if-ge v1, v3, :cond_16

    aget-object v0, p1, v1

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    monitor-exit v2

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearIntent()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispatchParallelBroadcasts(Lcom/android/server/am/BroadcastQueue;Ljava/util/ArrayList;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastQueue;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v11, -0x3e8

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_9
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v5, v0, :cond_1e7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4c

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    move-object v12, v0

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_114

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9

    :cond_4c
    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_51
    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11a

    const/16 v16, 0x1

    :goto_78
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v11, -0x3e8

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_85
    if-ge v7, v4, :cond_182

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v8, 0x0

    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_f7

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_dc

    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v17, v0

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_dc

    const/4 v9, 0x1

    :cond_dc
    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v17, v0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_ef

    const/4 v8, 0x1

    :cond_ef
    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/server/am/ReceiverList;->uid:I

    :cond_f7
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13, v7}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V
    :try_end_100
    .catchall {:try_start_92 .. :try_end_100} :catchall_12c

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    move/from16 v17, v0

    if-eqz v17, :cond_110

    if-nez v9, :cond_110

    if-eqz v8, :cond_132

    :cond_110
    :goto_110
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_85

    :catchall_114
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :cond_11a
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v16

    goto/16 :goto_78

    :catchall_12c
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :cond_132
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v17

    if-eqz v17, :cond_14e

    if-eqz v16, :cond_144

    const-wide/16 v18, 0x32

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_110

    :cond_144
    const-wide/16 v18, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_110

    :cond_14e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    const-wide/16 v20, 0xa

    cmp-long v17, v18, v20

    if-lez v17, :cond_164

    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_110

    :cond_164
    sub-int v17, v4, v7

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_178

    const-wide/16 v18, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_110

    :cond_178
    const-wide/16 v18, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_110

    :cond_182
    if-eqz v16, :cond_1ca

    const-string/jumbo v17, "BroadcastQueueInjector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MBDH Done with parallel broadcast ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " total used : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    iget-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1d1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_1db
    .catchall {:try_start_1d1 .. :try_end_1db} :catchall_1e1

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_9

    :catchall_1e1
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1ee
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_202

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_202
    .catchall {:try_start_1ee .. :try_end_202} :catchall_207

    :cond_202
    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_207
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string/jumbo v1, "  MIUI ADD :  MBDH dump start : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  Heavy Time Consuming Intents : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, " action : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  Time Consuming Intents : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_21
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    const-string/jumbo v1, " action : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3d

    goto :goto_27

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_40
    monitor-exit v2

    const-string/jumbo v1, " enable : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, " dispatchSleep : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "  MBDH dump end !!!!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedSleepTime(Lcom/android/server/am/BroadcastRecord;)J
    .registers 6

    const-wide/16 v0, 0x5

    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_27
    const-wide/16 v0, 0x32

    :cond_29
    :goto_29
    return-wide v0

    :cond_2a
    const-wide/16 v0, 0xa

    goto :goto_29
.end method

.method public isEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    return v0
.end method

.method public isTimeConsumingIntent(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeIntent([Ljava/lang/String;)V
    .registers 7

    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_9
    array-length v3, p1

    :goto_a
    if-ge v1, v3, :cond_16

    aget-object v0, p1, v1

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    monitor-exit v2

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDispatchSleep(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    if-eqz p1, :cond_c

    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

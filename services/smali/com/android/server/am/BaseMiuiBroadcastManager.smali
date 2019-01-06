.class public abstract Lcom/android/server/am/BaseMiuiBroadcastManager;
.super Ljava/lang/Object;
.source "BaseMiuiBroadcastManager.java"


# static fields
.field public static final DEBUG_BROADCAST:Z

.field private static final DEBUG_BROADCAST_BACKGROUND:Z

.field static final ENABLE_DELAY_QUEUE:Z

.field static final ENABLE_EXTRA_QUEUES:Z

.field static final EXTRA_QUEUE_SIZE:I

.field private static final FLAG_RECEIVER_LONGTIME:I = 0x2

.field private static final FLAG_RECEIVER_SYSTEM_APP:I = 0x1

.field private static final QUEUE_CONTROL_FLAGS:I = 0x3

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BaseMiuiBroadcastManager"

.field private static final sLongTimeAction:[Ljava/lang/String;


# instance fields
.field private mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "debug.broadcast.log"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_66

    move v0, v2

    :goto_12
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    const-string/jumbo v0, "persist.sys.m_b_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    sget-wide v6, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_68

    move v0, v1

    :goto_26
    sput-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_6c

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v0, :cond_6a

    move v0, v3

    :goto_31
    sput v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v5, v0, v2

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.push.channel_closed"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    return-void

    :cond_66
    move v0, v1

    goto :goto_12

    :cond_68
    move v0, v2

    goto :goto_26

    :cond_6a
    move v0, v4

    goto :goto_31

    :cond_6c
    move v0, v2

    goto :goto_31
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    .registers 8

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2d

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to nonSystemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_52

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to systemReceivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method

.method private broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;
    .registers 7

    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4e

    const/4 v0, 0x1

    :goto_6
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST_BACKGROUND:Z

    if-eqz v1, :cond_3b

    const-string/jumbo v2, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast  on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_50

    const-string/jumbo v1, "foreground"

    :goto_1e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " queue,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " flags : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v1, :cond_6c

    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v1, :cond_54

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_54

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    return-object v1

    :cond_4e
    const/4 v0, 0x0

    goto :goto_6

    :cond_50
    const-string/jumbo v1, "background"

    goto :goto_1e

    :cond_54
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_60

    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :goto_5c
    return-object v1

    :cond_5d
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_5c

    :cond_60
    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :goto_66
    return-object v1

    :cond_67
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_66

    :cond_6c
    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :goto_72
    return-object v1

    :cond_73
    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    goto :goto_72
.end method

.method private broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;
    .registers 6

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ready to broadcastQueueForIntentt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method private isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v4, 0x0

    sget-boolean v3, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-nez v3, :cond_7

    return v4

    :cond_7
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3d

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0xc8

    if-le v3, v5, :cond_3d

    sget-boolean v3, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "BaseMiuiBroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is background with"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v8

    :cond_3d
    sget-object v5, Lcom/android/server/am/BaseMiuiBroadcastManager;->sLongTimeAction:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_41
    if-ge v3, v6, :cond_71

    aget-object v0, v5, v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    sget-boolean v3, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "BaseMiuiBroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is long time action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return v8

    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_71
    return v4
.end method

.method private isTopApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    return v3

    :cond_9
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v3

    :cond_18
    return v2
.end method

.method private realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .registers 26

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v18

    if-nez p1, :cond_db

    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_4c

    const-string/jumbo v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Enqueueing ordered broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": prev had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_72

    const-string/jumbo v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Enqueueing broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    if-eqz p2, :cond_a4

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v16

    :goto_78
    if-eqz v16, :cond_d4

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v6, :cond_a3

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;

    move-result-object v5

    :try_start_8b
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_a3} :catch_a7

    :cond_a3
    :goto_a3
    return-void

    :cond_a4
    const/16 v16, 0x0

    goto :goto_78

    :catch_a7
    move-exception v15

    const-string/jumbo v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] sending broadcast result of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :cond_d4
    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_a3

    :cond_db
    sget-boolean v6, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_fb

    const-string/jumbo v6, "BaseMiuiBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Enqueueing parallel broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fb
    if-eqz p2, :cond_111

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v6

    if-eqz v6, :cond_10e

    const/16 v19, 0x1

    :goto_105
    if-nez v19, :cond_a3

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_a3

    :cond_10e
    const/16 v19, 0x0

    goto :goto_105

    :cond_111
    const/16 v19, 0x0

    goto :goto_105
.end method

.method private sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V
    .registers 25

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :try_start_b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v18

    :goto_f
    move/from16 v0, v18

    if-ge v15, v0, :cond_64

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_48

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_48

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object v13, v0

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v2, :cond_45

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_45

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_45

    iget-object v2, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V

    :cond_45
    :goto_45
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_48
    if-eqz v16, :cond_45

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v11, v1, v2}, Lcom/android/server/am/BaseMiuiBroadcastManager;->addReceiverToListByFlag(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5f} :catch_60

    goto :goto_45

    :catch_60
    move-exception v14

    const/4 v6, 0x0

    const/4 v11, 0x0

    return-void

    :cond_64
    if-eqz v6, :cond_7e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7e

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    :cond_7e
    if-eqz v11, :cond_9d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9d

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, v5

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/BaseMiuiBroadcastManager;->realSendBroadcastLocked(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    :cond_9d
    return-void
.end method


# virtual methods
.method broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z
    .registers 12

    const/4 v5, 0x0

    iget-object v3, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-boolean v7, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-object v4, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_4e

    xor-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ready to send broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/lit8 v0, v6, 0x3

    if-eqz v0, :cond_3a

    and-int/lit8 v0, v6, -0x4

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3a
    invoke-direct {p0, p3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isLongTimeAction(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return v5

    :cond_45
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    const/4 v0, 0x1

    return v0

    :cond_4e
    return v5
.end method

.method broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->broadcastQueueByFlag(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method abstract createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
.end method

.method abstract createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 12

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string/jumbo v3, "fg_sys"

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-string/jumbo v3, "bg_sys"

    const-wide/32 v4, 0xea60

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/android/server/am/MiuiBroadcastQueue;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-string/jumbo v3, "longtime"

    const-wide/32 v4, 0x927c0

    move-object v1, p1

    move v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MiuiBroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V

    iput-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    :cond_3e
    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init extra BroadcastQueues in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method

.method initExtraQuqueIfNeed(I)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_DELAY_QUEUE:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    add-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mBgLtBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    aput-object v2, v0, v1

    :cond_24
    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method isFgBroadcastQueue(Landroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-eq p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/BaseMiuiBroadcastManager;->mFgSysBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;
    .registers 16

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-nez v10, :cond_11

    return-object v0

    :cond_11
    const/4 v8, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    :goto_16
    if-ge v8, v12, :cond_11f

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_bc

    instance-of v0, v9, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_bc

    move-object v6, v9

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_8f

    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_8f

    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_60

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to foreground queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_66
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_8b

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_8f
    iget-object v0, v6, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    if-eqz v0, :cond_63

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_b8

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_bc
    if-eqz v9, :cond_63

    move-object v11, v9

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/android/server/am/BaseMiuiBroadcastManager;->isTopApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_f5

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_f0

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to fregournd queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_63

    :cond_f5
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_11a

    const-string/jumbo v0, "BaseMiuiBroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to longtime queue"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11a
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_63

    :cond_11f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13b

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    xor-int/lit8 v1, p2, 0x1

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->sendBroadcastDirect(ZZLandroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)V

    :cond_13b
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v7
.end method

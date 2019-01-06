.class public Lcom/android/server/am/MiuiBroadcastManager;
.super Lcom/android/server/am/BaseMiuiBroadcastManager;
.source "MiuiBroadcastManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/server/am/MiuiBroadcastManager;

.field static final sInstanceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/BaseMiuiBroadcastManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->init(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method static getExtraQueueSize()I
    .registers 1

    sget v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->EXTRA_QUEUE_SIZE:I

    return v0
.end method

.method static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .registers 3

    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v0, :cond_13

    sget-object v1, Lcom/android/server/am/MiuiBroadcastManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/am/MiuiBroadcastManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiBroadcastManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lcom/android/server/am/MiuiBroadcastManager;->sInstance:Lcom/android/server/am/MiuiBroadcastManager;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static isExtraQueueEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->ENABLE_EXTRA_QUEUES:Z

    return v0
.end method


# virtual methods
.method createBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;JZ)Lcom/android/server/am/BroadcastQueue;
    .registers 13

    new-instance v0, Lcom/android/server/am/BroadcastQueue;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;
    .registers 27

    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p4

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v18, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v19, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v20, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v21, v0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V

    return-object v1
.end method

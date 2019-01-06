.class public Lcom/android/server/am/ProcessStarter;
.super Ljava/lang/Object;
.source "ProcessStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    }
.end annotation


# static fields
.field static final APP_PROTECTION_TIMEOUT:I = 0x1b7740

.field static final MAX_PROTECT_APP:I = 0x5

.field private static final START_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProcessStarter"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mLastProcessesInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static makeHostingTypeFromFlag(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const-string/jumbo v0, "unknown"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "AI"

    goto :goto_6

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method private startProcessLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 p2, p1

    :cond_c
    const/4 v4, 0x0

    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_58

    move-result-object v4

    if-eqz v4, :cond_d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_88

    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_64

    const-string/jumbo v2, "ProcessStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " is persistent, skip!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :catch_58
    move-exception v15

    const-string/jumbo v2, "ProcessStarter"

    const-string/jumbo v3, "error in getApplicationInfo!"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_64
    const-string/jumbo v2, "ProcessStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " already exits, just protect"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v14}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    if-nez v16, :cond_c5

    const-string/jumbo v2, "ProcessStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startProcess :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " failed!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    return-object v16

    :cond_d1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method addProtectionLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    packed-switch p2, :pswitch_data_e

    :goto_3
    return-void

    :pswitch_4
    sget v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v0, 0xa

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_3

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method restoreLastProcessesInfoLocked(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_86

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_86

    const/4 v0, 0x0

    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_83

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    iget-object v3, p0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_76

    const-string/jumbo v3, "ProcessStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was Locked."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    sget v4, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_76
    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_73

    :cond_83
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_86
    return-void
.end method

.method saveProcessInfoLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 6

    new-instance v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    invoke-direct {v0}, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v2, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    iput v2, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iget-object v2, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startProcesses(Ljava/util/List;IZII)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStarter;->restoreLastProcessesInfoLocked(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v10, v10, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessManagerService$MainHandler;->removeMessages(I)V

    const/4 v5, 0x0

    :goto_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_84

    move-result v10

    if-ge v5, v10, :cond_27

    move/from16 v0, p2

    if-lt v6, v0, :cond_2c

    :cond_27
    :goto_27
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :cond_2c
    :try_start_2c
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/process/PreloadProcessData;

    if-eqz v3, :cond_db

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_db

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Lcom/android/server/am/ProcessStarter;->makeHostingTypeFromFlag(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v8, v8, v1, v10}, Lcom/android/server/am/ProcessStarter;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_db

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessStarter;->saveProcessInfoLocked(Lcom/android/server/am/ProcessRecord;I)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessStarter;->addProtectionLocked(Lcom/android/server/am/ProcessRecord;I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    if-lt v9, v10, :cond_8a

    const-string/jumbo v10, "ProcessStarter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preload and protect processes max limit is: 5, while now count is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_2c .. :try_end_83} :catchall_84

    goto :goto_27

    :catchall_84
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_8a
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v10, v10, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    const-wide/32 v12, 0x1b7740

    move/from16 v0, p5

    invoke-virtual {v10, v0, v12, v13}, Lcom/android/server/am/ProcessManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->startActivity()Z

    move-result v10

    if-eqz v10, :cond_db

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_db

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;
    :try_end_ac
    .catchall {:try_start_8a .. :try_end_ac} :catchall_84

    :try_start_ac
    const-class v10, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v12, "startActivityInMiuiAiMode"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v10, v12, v13}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v7, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_d6} :catch_df
    .catchall {:try_start_ac .. :try_end_d6} :catchall_84

    move-result v10

    if-nez v10, :cond_db

    add-int/lit8 v6, v6, 0x1

    :cond_db
    :goto_db
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    :catch_df
    move-exception v4

    :try_start_e0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_84

    goto :goto_db
.end method

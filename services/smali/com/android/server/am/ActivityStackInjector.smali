.class Lcom/android/server/am/ActivityStackInjector;
.super Ljava/lang/Object;
.source "ActivityStackInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStackInjector"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitFreeFormIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 5

    const/4 v2, 0x2

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eq v0, v2, :cond_16

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_16
    return-void
.end method

.method static findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/am/MiuiMultiTaskManager;->checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_10

    return v6

    :cond_10
    const/4 v1, 0x0

    if-eqz v2, :cond_3b

    :try_start_13
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v4, "miui_launch_app_in_one_task_group"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_3e

    move-result v1

    :goto_21
    if-eqz v1, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    return v3

    :cond_3b
    const/4 v1, 0x0

    goto :goto_21

    :cond_3d
    return v6

    :catch_3e
    move-exception v0

    goto :goto_21
.end method

.method static getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 10

    const-wide/16 v6, 0x40

    const-string/jumbo v4, "getStartingWindowLabel"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :try_start_f
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v4, ":android:show_fragment_args"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string/jumbo v4, ":miui:starting_window_label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_26
    if-nez v3, :cond_2f

    const-string/jumbo v4, ":miui:starting_window_label"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_33

    move-result-object v3

    :cond_2f
    :goto_2f
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catch_33
    move-exception v1

    const-string/jumbo v3, ""

    goto :goto_2f
.end method

.method static getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I
    .registers 10

    const-wide/16 v6, 0x40

    const-string/jumbo v3, "getStartingWindowLabelRes"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :try_start_f
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, ":android:show_fragment_title"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_22

    move-result v2

    :cond_1e
    :goto_1e
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catch_22
    move-exception v0

    goto :goto_1e
.end method

.method static isAllowCross(II)Z
    .registers 5

    const/16 v2, 0x3e7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    if-ne p1, v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-nez p1, :cond_d

    if-eq p0, v2, :cond_8

    :cond_d
    move v0, v1

    goto :goto_8
.end method

.method static isAllowDontWaitForPause(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    const-string/jumbo v3, "com.miui.home"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_24

    :cond_23
    :goto_23
    return v1

    :cond_24
    move v1, v2

    goto :goto_23

    :cond_26
    return v2
.end method

.method static isCurrentUser(I)Z
    .registers 2

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static isDefaultHome(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3

    if-eqz p0, :cond_1f

    const-string/jumbo v0, "com.miui.home"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z
    .registers 10

    const-wide/16 v6, 0x40

    const/4 v5, 0x0

    const-string/jumbo v2, "isStartingWindowSupported"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getRealTheme()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-static {p1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_38

    move-result v1

    :cond_27
    :goto_27
    if-eqz v1, :cond_32

    sget v2, Lmiui/R$attr;->windowDisablePreview:I

    invoke-static {p1, v2, v5}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    :cond_32
    :goto_32
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return v1

    :cond_36
    const/4 v1, 0x0

    goto :goto_32

    :catch_38
    move-exception v0

    goto :goto_27
.end method

.method private static isTaskAlive(Lcom/android/server/am/TaskRecord;)Z
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    return v3

    :cond_a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_11

    const/4 v2, 0x1

    :cond_22
    return v2
.end method

.method static killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_11

    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "killProcessesForRelMemory() only available to system"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_11
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_17
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v5, :cond_5b

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_33

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_33
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v8, 0x320

    if-le v0, v8, :cond_30

    iget-boolean v8, v4, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_30

    const-string/jumbo v8, "com.android.camera"

    iget-object v10, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_30

    const-string/jumbo v8, "Release memory"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    iget-wide v10, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_5d

    add-long/2addr v6, v10

    cmp-long v8, v6, p1

    if-lez v8, :cond_30

    :cond_5b
    monitor-exit v9

    return v2

    :catchall_5d
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method static moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager;->isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_d

    return v8

    :cond_d
    const/4 v2, 0x0

    if-eqz v1, :cond_48

    :try_start_10
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_48

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v7, "miui_task_return_to_target"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_4e

    move-result-object v2

    :goto_1d
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz v2, :cond_4d

    if-lez v4, :cond_4d

    add-int/lit8 v3, v4, -0x1

    :goto_27
    if-ltz v3, :cond_4d

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4a

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return v9

    :cond_48
    const/4 v2, 0x0

    goto :goto_1d

    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    :cond_4d
    return v8

    :catch_4e
    move-exception v0

    goto :goto_1d
.end method

.method static releaseMemoryIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .registers 14

    if-eqz p1, :cond_42

    const-string/jumbo v7, "com.android.camera"

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v10, 0x400

    div-long v0, v8, v10

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v8, v6

    cmp-long v7, v0, v8

    if-gtz v7, :cond_42

    int-to-long v8, v6

    sub-long/2addr v8, v0

    int-to-long v10, v3

    add-long v4, v8, v10

    invoke-static {p0, v4, v5}, Lcom/android/server/am/ActivityStackInjector;->killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z

    :cond_42
    return-void
.end method

.method static startProcBackgroud(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static supportsFreeform()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private static transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v1

    if-ne v1, v2, :cond_16

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isTaskAlive(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_16
    return-void
.end method

.method public static transferOnTopOfHomeForMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

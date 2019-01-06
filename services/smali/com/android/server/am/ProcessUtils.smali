.class public Lcom/android/server/am/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field private static final LOW_MEMORY_RATE:I = 0xa

.field public static final PRIORITY_HEAVY:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_PERCEPTIBLE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_UNKNOW:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_VISIBLE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProcessManager"

.field private static sTtsEngines:Landroid/speech/tts/TtsEngines;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_VISIBLE:Landroid/util/Pair;

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_PERCEPTIBLE:Landroid/util/Pair;

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_HEAVY:Landroid/util/Pair;

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_UNKNOW:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveTtsEngine(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    if-nez v2, :cond_23

    new-instance v2, Landroid/speech/tts/TtsEngines;

    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    :cond_23
    sget-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v2}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v1

    :cond_29
    return-object v1
.end method

.method public static getActiveWallpaperPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method public static getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1f
    return-object v2
.end method

.method public static getMultiWindowForegroundAppInfoLocked(Lcom/android/server/am/ActivityManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    :cond_12
    return-object v0
.end method

.method public static getPerceptibleRecentAppList(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_95

    :try_start_b
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eqz v7, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_35

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v7

    if-eq v7, v9, :cond_35

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    const-string/jumbo v7, "com.android.systemui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_b .. :try_end_6b} :catchall_9b

    :cond_6b
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v7, Lcom/android/server/am/ProcessUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPerceptibleRecentAppList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catchall_95
    move-exception v7

    :goto_96
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :catchall_9b
    move-exception v7

    move-object v4, v5

    goto :goto_96
.end method

.method public static getPidsForProc(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)[I"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_28

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v4, :cond_28

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v4, v2, v1
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_30

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2b
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_30
    move-exception v4

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public static getProcTotalPss(I)I
    .registers 3

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {p0, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    return v1
.end method

.method public static getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v1, :cond_59

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v0, :cond_56

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v7, :cond_3d

    if-eqz p2, :cond_40

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_40
    iget-boolean v7, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v7, :cond_4e

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_48

    goto :goto_3d

    :catchall_48
    move-exception v7

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :cond_4e
    :try_start_4e
    iget v7, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v7, p1, :cond_3d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_48

    goto :goto_3d

    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_59
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v6
.end method

.method private static getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method public static getTaskTopApp(ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    move-result-object v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_b
    return-object v0
.end method

.method private static getTaskTopAppProcessName(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :cond_11
    return-object v0
.end method

.method private static getTaskTopAppUid(Lcom/android/server/am/TaskRecord;)I
    .registers 4

    const/4 v1, -0x1

    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_12
    return v1
.end method

.method public static getTopRunningPidLocked(Lcom/android/server/am/ActivityManagerService;)I
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public static getTotalPss([I)I
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_1a

    array-length v2, p0

    if-lez v2, :cond_1a

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget v2, p0, v0

    if-eqz v2, :cond_19

    aget v2, p0, v0

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getProcTotalPss(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    return v1

    :cond_1a
    return v3
.end method

.method protected static isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p0, v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static isLowMemory()Z
    .registers 6

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_11

    const/4 v4, 0x1

    :goto_10
    return v4

    :cond_11
    const/4 v4, 0x0

    goto :goto_10
.end method

.method public static isPhoneWorking()Z
    .registers 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "ro.radio.noril"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    return v5

    :cond_c
    :try_start_c
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_23

    const-string/jumbo v4, "system"

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v1, v4, 0x1

    :goto_22
    return v1

    :cond_23
    sget-object v4, Lcom/android/server/am/ProcessUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "phone service is Null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_2c

    goto :goto_22

    :catch_2c
    move-exception v0

    sget-object v4, Lcom/android/server/am/ProcessUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "phone.isIdle() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public static isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_27

    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p1, v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v2, :cond_27

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->isTaskVisibleInRecents(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public static isRemoveTaskDisabled(ILjava/lang/String;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 5

    monitor-enter p2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessUtils;->isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    move-result v1

    monitor-exit p2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_13
    move-exception v1

    monitor-exit p2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppProcessName(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static isTaskVisibleInRecents(Lcom/android/server/am/TaskRecord;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_a

    return v3

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1a

    return v3

    :cond_1a
    return v2
.end method

.method public static isVoipWorking()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V
    .registers 9

    monitor-enter p3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_f

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_f

    :catchall_29
    move-exception v4

    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_2f
    :try_start_2f
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/ProcessManagerService;->isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-static {v2, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_29

    goto :goto_41

    :cond_51
    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public static removeTask(ILcom/android/server/am/ActivityManagerService;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(Z)V

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    :cond_36
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_3e
    sget-object v0, Lcom/android/server/am/ProcessUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static removeTasks(Ljava/util/List;Ljava/util/Set;Lcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessPolicy;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    return-void

    :cond_9
    monitor-enter p3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_18

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz p1, :cond_40

    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_40
    if-eqz p4, :cond_48

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_48
    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppUid(Lcom/android/server/am/TaskRecord;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-static {v1, v3}, Lcom/android/server/am/ProcessUtils;->isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v4, v5}, Lcom/android/server/am/ProcessPolicy;->setAppTaskAvailable(Ljava/lang/String;IZ)V

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V
    :try_end_61
    .catchall {:try_start_a .. :try_end_61} :catchall_62

    goto :goto_18

    :catchall_62
    move-exception v4

    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_68
    :try_start_68
    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-static {v1, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_93
    .catchall {:try_start_68 .. :try_end_93} :catchall_62

    goto :goto_84

    :cond_94
    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public static removeTasksInPackages(Ljava/util/List;ILcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/server/am/ProcessPolicy;",
            "Lcom/android/server/am/ActivityManagerService;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    return-void

    :cond_9
    monitor-enter p3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppUid(Lcom/android/server/am/TaskRecord;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-static {v1, v3}, Lcom/android/server/am/ProcessUtils;->isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_58

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v4, v5}, Lcom/android/server/am/ProcessPolicy;->setAppTaskAvailable(Ljava/lang/String;IZ)V

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V
    :try_end_51
    .catchall {:try_start_a .. :try_end_51} :catchall_52

    goto :goto_18

    :catchall_52
    move-exception v4

    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_58
    :try_start_58
    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_18

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_18

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_6e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-static {v1, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_52

    goto :goto_72

    :cond_82
    monitor-exit p3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public static setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V
    .registers 6

    monitor-enter p2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_a

    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_a

    :catchall_30
    move-exception v2

    monitor-exit p2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_36
    monitor-exit p2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public static setTaskToUnavailable(ILcom/android/server/am/ActivityManagerService;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_b
    return-void
.end method

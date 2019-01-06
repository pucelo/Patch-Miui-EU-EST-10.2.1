.class public Lcom/android/server/am/ProcessKiller;
.super Ljava/lang/Object;
.source "ProcessKiller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z
    .registers 9

    iget-object v4, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_5d

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Lcom/android/server/am/ProcessKiller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interesting activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Adj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", State="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_63

    const/4 v3, 0x1

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_5d
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v3, 0x0

    return v3

    :catchall_63
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private kill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_6
    return-void
.end method

.method private scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V
    .registers 5

    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_b

    :try_start_6
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method


# virtual methods
.method public forceStopPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V
    .registers 6

    if-nez p3, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/am/ProcessKiller;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V
    .registers 5

    if-nez p3, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessKiller;->kill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public killBackgroundApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public trimMemory(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 5

    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x3c

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessKiller;->scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V

    :goto_1b
    return-void

    :cond_1c
    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessKiller;->scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_1b
.end method

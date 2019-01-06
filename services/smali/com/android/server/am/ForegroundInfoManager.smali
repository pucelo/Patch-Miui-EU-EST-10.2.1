.class public Lcom/android/server/am/ForegroundInfoManager;
.super Ljava/lang/Object;
.source "ForegroundInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private final mActivityChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmiui/process/IActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityLock:Ljava/lang/Object;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mForegroundInfo:Lmiui/process/ForegroundInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mForegroundLock"
    .end annotation
.end field

.field private final mForegroundInfoListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmiui/process/IForegroundInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundLock:Ljava/lang/Object;

.field private mLastActivityComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ForegroundInfoManager;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lmiui/process/ForegroundInfo;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    return-void
.end method

.method private notifyForegroundInfoLocked()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_1f

    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/process/IForegroundInfoListener;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-interface {v2, v3}, Lmiui/process/IForegroundInfoListener;->onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_1a

    :goto_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "ForegroundInfo Listener:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_11
    if-ltz v0, :cond_34

    const-string/jumbo v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmiui/process/IForegroundInfoListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_34
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_85

    monitor-exit v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mForegroundInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "ActivityChange Listener:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_60
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_68
    if-ltz v0, :cond_88

    const-string/jumbo v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_ac

    add-int/lit8 v0, v0, -0x1

    goto :goto_68

    :catchall_85
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_ac

    monitor-exit v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLastActivityComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_ac
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lmiui/process/ForegroundInfo;

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-direct {v0, v2}, Lmiui/process/ForegroundInfo;-><init>(Lmiui/process/ForegroundInfo;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyActivitiesChangedLocked(Landroid/content/ComponentName;)V
    .registers 7

    iget-object v4, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_8
    if-ltz v2, :cond_23

    :try_start_a
    iget-object v4, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lmiui/process/IActivityChangeListener;

    iget-object v4, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/am/ForegroundInfoManager;->notifyActivityChangedIfNeededLocked(Lmiui/process/IActivityChangeListener;Ljava/lang/Object;Landroid/content/ComponentName;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1e

    :goto_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b

    :cond_23
    iget-object v4, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_16

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ForegroundInfoManager;->notifyActivitiesChangedLocked(Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyActivityChangedIfNeededLocked(Lmiui/process/IActivityChangeListener;Ljava/lang/Object;Landroid/content/ComponentName;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_8

    instance-of v3, p2, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    :cond_8
    return-void

    :cond_9
    move-object v0, p2

    check-cast v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_16
    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :goto_20
    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    if-eqz v3, :cond_55

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    if-eqz v3, :cond_55

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetPackages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;->targetActivities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_50
    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mLastActivityComponent:Landroid/content/ComponentName;

    invoke-interface {p1, v3, p3}, Lmiui/process/IActivityChangeListener;->onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_55
    return-void

    :cond_56
    const/4 v2, 0x0

    goto :goto_16

    :cond_58
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/ActivityStack$ActivityState;",
            "I",
            "Landroid/content/pm/ApplicationInfo;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_13
    sget-object v1, Lcom/android/server/am/ForegroundInfoManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip notify foregroundAppInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_90

    monitor-exit v2

    return-void

    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v1}, Lmiui/process/ForegroundInfo;->resetFlags()V

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    if-eqz v1, :cond_41

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v1, :cond_41

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/process/ForegroundInfo;->addFlags(I)V

    :cond_41
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v3, v1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v3, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v3, v1, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v3, v1, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iput p3, v1, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    if-eqz p4, :cond_85

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget v3, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    :goto_77
    invoke-direct {p0}, Lcom/android/server/am/ForegroundInfoManager;->notifyForegroundInfoLocked()V

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v3, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    iget-object v3, v3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessManagerService;->foregroundInfoChanged(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_2e .. :try_end_83} :catchall_90

    monitor-exit v2

    return-void

    :cond_85
    :try_start_85
    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, 0x0

    iput-object v3, v1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfo:Lmiui/process/ForegroundInfo;

    const/4 v3, -0x1

    iput v3, v1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_90

    goto :goto_77

    :catchall_90
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_14

    iget-object v2, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    new-instance v0, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/am/ForegroundInfoManager$ActivityChangeInfo;-><init>(Lcom/android/server/am/ForegroundInfoManager;ILjava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p3, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_15

    monitor-exit v2

    :cond_14
    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mActivityChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ForegroundInfoManager;->mForegroundInfoListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

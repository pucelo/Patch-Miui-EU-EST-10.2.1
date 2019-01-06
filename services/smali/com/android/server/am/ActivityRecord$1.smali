.class Lcom/android/server/am/ActivityRecord$1;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/AppWindowContainerController$GestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityRecord;->createWindowContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureActivitiesVisible()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_17

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getMiuiLaunchIconInfo()Lcom/miui/internal/transition/MiuiLaunchIconInfo;
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v1, Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    invoke-direct {v1}, Lcom/miui/internal/transition/MiuiLaunchIconInfo;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/internal/transition/MiuiLaunchIconInfo;->launchIconName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iput v2, v1, Lcom/miui/internal/transition/MiuiLaunchIconInfo;->userId:I

    return-object v1

    :cond_2d
    return-object v4
.end method

.method public isHomeAppToken()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public launchHome()V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v2, v4}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v2, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v5, "gestureFinished"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_50

    if-eqz v1, :cond_50

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_50

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, v2, Landroid/content/pm/ActivityInfo;->flags:I
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_66

    :cond_50
    :goto_50
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const-string/jumbo v5, "launchHomebyGesture"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_66

    goto :goto_50

    :catchall_66
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public onGestureCancel()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_37

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ActivityRecord$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityRecord$1$1;-><init>(Lcom/android/server/am/ActivityRecord$1;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_37
    return-void
.end method

.method public onGestureFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onGestureReady()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mIsUpdateThumbnailByGesture:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->screenshotActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_26

    :cond_21
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setLaunchRecentsBehind(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.class Lcom/android/server/am/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mOccluded:Z

.field private mSecondaryDisplayShowing:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method

.method private convertTransitFlags(I)I
    .registers 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .registers 4

    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 5

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/am/KeyguardController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private handleDismissKeyguard()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    iput-boolean v4, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    invoke-virtual {v0, v1, v2, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_3f
    return-void
.end method

.method private handleOccludedChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->resolveOccludeTransit()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_37

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_33
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    return-void

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private resolveOccludeTransit()I
    .registers 4

    const/16 v2, 0x17

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    if-ne v0, v2, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v2

    :cond_23
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_18

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "Keyguard"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    iput-object v1, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_17
.end method

.method private visibilitiesUpdated()V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean v8, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iput-object v6, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacksOnDefaultDisplay()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_17
    if-ltz v3, :cond_56

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v6

    if-nez v6, :cond_52

    if-eqz v5, :cond_54

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-ne v6, v5, :cond_54

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v6

    :goto_3d
    iput-boolean v6, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    :cond_3f
    iget-object v6, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    :cond_4f
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    :cond_52
    move v6, v7

    goto :goto_3d

    :cond_54
    move v6, v8

    goto :goto_3d

    :cond_56
    iget-boolean v6, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v7, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-boolean v6, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eq v6, v1, :cond_68

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged()V

    :cond_68
    iget-object v6, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, v0, :cond_6f

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleDismissKeyguard()V

    :cond_6f
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    return-void
.end method

.method canDismissKeyguard()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_15
    move v0, v1

    goto :goto_12
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 4

    if-nez p2, :cond_d

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 7

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    :cond_c
    invoke-direct {p0, p2}, Lcom/android/server/am/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void

    :cond_10
    sget-object v1, Lcom/android/server/am/KeyguardController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    :cond_3d
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mDismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->visibilitiesUpdated()V

    :cond_d
    return-void
.end method

.method isKeyguardLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isKeyguardShowing(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    if-nez p1, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v1, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method keyguardGoingAway(I)V
    .registers 10

    const-wide/16 v6, 0x40

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "keyguardGoingAway"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x1

    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/am/KeyguardController;->convertTransitFlags(I)I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->addStartingWindowsForVisibleActivities(Z)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_4b

    const-string/jumbo v0, "keyguardGoingAway: surfaceLayout"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_4b
    move-exception v0

    const-string/jumbo v1, "keyguardGoingAway: surfaceLayout"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method setKeyguardShown(ZI)V
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eq p1, v1, :cond_d

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_f

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p2, v1, :cond_f

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    iput p2, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    if-eqz p1, :cond_1f

    invoke-direct {p0, v3}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    iput-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

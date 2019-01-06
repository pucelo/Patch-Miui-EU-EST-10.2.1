.class public Landroid/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFocusedStackId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getFocusedStackId()I

    move-result v0

    return v0
.end method

.method public static getLastResumedActivityUserId(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getLastResumedActivityUserId()I

    move-result v0

    return v0
.end method

.method public static getRecentTaskBound(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static getRecentTaskResizeMode(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    return v0
.end method

.method public static getRecentTasks(III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentTasksForUser(Landroid/app/ActivityManager;III)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningTaskResizeMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    return v0
.end method

.method public static getRunningTaskStackId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    return v0
.end method

.method public static getService()Landroid/app/IActivityManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getStackInfo(III)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskDescriptionBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public static getUserId(Landroid/app/ActivityManager$StackInfo;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$StackInfo;->userId:I

    return v0
.end method

.method public static isRecentTaskDockable(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    return v0
.end method

.method public static isRunningTaskDockable(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    return v0
.end method

.method public static keyguardGoingAway(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->keyguardGoingAway(I)V

    return-void
.end method

.method public static loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static logoutCurrentUser()V
    .locals 0

    invoke-static {}, Landroid/app/ActivityManager;->logoutCurrentUser()V

    return-void
.end method

.method public static moveTaskToDockedStack(Landroid/app/IActivityManager;IIZZLandroid/graphics/Rect;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    return-void
.end method

.method public static setHasTopUi(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V

    return-void
.end method

.method public static setLockScreenShown(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->setLockScreenShown(ZI)V

    return-void
.end method

.method public static startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startInPlaceAnimationOnFrontMostApplication(Landroid/app/IActivityManager;Landroid/app/ActivityOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static startSystemLockTaskMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V

    return-void
.end method

.method public static stopSystemLockTaskMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V

    return-void
.end method

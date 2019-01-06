.class public Lcom/android/server/wm/AppWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowContainerController$GestureCallback;,
        Lcom/android/server/wm/AppWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController",
        "<",
        "Lcom/android/server/wm/AppWindowToken;",
        "Lcom/android/server/wm/AppWindowContainerListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2


# instance fields
.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnWindowsGone:Ljava/lang/Runnable;

.field private final mOnWindowsVisible:Ljava/lang/Runnable;

.field private final mToken:Landroid/view/IApplicationToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-wide/from16 v14, p14

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v0 .. v18}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJLcom/android/server/wm/WindowManagerService;Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    new-instance v5, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v5, v6, v0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v6, v0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-direct {v5, v6, v0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/server/wm/AppWindowContainerController$H;

    move-object/from16 v0, p16

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/AppWindowContainerController$H;-><init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_4d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    if-eqz v4, :cond_85

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_4d .. :try_end_80} :catchall_ab

    monitor-exit v24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_85
    :try_start_85
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/wm/Task;

    if-nez v23, :cond_b1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AppWindowContainerController: invalid  controller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ab
    .catchall {:try_start_85 .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v5

    monitor-exit v24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move/from16 v8, p9

    move-wide/from16 v10, p14

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p12

    move/from16 v15, p5

    move/from16 v16, p13

    move/from16 v17, p8

    move/from16 v18, p10

    move/from16 v19, p11

    move-object/from16 v20, p0

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    invoke-virtual/range {v5 .. v22}, Lcom/android/server/wm/AppWindowContainerController;->createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;Landroid/content/res/Configuration;Landroid/graphics/Rect;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_f6

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_f6

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_f6
    .catchall {:try_start_b1 .. :try_end_f6} :catchall_ab

    :cond_f6
    monitor-exit v24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    new-instance v1, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    const/4 v0, 0x1

    return v0
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .registers 12

    const/4 v1, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_f

    return v0

    :cond_f
    if-nez p1, :cond_1b

    xor-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_1b

    if-eqz p2, :cond_1c

    xor-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_1c

    :cond_1b
    return v1

    :cond_1c
    if-eqz p2, :cond_2f

    if-eqz p4, :cond_2f

    if-nez p7, :cond_23

    :goto_22
    return v0

    :cond_23
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowContainerController;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p6, :cond_2d

    :cond_2b
    const/4 v0, 0x1

    goto :goto_22

    :cond_2d
    move v0, v1

    goto :goto_22

    :cond_2f
    return v0
.end method

.method static synthetic lambda$-com_android_server_wm_AppWindowContainerController_32721(Landroid/view/WindowManagerPolicy$StartingSurface;)V
    .registers 4

    :try_start_0
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method public addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v2, :cond_34

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_183

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_34
    :try_start_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_183

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_46
    :try_start_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_183

    if-eqz v2, :cond_56

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    if-eqz v22, :cond_72

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_183

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_72
    :try_start_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v9

    move-object/from16 v2, p0

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    move/from16 v7, p14

    move/from16 v8, p15

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/AppWindowContainerController;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v23

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_b8

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/AppWindowContainerController;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    :try_end_b2
    .catchall {:try_start_72 .. :try_end_b2} :catchall_183

    move-result v2

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_b8
    if-eqz p2, :cond_12a

    :try_start_ba
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    :try_end_cd
    .catchall {:try_start_ba .. :try_end_cd} :catchall_183

    move-result-object v21

    if-nez v21, :cond_d6

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_d6
    :try_start_d6
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v26

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_ff
    .catchall {:try_start_d6 .. :try_end_ff} :catchall_183

    move-result v24

    if-eqz v26, :cond_108

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_108
    if-nez v25, :cond_10c

    if-eqz v24, :cond_112

    :cond_10c
    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_112
    if-eqz v27, :cond_12a

    :try_start_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_13e

    const/high16 v2, 0x100000

    or-int p8, p8, v2

    :cond_12a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z
    :try_end_135
    .catchall {:try_start_114 .. :try_end_135} :catchall_183

    move-result v2

    if-eqz v2, :cond_144

    const/4 v2, 0x1

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_13e
    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_144
    const/4 v2, 0x2

    move/from16 v0, v23

    if-eq v0, v2, :cond_14f

    const/4 v2, 0x0

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_14f
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    new-instance v10, Lcom/android/server/wm/SplashScreenStartingData;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v10 .. v20}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v10, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V
    :try_end_17d
    .catchall {:try_start_14f .. :try_end_17d} :catchall_183

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x1

    return v2

    :catchall_183
    move-exception v2

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method createAppWindow(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;Landroid/content/res/Configuration;Landroid/graphics/Rect;)Lcom/android/server/wm/AppWindowToken;
    .registers 37

    new-instance v1, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method ensureActivitiesVisible()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->ensureActivitiesVisible()V

    :cond_9
    return-void
.end method

.method getMiuiLaunchIconInfo()Lcom/miui/internal/transition/MiuiLaunchIconInfo;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->getMiuiLaunchIconInfo()Lcom/miui/internal/transition/MiuiLaunchIconInfo;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getOrientation()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    if-nez v0, :cond_10

    const/4 v0, -0x1

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1d

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isHomeAppToken()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->isHomeAppToken()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/AppWindowContainerListener;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method synthetic lambda$-com_android_server_wm_AppWindowContainerController_4371()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsVisible()V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_AppWindowContainerController_4662()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsGone()V

    return-void
.end method

.method synthetic lambda$-com_android_server_wm_AppWindowContainerController_4951()V
    .registers 8

    iget-object v6, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    if-nez v5, :cond_f

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v5, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez v3, :cond_26

    return-void

    :catchall_20
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_26
    const/4 v4, 0x0

    :try_start_27
    invoke-virtual {v3, v1}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManagerPolicy$StartingSurface;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_4d

    move-result-object v4

    :goto_2b
    if-eqz v4, :cond_4c

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v5, :cond_3c

    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v5, :cond_58

    :cond_3c
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_5b

    const/4 v0, 0x1

    :goto_43
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_4c

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$StartingSurface;->remove()V

    :cond_4c
    return-void

    :catch_4d
    move-exception v2

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Exception when adding starting window"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :cond_58
    :try_start_58
    iput-object v4, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5b

    goto :goto_43

    :catchall_5b
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method launchHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->launchHome()V

    :cond_9
    return-void
.end method

.method public notifyAppResumed(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->notifyAppResumed(Z)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyAppStopped()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to notify stopped of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->notifyAppStopped()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyUnknownVisibilityLaunched()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    :cond_15
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method onGestureCancel()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->onGestureCancel()V

    :cond_9
    return-void
.end method

.method onGestureFinished()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->onGestureFinished()V

    :cond_9
    return-void
.end method

.method onGestureReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->onGestureReady()V

    :cond_9
    return-void
.end method

.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public pauseKeyDispatching()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    :cond_15
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerGestureCallback(Lcom/android/server/wm/AppWindowContainerController$GestureCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    return-void
.end method

.method public removeContainer()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use removeContainer(displayId) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeContainer(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAppToken: Attempted to remove binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_4b

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4b

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4b
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStartingWindow()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_6a

    :cond_1d
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Landroid/view/WindowManagerPolicy$StartingSurface;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_6a

    if-nez v0, :cond_58

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_53
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_58
    :try_start_58
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v0}, Lcom/android/server/wm/-$Lambda$2NhxNQEdLIE-r7FU4LThto67iDM;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_6a

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6a
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    if-nez v1, :cond_f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_35

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/AppWindowToken;->reparent(Lcom/android/server/wm/Task;I)V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_2f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method reportStartingWindowDrawn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method reportWindowsDrawn()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method reportWindowsGone()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsGone:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method reportWindowsVisible()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mOnWindowsVisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeKeyDispatching()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    :cond_15
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method scheduleAddStartingWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public screenshotApplications(IIIF)Landroid/graphics/Bitmap;
    .registers 14

    :try_start_0
    const-string/jumbo v1, "screenshotApplications"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_43

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3d

    move-result-object v0

    if-nez v0, :cond_21

    :try_start_16
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_43

    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_21
    :try_start_21
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->screenshotApplications(Landroid/os/IBinder;IIZFLandroid/graphics/Bitmap$Config;ZZ)Landroid/graphics/Bitmap;
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_43

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v1

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method public setDisablePreviewScreenshots(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to set disable screenshots of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->setDisablePreviewScreenshots(Z)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setDummyVisible(ZZZ)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_61

    if-nez v2, :cond_f

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput-boolean p1, v2, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyVisible:Z

    if-eqz p3, :cond_4f

    const/4 v1, 0x0

    if-eqz p1, :cond_54

    const/4 v1, 0x0

    :goto_1d
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mIsDummyAnimating:Z

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleAppEnter:Z
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_61

    :cond_4f
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_54
    if-eqz p2, :cond_67

    const/4 v1, 0x1

    :try_start_57
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mNeedPendingShowSurface:Z
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_61

    goto :goto_1d

    :catchall_61
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_67
    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method setLaunchRecentsBehind(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mGestureCallback:Lcom/android/server/wm/AppWindowContainerController$GestureCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/AppWindowContainerController$GestureCallback;->setLaunchRecentsBehind(Z)V

    :cond_9
    return-void
.end method

.method public setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .registers 11

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_2c

    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_48

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->setOrientation(I)V

    if-eqz p4, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3b
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p3, v0, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_48

    move-result-object v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_46
    const/4 v0, 0x0

    goto :goto_3b

    :catchall_48
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVisibility(ZZ)V
    .registers 12

    iget-object v8, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_2b

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_133

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    if-nez p1, :cond_46

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_46

    if-nez p2, :cond_41

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v1, :cond_41

    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_133

    :cond_41
    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean p2, v0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-nez p1, :cond_f1

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->setVisibleBeforeClientHidden()V

    :goto_65
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_144

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_144

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-eqz v1, :cond_a2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v1, :cond_a2

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Will NOT set dummy animation on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", using null transferred animation!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v1, :cond_b7

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v1, :cond_b7

    :cond_b2
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->setDummyAnimation()V

    :cond_b7
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz p1, :cond_139

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    :goto_c6
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_ec

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_ec

    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_ec

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catchall {:try_start_46 .. :try_end_ec} :catchall_133

    :cond_ec
    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f1
    :try_start_f1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-nez v1, :cond_10c

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v1

    if-eqz v1, :cond_10c

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_10c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v1, :cond_117

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v1, :cond_12b

    :cond_117
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v1, :cond_121

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    :cond_121
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_12b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    :cond_12b
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z
    :try_end_131
    .catchall {:try_start_f1 .. :try_end_131} :catchall_133

    goto/16 :goto_65

    :catchall_133
    move-exception v1

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_139
    :try_start_139
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_c6

    :cond_144
    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_150
    .catchall {:try_start_139 .. :try_end_150} :catchall_133

    monitor-exit v8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public startFreezingScreen(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_2b

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_48

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2b
    if-nez p1, :cond_3c

    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_48

    move-result v0

    if-eqz v0, :cond_3c

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_48

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public stopFreezingScreen(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    if-nez v0, :cond_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppWindowContainerController{ token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

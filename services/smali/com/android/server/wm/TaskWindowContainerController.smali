.class public Lcom/android/server/wm/TaskWindowContainerController;
.super Lcom/android/server/wm/WindowContainerController;
.source "TaskWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskWindowContainerController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController",
        "<",
        "Lcom/android/server/wm/Task;",
        "Lcom/android/server/wm/TaskWindowContainerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

.field private final mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZZZLandroid/app/ActivityManager$TaskDescription;)V
    .registers 27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v13

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/WindowManagerService;)V
    .registers 29

    move-object/from16 v0, p2

    move-object/from16 v1, p13

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    new-instance v2, Lcom/android/server/wm/TaskWindowContainerController$H;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p13

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/android/server/wm/TaskWindowContainerController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    iget-object v14, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v14

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/TaskStack;

    if-nez v4, :cond_4f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TaskWindowContainerController: invalid stack="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v2

    monitor-exit v14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_4f
    const/4 v2, 0x2

    :try_start_50
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget v3, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/16 v3, 0x7919

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p12

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;->createTask(ILcom/android/server/wm/TaskStack;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZLandroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task;

    move-result-object v13

    iget v2, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_83

    const/16 p10, 0x0

    :cond_83
    if-eqz p10, :cond_94

    const v12, 0x7fffffff

    :goto_88
    move/from16 v0, p11

    move/from16 v1, p10

    invoke-virtual {v4, v13, v12, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V
    :try_end_8f
    .catchall {:try_start_50 .. :try_end_8f} :catchall_49

    monitor-exit v14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_94
    const/high16 v12, -0x80000000

    goto :goto_88
.end method


# virtual methods
.method public cancelThumbnailTransition()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_32

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelThumbnailTransition: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cancelTaskThumbnailTransition()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public cancelWindowTransition()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_32

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelWindowTransition: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method createTask(ILcom/android/server/wm/TaskStack;ILandroid/graphics/Rect;Landroid/content/res/Configuration;IZZLandroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task;
    .registers 22

    new-instance v0, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/Task;-><init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;Landroid/graphics/Rect;Landroid/content/res/Configuration;IZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskWindowContainerController;)V

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_2d

    const-string/jumbo v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempted to position of non-existing app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_4d

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2d
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    if-nez v1, :cond_53

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "positionChildAt: invalid task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_53
    const/4 v2, 0x0

    :try_start_54
    invoke-virtual {v1, p2, v0, v2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_4d

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public removeContainer()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    if-nez v0, :cond_f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public reparent(Lcom/android/server/wm/StackWindowController;IZ)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    if-nez v1, :cond_f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_35

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparent: could not find stack="

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
    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskStack;IZ)V

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_2f

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method reportSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskWindowContainerController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method requestResize(Landroid/graphics/Rect;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mHandler:Lcom/android/server/wm/TaskWindowContainerController$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resize(Landroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    move-result v0

    if-eqz v0, :cond_4a

    if-eqz p3, :cond_4a

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_2d

    :cond_4a
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public setResizeable(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setResizeable(I)V
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

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_32

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskDescription: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setTaskDockedResizing(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_32

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskDockedResizing: taskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3f

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{TaskWindowContainerController taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskWindowContainerController;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/systemui/recents/views/RecentsViewTouchHandler;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# instance fields
.field private mDividerSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

.field private mDownPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragRequested:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDragSlop:F

.field private mDragTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task"
    .end annotation
.end field

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragging:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mIsRemovingMenu:Z

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mRv:Lcom/android/systemui/recents/views/RecentsView;

.field private mTaskView:Lcom/android/systemui/recents/views/TaskView;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "drag_task_view_"
    .end annotation
.end field

.field private mTaskViewOffset:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mVisibleDockStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsRemovingMenu:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowOrHideAnimRunning()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsRemovingMenu:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v16, v11, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v17, v12, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, v11, v3

    float-to-double v0, v3

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragSlop:F

    float-to-double v0, v3

    move-wide/from16 v20, v0

    cmpl-double v3, v18, v20

    if-lez v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    float-to-int v3, v11

    float-to-int v4, v12

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    :cond_2
    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DropTarget;

    const/4 v3, 0x2

    new-array v15, v3, [I

    const/4 v3, 0x2

    new-array v13, v3, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v13}, Lcom/android/systemui/recents/views/RecentsView;->getLocationOnScreen([I)V

    :cond_4
    float-to-int v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    aget v4, v15, v4

    const/4 v7, 0x1

    aget v7, v13, v7

    sub-int/2addr v4, v7

    sget v7, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    add-int/2addr v4, v7

    :goto_2
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/recents/views/DropTarget;->acceptsDrop(IIIIZ)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v10, v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v3, v10, :cond_6

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v7, v10}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    float-to-int v4, v12

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ne v8, v3, :cond_a

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v4, v7, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_9
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v19, v0

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1, v3}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSnapAlgorithm()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    return-void
.end method


# virtual methods
.method public getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_1
    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_3

    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/RecentsActivity;->isForceBlack()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT_FORCE_BLACK:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_1
.end method

.method public getVisibleDockStates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack$DockState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->updateSnapAlgorithm()V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v7, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsDragging:Z

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragTask:Lcom/android/systemui/recents/model/Task;

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x2

    new-array v0, v4, [I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/RecentsView;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v5

    aget v6, v0, v6

    sub-int/2addr v5, v6

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v6

    aget v7, v0, v7

    sub-int/2addr v6, v7

    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDownPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskViewOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/TaskView;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDividerSnapAlgorithm:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget v6, v6, Lcom/android/systemui/recents/model/Task;->resizeMode:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v4, v4, Lcom/android/systemui/recents/model/Task;->isDockable:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v7, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {v5, v6, v7, p0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->setupVisibleDockStates()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mIsRemovingMenu:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->sOneKeyCleaning:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDragRequested:Z

    return v0
.end method

.method public registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setupVisibleDockStates()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->getDockStatesForCurrentOrientation()[Lcom/android/systemui/recents/model/TaskStack$DockState;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mRv:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/TaskStack$DockState;->update(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->mVisibleDockStates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

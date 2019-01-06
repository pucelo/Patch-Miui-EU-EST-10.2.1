.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mPerfObj:Landroid/util/BoostFramework;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iput-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-nez v0, :cond_26

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    :cond_26
    return-void
.end method

.method private getDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    sparse-switch v5, :sswitch_data_e4

    :cond_b
    :goto_b
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->mIsPerfLockAcquired:Z

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/server/am/ActivityManagerService;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v5}, Landroid/util/BoostFramework;->perfLockRelease()I

    sput-boolean v9, Lcom/android/server/am/ActivityManagerService;->mIsPerfLockAcquired:Z

    :cond_16
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    const/16 v6, 0x1043

    invoke-virtual {v5, v6, v8}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    sput-boolean v9, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    :cond_27
    return-void

    :sswitch_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    monitor-enter p0

    :try_start_33
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    if-nez v5, :cond_4a

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v7, 0x1f

    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_4c

    :cond_4a
    monitor-exit p0

    goto :goto_b

    :catchall_4c
    move-exception v5

    monitor-exit p0

    throw v5

    :sswitch_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_87

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_87

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_87

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v3, v5, :cond_af

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_a3

    const/16 v1, 0x3f9

    :cond_87
    :goto_87
    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v5, v1, :cond_b

    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d9

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v7, 0x37

    invoke-virtual {v5, v7, v3, v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    :cond_a3
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_ac

    const/16 v1, 0x3f8

    goto :goto_87

    :cond_ac
    const/16 v1, 0x3f6

    goto :goto_87

    :cond_af
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v3, v5, :cond_ca

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_be

    const/16 v1, 0x3f8

    goto :goto_87

    :cond_be
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_c7

    const/16 v1, 0x3f9

    goto :goto_87

    :cond_c7
    const/16 v1, 0x3f6

    goto :goto_87

    :cond_ca
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_d6

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_87

    :cond_d6
    const/16 v1, 0x3f7

    goto :goto_87

    :cond_d9
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto/16 :goto_b

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_28
        0x7 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_9
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

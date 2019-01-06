.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mMuteInput:Z

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 13

    const/4 v3, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_89
    .catchall {:try_start_1 .. :try_end_5} :catchall_9d

    if-nez v8, :cond_c

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_c
    :try_start_c
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_63

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_63

    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mMuteInput:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_63

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    const/4 v2, 0x0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_67

    const/4 v4, 0x1

    :goto_34
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v8, :cond_40

    if-eqz v4, :cond_3d

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    :cond_3d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    :cond_40
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_e8

    :goto_47
    :pswitch_47
    if-eqz v2, :cond_62

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4e} :catch_89
    .catchall {:try_start_c .. :try_end_4e} :catchall_9d

    :try_start_4e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_e1

    :try_start_58
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_89
    .catchall {:try_start_58 .. :try_end_62} :catchall_9d

    :cond_62
    const/4 v3, 0x1

    :cond_63
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_66
    return-void

    :cond_67
    const/4 v4, 0x0

    goto :goto_34

    :pswitch_69
    :try_start_69
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v8, :cond_a2

    xor-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_a2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mMuteInput:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_89
    .catchall {:try_start_69 .. :try_end_79} :catchall_9d

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_97

    move-result v2

    :try_start_84
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_88} :catch_89
    .catchall {:try_start_84 .. :try_end_88} :catchall_9d

    goto :goto_47

    :catch_89
    move-exception v1

    :try_start_8a
    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_9d

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_66

    :catchall_97
    move-exception v8

    :try_start_98
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v8
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_89
    .catchall {:try_start_98 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception v8

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8

    :cond_a2
    :try_start_a2
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a7} :catch_89
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_9d

    :try_start_a7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_b6

    :try_start_b1
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_47

    :catchall_b6
    move-exception v8

    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    :pswitch_bc
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mMuteInput:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c4} :catch_89
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_9d

    :try_start_c4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_d5

    move-result v2

    :try_start_cf
    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_47

    :catchall_d5
    move-exception v8

    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    :pswitch_db
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mMuteInput:Z

    const/4 v2, 0x1

    goto/16 :goto_47

    :catchall_e1
    move-exception v8

    monitor-exit v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v8
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e7} :catch_89
    .catchall {:try_start_cf .. :try_end_e7} :catchall_9d

    nop

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_47
        :pswitch_bc
        :pswitch_69
        :pswitch_db
    .end packed-switch
.end method

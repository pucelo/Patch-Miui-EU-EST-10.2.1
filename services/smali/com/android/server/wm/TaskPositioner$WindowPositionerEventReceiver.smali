.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 16

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    move-object v9, p1

    check-cast v9, Landroid/view/MotionEvent;

    const/4 v8, 0x0

    :try_start_11
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_12e
    .catchall {:try_start_11 .. :try_end_16} :catchall_143

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1e
    :try_start_1e
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_166

    :cond_2d
    :goto_2d
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v12

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_44} :catch_12e
    .catchall {:try_start_1e .. :try_end_44} :catchall_143

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_158

    :try_start_5b
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_12e
    .catchall {:try_start_5b .. :try_end_5f} :catchall_143

    if-eqz v12, :cond_8f

    :try_start_61
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V

    :cond_8f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get1(Lcom/android/server/wm/TaskPositioner;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15e

    const/4 v2, 0x0

    :goto_a1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_b7} :catch_161
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_b7} :catch_12e
    .catchall {:try_start_61 .. :try_end_b7} :catchall_143

    :cond_b7
    :goto_b7
    :try_start_b7
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c4} :catch_12e
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_143

    :cond_c4
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_c8
    return-void

    :pswitch_c9
    :try_start_c9
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d2} :catch_12e
    .catchall {:try_start_c9 .. :try_end_d2} :catchall_143

    :try_start_d2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3, v10, v11}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_ef
    .catchall {:try_start_d2 .. :try_end_ef} :catchall_13d

    :try_start_ef
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10d} :catch_12e
    .catchall {:try_start_ef .. :try_end_10d} :catchall_143

    :try_start_10d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_127} :catch_164
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_127} :catch_12e
    .catchall {:try_start_10d .. :try_end_127} :catchall_143

    :goto_127
    const-wide/16 v0, 0x20

    :try_start_129
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12c} :catch_12e
    .catchall {:try_start_129 .. :try_end_12c} :catchall_143

    goto/16 :goto_2d

    :catch_12e
    move-exception v7

    :try_start_12f
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception caught by drag handleMotion"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_12f .. :try_end_139} :catchall_143

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_c8

    :catchall_13d
    move-exception v0

    :try_start_13e
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_143} :catch_12e
    .catchall {:try_start_13e .. :try_end_143} :catchall_143

    :catchall_143
    move-exception v0

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    :pswitch_148
    :try_start_148
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_2d

    :pswitch_150
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_2d

    :catchall_158
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_15e} :catch_12e
    .catchall {:try_start_148 .. :try_end_15e} :catchall_143

    :cond_15e
    const/4 v2, 0x1

    goto/16 :goto_a1

    :catch_161
    move-exception v6

    goto/16 :goto_b7

    :catch_164
    move-exception v6

    goto :goto_127

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_148
        :pswitch_c9
        :pswitch_150
    .end packed-switch
.end method

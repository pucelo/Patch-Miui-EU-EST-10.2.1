.class Lcom/android/server/wm/MiuiGesturePointerEventListener$3;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoRecentsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "Cancel go recents animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-set1(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 12

    :try_start_0
    const-string/jumbo v5, "MiuiGesturePointerEventListener"

    const-string/jumbo v6, "go recents animation end"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_21

    const-string/jumbo v5, "recents"

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap5(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationEnd()V

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_bc

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_bc

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_95

    :try_start_6b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap6(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap4(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_8f

    goto :goto_72

    :catchall_8f
    move-exception v5

    :try_start_90
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_95

    :catch_95
    move-exception v0

    const-string/jumbo v5, "MiuiGesturePointerEventListener"

    const-string/jumbo v6, "recents animation end exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a7
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/MiuiGesturePointerEventListener$3$1;

    invoke-direct {v6, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$3$1;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener$3;)V

    const-wide/16 v8, 0x15e

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_b8
    :try_start_b8
    monitor-exit v6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_bc
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-set1(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c7} :catch_95

    goto :goto_a7
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    :try_start_0
    const-string/jumbo v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "start go RecentsAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationStart()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "start go recents animation exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

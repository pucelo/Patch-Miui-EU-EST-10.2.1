.class Lcom/android/server/wm/MiuiGesturePointerEventListener$2;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoBackAppAnimation()V
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

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "cancel go back animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9

    const/4 v6, 0x1

    :try_start_1
    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "go back animation end"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "cancel"

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap3(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get2(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I

    move-result v4

    if-ne v4, v6, :cond_34

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "don\'t reset on go back animation end"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-static {v5, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap4(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_70

    goto :goto_58

    :catch_70
    move-exception v0

    const-string/jumbo v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "go back animation end exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_82
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap8(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    return-void

    :cond_88
    :try_start_88
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_97} :catch_70

    goto :goto_82
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string/jumbo v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "start go back animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

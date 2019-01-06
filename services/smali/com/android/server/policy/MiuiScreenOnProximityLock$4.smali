.class Lcom/android/server/policy/MiuiScreenOnProximityLock$4;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-get2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    const/16 v2, 0xf00

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-set0(Lcom/android/server/policy/MiuiScreenOnProximityLock;Z)Z

    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-get0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

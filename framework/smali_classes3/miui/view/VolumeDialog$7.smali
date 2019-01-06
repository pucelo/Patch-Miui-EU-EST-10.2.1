.class Lmiui/view/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iput-boolean p2, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    const/4 v4, -0x2

    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    :cond_a
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9

    const/4 v6, 0x0

    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    :cond_a
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v1, 0x3e8

    const/16 v3, 0x3e8

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_78

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    :goto_5c
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v5}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-void

    :cond_78
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_5c
.end method

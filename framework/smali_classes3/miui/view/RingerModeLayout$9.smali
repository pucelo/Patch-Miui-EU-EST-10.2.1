.class Lmiui/view/RingerModeLayout$9;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

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

    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog;->rescheduleTimeout(Z)V

    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/view/RingerModeLayout;->-set0(Lmiui/view/RingerModeLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    iget-object v3, p0, Lmiui/view/RingerModeLayout$9;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get3(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;

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

    return-void
.end method

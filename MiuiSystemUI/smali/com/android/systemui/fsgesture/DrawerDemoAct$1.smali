.class Lcom/android/systemui/fsgesture/DrawerDemoAct$1;
.super Ljava/lang/Object;
.source "DrawerDemoAct.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DrawerDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const-wide/16 v6, 0xc8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v3, 0x1

    return v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get2(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get5(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get6(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get5(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get3(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    iget-object v3, v3, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/fsgesture/DrawerDemoAct$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct$1;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-wrap0(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v3}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get1(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v4}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->-get4(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

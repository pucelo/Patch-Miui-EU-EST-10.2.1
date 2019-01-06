.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->exitTakingLongScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

.field final synthetic val$isCancel:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->val$isCancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get5(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get7(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get4(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->val$isCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-set0(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;Z)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get8(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get20(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$24;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get6(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

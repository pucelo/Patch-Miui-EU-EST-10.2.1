.class Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;
.super Ljava/lang/Object;
.source "GlobalScreenshotDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->calScreenshotViewPaddingAndAnim(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x12c

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get17(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Lcom/android/systemui/screenshot/ScreenshotScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get3(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay$14;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;->-get2(Lcom/android/systemui/screenshot/GlobalScreenshotDisplay;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

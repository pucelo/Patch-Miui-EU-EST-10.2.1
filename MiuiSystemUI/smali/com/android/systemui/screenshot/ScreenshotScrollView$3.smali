.class Lcom/android/systemui/screenshot/ScreenshotScrollView$3;
.super Ljava/lang/Object;
.source "ScreenshotScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotScrollView;->gotoSingleBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-set1(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get3(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get4(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get4(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-set0(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    return-void
.end method

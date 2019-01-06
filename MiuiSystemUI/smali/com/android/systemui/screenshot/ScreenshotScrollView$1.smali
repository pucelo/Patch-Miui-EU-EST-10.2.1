.class Lcom/android/systemui/screenshot/ScreenshotScrollView$1;
.super Ljava/lang/Object;
.source "ScreenshotScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotScrollView;
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

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get1(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScreenshotScrollView"

    const-string/jumbo v1, "mIsAnimatingStoped, but also get here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get2(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ScreenshotScrollView"

    const-string/jumbo v1, "bitmap is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-get0(Lcom/android/systemui/screenshot/ScreenshotScrollView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->-wrap0(Lcom/android/systemui/screenshot/ScreenshotScrollView;I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotScrollView;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

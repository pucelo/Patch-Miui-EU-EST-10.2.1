.class Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;
.super Lcom/android/systemui/util/FixedFileObserver;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessFileObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;
    }
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/util/FixedFileObserver;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;-><init>(Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v2

    sget v3, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startWatching(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopWatching()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/android/systemui/util/FixedFileObserver;->stopWatching()V

    return-void
.end method

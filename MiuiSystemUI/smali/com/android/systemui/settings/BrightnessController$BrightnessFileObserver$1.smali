.class Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;->this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;->this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    sget v1, Lcom/android/systemui/settings/BrightnessController;->RANGE:I

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;->this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get7(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;->this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1}, Lcom/android/systemui/settings/BrightnessController;->getScreenBrightness()I

    move-result v1

    sget v2, Lcom/android/systemui/settings/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver$1;->this$1:Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessFileObserver;->startWatching()V

    return-void
.end method

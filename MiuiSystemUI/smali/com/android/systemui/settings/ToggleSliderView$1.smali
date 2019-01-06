.class Lcom/android/systemui/settings/ToggleSliderView$1;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->-get5(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get1(Lcom/android/systemui/settings/ToggleSliderView;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->-set0(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    const-string/jumbo v0, "ToggleSliderView"

    const-string/jumbo v1, "ignoring onStartTrackingTouch, maybe tap event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->-set1(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onStart(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->-get5(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->-get4(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get0(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->-set0(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    const-string/jumbo v0, "ToggleSliderView"

    const-string/jumbo v1, "ignoring onStopTrackingTouch, maybe tap event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->-set1(Lcom/android/systemui/settings/ToggleSliderView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleSliderView;->-get5(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v3}, Lcom/android/systemui/settings/ToggleSliderView;->-get4(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZIZ)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onStop(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->-get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    :cond_2
    return-void
.end method

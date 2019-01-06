.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap11(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->dismiss()V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->destory()V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$Accessibility;->init()V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set1(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get3(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setLayoutDirection(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get17(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onVolumeChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$2;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap6(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;IZ)V

    return-void
.end method

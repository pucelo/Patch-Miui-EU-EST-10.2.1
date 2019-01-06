.class Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "MiuiVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->initDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get14(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set5(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    :cond_2
    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$5;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get7(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->show()V

    :cond_0
    return-void
.end method

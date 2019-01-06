.class final Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "MiuiVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get9(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v0, v2, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap12(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;ZZ)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get16(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/miui/volume/R$string;->volume_dialog_accessibility_shown_message:I

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    iget-object v7, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap0(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;->-get13(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$VolumeColumn;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-wrap2(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v9

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v8
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->rescheduleTimeoutH()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get8(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isAnimating()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/miui/volume/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-set4(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->-get10(Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;)Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogImpl;->dismissH(I)V

    return v3

    :cond_1
    return v2
.end method

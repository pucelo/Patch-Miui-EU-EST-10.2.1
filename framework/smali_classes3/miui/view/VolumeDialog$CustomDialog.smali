.class final Lmiui/view/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    :goto_33
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_38
    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-wrap3(Lmiui/view/VolumeDialog;)V

    goto :goto_33
.end method

.method protected onStart()V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->-get1(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v0}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmiui/view/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    return v5

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    :cond_27
    return v4

    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    iget v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    cmpg-float v2, v0, v1

    if-gez v2, :cond_27

    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-get2(Lmiui/view/VolumeDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_27

    iget-object v2, p0, Lmiui/view/VolumeDialog$CustomDialog;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2}, Lmiui/view/VolumeDialog;->-wrap1(Lmiui/view/VolumeDialog;)V

    return v5
.end method

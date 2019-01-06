.class public Lcom/android/server/wm/MiuiInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MiuiInputEventReceiver.java"


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MiuiInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

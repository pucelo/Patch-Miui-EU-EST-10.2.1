.class final Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvInputSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/ITvInputSessionWrapper;


# direct methods
.method public constructor <init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-virtual {p0, p1, v2}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_e
    iget-object v3, p0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->this$0:Landroid/media/tv/ITvInputSessionWrapper;

    invoke-static {v3}, Landroid/media/tv/ITvInputSessionWrapper;->-get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;

    move-result-object v3

    invoke-virtual {v3, p1, p0}, Landroid/media/tv/TvInputService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_20

    if-ne v0, v1, :cond_21

    :goto_1d
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :cond_20
    return-void

    :cond_21
    move v1, v2

    goto :goto_1d
.end method

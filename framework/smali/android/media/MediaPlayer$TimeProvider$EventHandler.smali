.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2e

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_a

    :pswitch_12
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_a

    :pswitch_18
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap1(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_a

    :pswitch_1e
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap0(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_a

    :pswitch_24
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-static {v1, v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap3(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    goto :goto_a

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

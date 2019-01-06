.class Lmiui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandThreadHandler"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->-wrap0(Lmiui/maml/RenderThread;Z)V

    goto :goto_5

    :pswitch_d
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->-wrap0(Lmiui/maml/RenderThread;Z)V

    goto :goto_5

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method

.method public setPause(Z)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    :goto_8
    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread$CommandThreadHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e
    const/4 v1, 0x1

    goto :goto_8
.end method

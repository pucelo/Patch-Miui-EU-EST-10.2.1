.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_80

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    goto :goto_6

    :pswitch_d
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    :cond_1f
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    goto :goto_6

    :pswitch_25
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_6

    :pswitch_38
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStartListening()V

    goto :goto_6

    :pswitch_4c
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v2, v1}, Landroid/service/quicksettings/TileService;->-set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onClick()V

    goto :goto_6

    :pswitch_5b
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :pswitch_6d
    :try_start_6d
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_7c} :catch_7d

    goto :goto_6

    :catch_7d
    move-exception v0

    goto :goto_6

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_38
        :pswitch_25
        :pswitch_7
        :pswitch_d
        :pswitch_4c
        :pswitch_5b
        :pswitch_6d
    .end packed-switch
.end method

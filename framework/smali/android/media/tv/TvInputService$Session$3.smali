.class Landroid/media/tv/TvInputService$Session$3;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyChannelRetuned(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$channelUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$3;->this$1:Landroid/media/tv/TvInputService$Session;

    iput-object p2, p0, Landroid/media/tv/TvInputService$Session$3;->val$channelUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$3;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$3;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$3;->val$channelUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onChannelRetuned(Landroid/net/Uri;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string/jumbo v1, "TvInputService"

    const-string/jumbo v2, "error in notifyChannelRetuned"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method
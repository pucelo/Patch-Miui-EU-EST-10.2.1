.class Landroid/media/tv/TvInputService$RecordingSession$4;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$eventArgs:Landroid/os/Bundle;

.field final synthetic val$eventType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventArgs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventArgs:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputSessionCallback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "TvInputService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in sending event (event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/TvInputService$RecordingSession$4;->val$eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.class Landroid/media/tv/TvInputService$Session$10;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyTimeShiftStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;I)V
    .registers 3

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$10;->this$1:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$10;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$10;->this$1:Landroid/media/tv/TvInputService$Session;

    iget v1, p0, Landroid/media/tv/TvInputService$Session$10;->val$status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    :try_start_b
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$10;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$10;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputService$Session$10;->val$status:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onTimeShiftStatusChanged(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x0

    goto :goto_8

    :catch_21
    move-exception v0

    const-string/jumbo v1, "TvInputService"

    const-string/jumbo v2, "error in notifyTimeShiftStatusChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

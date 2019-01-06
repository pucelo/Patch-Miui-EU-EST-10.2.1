.class Landroid/service/dreams/DreamService$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;

.field final synthetic val$started:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get4(Landroid/service/dreams/DreamService;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_10
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get1(Landroid/service/dreams/DreamService;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v1}, Landroid/service/dreams/DreamService;->-get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Calling onDreamingStarted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/dreams/DreamService;->-set0(Landroid/service/dreams/DreamService;Z)Z

    :try_start_2a
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Landroid/service/dreams/DreamService;->onDreamingStarted()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3c

    :try_start_2f
    iget-object v1, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_3c
    move-exception v1

    :try_start_3d
    iget-object v2, p0, Landroid/service/dreams/DreamService$1;->val$started:Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_43} :catch_44

    throw v1

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

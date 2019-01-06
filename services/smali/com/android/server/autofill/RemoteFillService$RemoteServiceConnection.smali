.class Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get4(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get1(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    :cond_14
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-wrap0(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get3(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v4}, Lcom/android/server/autofill/RemoteFillService;->-get7(Lcom/android/server/autofill/RemoteFillService;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2b
    return-void

    :cond_2c
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3, v6}, Lcom/android/server/autofill/RemoteFillService;->-set1(Lcom/android/server/autofill/RemoteFillService;Z)Z

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/autofill/RemoteFillService;->-set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    :try_start_3a
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_40} :catch_68

    :try_start_40
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_6f

    :goto_4a
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3}, Lcom/android/server/autofill/RemoteFillService;->-get6(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3, v7}, Lcom/android/server/autofill/RemoteFillService;->-set2(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3, v1}, Lcom/android/server/autofill/RemoteFillService;->-wrap8(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    :cond_62
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v3, v6}, Lcom/android/server/autofill/RemoteFillService;->-set3(Lcom/android/server/autofill/RemoteFillService;Z)Z

    return-void

    :catch_68
    move-exception v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v3}, Lcom/android/server/autofill/RemoteFillService;->binderDied()V

    return-void

    :catch_6f
    move-exception v0

    const-string/jumbo v3, "RemoteFillService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception calling onConnected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->-set1(Lcom/android/server/autofill/RemoteFillService;Z)Z

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->-set0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    return-void
.end method

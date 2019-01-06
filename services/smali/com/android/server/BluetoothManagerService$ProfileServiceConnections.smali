.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 6

    const/16 v3, 0x191

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_1e

    :try_start_b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    invoke-interface {p1, v2, v3}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to connect to proxy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_1e
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method private bindService()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p0, v4, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x1

    return v1

    :cond_30
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind with intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private removeAllProxies()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_f

    :try_start_a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to disconnect proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :cond_1b
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Trying to remove a null proxy"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profile service for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    const/16 v4, 0x191

    invoke-virtual {v3, v4, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    :try_start_10
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_24

    :goto_16
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Proxy callbacks already in progress."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to linkToDeath"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :cond_2f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v2, :cond_5d

    :try_start_3b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_46} :catch_49
    .catchall {:try_start_3b .. :try_end_46} :catchall_54

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :catch_49
    move-exception v0

    :try_start_4a
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to connect to proxy"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_54

    goto :goto_46

    :catchall_54
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v3

    :cond_5d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_d} :catch_1f

    :goto_d
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v5, "Proxy callbacks already in progress."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v5, "Unable to unlinkToDeath"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_2a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v3, :cond_58

    :try_start_36
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_41} :catch_44
    .catchall {:try_start_36 .. :try_end_41} :catchall_4f

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :catch_44
    move-exception v0

    :try_start_45
    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v5, "Unable to disconnect from proxy"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4f

    goto :goto_41

    :catchall_4f
    move-exception v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v4

    :cond_58
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    return-void
.end method

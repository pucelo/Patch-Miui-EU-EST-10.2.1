.class Landroid/location/MiuiLocationManagerProxy$ProxyBinder;
.super Ljava/lang/Object;
.source "MiuiLocationManagerProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/MiuiLocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyBinder"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .registers 2

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public pingBinder()Z
    .registers 2

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 3

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v6, Landroid/location/MiuiLocationManagerProxy;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Landroid/location/MiuiLocationManagerProxy;->-get0()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/location/MiuiLocationManagerProxy;->-get0()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;->onInvoke(Landroid/os/IBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_21

    move-result v0

    monitor-exit v6

    return v0

    :cond_19
    monitor-exit v6

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .registers 4

    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

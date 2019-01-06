.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private final mPort:I

.field private final mResourceId:I

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    :try_start_b
    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, p2, v3}, Landroid/net/IIpSecService;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v1

    iget v2, v1, Landroid/net/IpSecUdpEncapResponse;->status:I

    packed-switch v2, :pswitch_data_5c

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown status returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :pswitch_3d
    :try_start_3d
    new-instance v2, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v3, "No more Sockets may be allocated by this requester."

    invoke-direct {v2, v3}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_46
    iget v2, v1, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    iput v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    iget v2, v1, Landroid/net/IpSecUdpEncapResponse;->port:I

    iput v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    iget-object v2, v1, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_52} :catch_37

    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "constructor"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3d
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget v3, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-interface {v2, v3}, Landroid/net/IIpSecService;->closeUdpEncapsulationSocket(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_12

    :try_start_7
    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_18

    iget-object v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_18
    move-exception v1

    const-string/jumbo v2, "IpSecManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close UDP Encapsulation Socket with Port= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    return-void
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    return v0
.end method

.method getResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    return v0
.end method

.method public getSocket()Ljava/io/FileDescriptor;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

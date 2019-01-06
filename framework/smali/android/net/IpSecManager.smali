.class public final Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$Status;,
        Landroid/net/IpSecManager$UdpEncapsulationSocket;
    }
.end annotation


# static fields
.field public static final INVALID_RESOURCE_ID:I = 0x0

.field public static final INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method public constructor <init>(Landroid/net/IIpSecService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing service"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IIpSecService;

    iput-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    return-void
.end method

.method private applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public applyTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public applyTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public applyTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public applyTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .registers 3

    return-void
.end method

.method public openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Specified port must be a valid port number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public removeTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public removeTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public removeTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_2e

    if-eqz v0, :cond_e

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_11

    :cond_e
    :goto_e
    if-eqz v2, :cond_2d

    throw v2

    :catch_11
    move-exception v2

    goto :goto_e

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_19
    if-eqz v0, :cond_1e

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2c

    throw v2

    :catch_21
    move-exception v3

    if-nez v2, :cond_26

    move-object v2, v3

    goto :goto_1e

    :cond_26
    if-eq v2, v3, :cond_1e

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_2c
    throw v1

    :cond_2d
    return-void

    :catchall_2e
    move-exception v1

    goto :goto_19
.end method

.method public removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .registers 3

    return-void
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V
    :try_end_b
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v6

    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v1, "No SPIs available"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    if-nez p3, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V

    return-object v0
.end method

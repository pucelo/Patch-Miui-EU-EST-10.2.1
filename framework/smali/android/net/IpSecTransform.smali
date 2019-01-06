.class public final Landroid/net/IpSecTransform;
.super Ljava/lang/Object;
.source "IpSecTransform.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransform$1;,
        Landroid/net/IpSecTransform$Builder;
    }
.end annotation


# static fields
.field public static final DIRECTION_IN:I = 0x0

.field public static final DIRECTION_OUT:I = 0x1

.field public static final ENCAP_ESPINUDP:I = 0x2

.field public static final ENCAP_ESPINUDP_NON_IKE:I = 0x1

.field public static final ENCAP_NONE:I = 0x0

.field private static final MODE_TRANSPORT:I = 0x1

.field private static final MODE_TUNNEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecTransform"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mContext:Landroid/content/Context;

.field private mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private mKeepaliveStatus:I

.field private mKeepaliveSyncLock:Ljava/lang/Object;

.field private mResourceId:I


# direct methods
.method static synthetic -get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/IpSecTransform;I)I
    .registers 2

    iput p1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;
    .registers 2

    invoke-direct {p0}, Landroid/net/IpSecTransform;->activate()Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    new-instance v0, Landroid/net/IpSecTransform$1;

    invoke-direct {v0, p0}, Landroid/net/IpSecTransform$1;-><init>(Landroid/net/IpSecTransform;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iput-object p1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    return-void
.end method

.method private activate()Landroid/net/IpSecTransform;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/net/IIpSecService;->createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;

    move-result-object v1

    iget v2, v1, Landroid/net/IpSecTransformResponse;->status:I

    invoke-direct {p0, v2}, Landroid/net/IpSecTransform;->checkResultStatusAndThrow(I)V

    iget v4, v1, Landroid/net/IpSecTransformResponse;->resourceId:I

    iput v4, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget-object v4, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/net/IpSecTransform;->startKeepalive(Landroid/content/Context;)V

    const-string/jumbo v4, "IpSecTransform"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Added Transform with Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "build"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_44
    .catchall {:try_start_1 .. :try_end_42} :catchall_4a

    monitor-exit p0

    return-object p0

    :catch_44
    move-exception v0

    :try_start_45
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkResultStatusAndThrow(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_32

    :goto_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to Create a Transform with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    return-void

    :pswitch_1e
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v1, "Failed to allocate a new IpSecTransform"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    const-string/jumbo v0, "IpSecTransform"

    const-string/jumbo v1, "Attempting to use an SPI that was somehow not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_27
    .end packed-switch
.end method

.method private getIpSecService()Landroid/net/IIpSecService;
    .registers 4

    const-string/jumbo v1, "ipsec"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Failed to connect to IpSecService"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_16
    invoke-static {v0}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v2, "IpSecTransform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing Transform with Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    if-nez v2, :cond_27

    iget-object v2, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :cond_27
    :try_start_27
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v1

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->deleteTransportModeTransform(I)V

    invoke-virtual {p0}, Landroid/net/IpSecTransform;->stopKeepalive()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_33} :catch_3b
    .catchall {:try_start_27 .. :try_end_33} :catchall_41

    iput v5, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget-object v2, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v2

    iput v5, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget-object v3, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v3}, Ldalvik/system/CloseGuard;->close()V

    throw v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    return-void
.end method

.method getConfig()Landroid/net/IpSecConfig;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method getResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return v0
.end method

.method startKeepalive(Landroid/content/Context;)V
    .registers 11

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getNattKeepaliveInterval()I

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    if-eqz v1, :cond_20

    const-string/jumbo v1, "IpSecTransform"

    const-string/jumbo v2, "Keepalive already started for this IpSecTransform."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object v8, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_23
    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v1

    iget-object v2, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getNattKeepaliveInterval()I

    move-result v2

    iget-object v3, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iget-object v4, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v5}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v6

    const/16 v5, 0x1234

    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_5a

    :try_start_45
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4c} :catch_5e
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5a

    :goto_4c
    monitor-exit v8

    iget v1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Packet Keepalive cannot be started"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5a
    move-exception v1

    monitor-exit v8

    throw v1

    :cond_5d
    return-void

    :catch_5e
    move-exception v7

    goto :goto_4c
.end method

.method stopKeepalive()V
    .registers 7

    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V

    iget-object v2, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    iget v1, p0, Landroid/net/IpSecTransform;->mKeepaliveStatus:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1a

    if-nez v1, :cond_18

    :try_start_11
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepaliveSyncLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_1d
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    :cond_18
    :goto_18
    monitor-exit v2

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_1d
    move-exception v0

    goto :goto_18
.end method

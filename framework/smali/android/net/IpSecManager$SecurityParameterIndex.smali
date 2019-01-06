.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
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
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mRemoteAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private mSpi:I


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput v4, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iput-object p3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mRemoteAddress:Ljava/net/InetAddress;

    :try_start_10
    iget-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v3, p2, v4, p4, v5}, Landroid/net/IIpSecService;->reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v1

    if-nez v1, :cond_30

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Received null response from IpSecService"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_30
    :try_start_30
    iget v2, v1, Landroid/net/IpSecSpiResponse;->status:I

    packed-switch v2, :pswitch_data_ae

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown status returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_4f
    new-instance v3, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v4, "No more SPIs may be allocated by this requester."

    invoke-direct {v3, v4}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_58
    new-instance v3, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string/jumbo v4, "Requested SPI is unavailable"

    invoke-direct {v3, v4, p4}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    throw v3

    :pswitch_61
    iget v3, v1, Landroid/net/IpSecSpiResponse;->spi:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    iget v3, v1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    if-nez v3, :cond_87

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid SPI returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_87
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    if-nez v3, :cond_a5

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid Resource ID returned by IpSecService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a5} :catch_2a

    :cond_a5
    iget-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v4, "open"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_61
        :pswitch_4f
        :pswitch_58
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected finalize()V
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    return-void
.end method

.method getResourceId()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public getSpi()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method

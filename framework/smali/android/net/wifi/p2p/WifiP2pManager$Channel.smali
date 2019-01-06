.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field final mBinder:Landroid/os/Binder;

.field private mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field mContext:Landroid/content/Context;

.field private mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

.field private mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

.field private mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMapLock:Ljava/lang/Object;

.field private final mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

.field private mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    iput-object p5, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V
    .registers 6

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;->onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getTxtRecord()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;->onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1d

    :cond_3c
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled resp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .registers 6

    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V

    goto :goto_9

    :cond_18
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getServiceType()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_9
.end method

.method private handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V
    .registers 5

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getUniqueServiceNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;->onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method private putListener(Ljava/lang/Object;)I
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_7
    :try_start_7
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    monitor-exit v2

    return v0

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_18

    const-string/jumbo v1, "WifiP2pManager"

    const-string/jumbo v2, "Channel.close(): Null mP2pManager!?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/IWifiP2pManager;->close(Landroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_d

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

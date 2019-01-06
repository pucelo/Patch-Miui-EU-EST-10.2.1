.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"


# direct methods
.method static synthetic -wrap0()Landroid/net/IConnectivityManager;
    .registers 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static check(Ljava/net/InetAddress;I)V
    .registers 4

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_22

    if-ltz p1, :cond_19

    const/16 v0, 0x20

    if-le p1, v0, :cond_3e

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_35

    if-ltz p1, :cond_2c

    const/16 v0, 0x80

    if-le p1, v0, :cond_3e

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad prefixLength"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    return-void
.end method

.method private static getService()Landroid/net/IConnectivityManager;
    .registers 1

    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    return-object v5

    :catch_15
    move-exception v0

    :cond_16
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static prepareAndAuthorize(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_17
    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v1

    goto :goto_1b
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)Z
    .registers 6

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->addVpnAddress(Ljava/lang/String;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    const-string/jumbo v0, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Landroid/net/VpnService$Callback;

    invoke-direct {v0, p0, v2}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback;)V

    return-object v0

    :cond_16
    return-object v2
.end method

.method public onRevoke()V
    .registers 1

    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    return-void
.end method

.method public protect(I)Z
    .registers 3

    invoke-static {p1}, Landroid/net/NetworkUtils;->protectFromVpn(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/DatagramSocket;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public protect(Ljava/net/Socket;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .registers 6

    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/IConnectivityManager;->removeVpnAddress(Ljava/lang/String;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

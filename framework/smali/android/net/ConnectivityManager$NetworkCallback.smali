.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static synthetic -get0(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .registers 2

    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .registers 2

    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .registers 3

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .registers 2

    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .registers 2

    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .registers 2

    return-void
.end method

.method public onUnavailable()V
    .registers 1

    return-void
.end method

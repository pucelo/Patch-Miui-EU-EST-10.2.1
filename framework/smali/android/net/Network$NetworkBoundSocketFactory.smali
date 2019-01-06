.class Landroid/net/Network$NetworkBoundSocketFactory;
.super Ljavax/net/SocketFactory;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoundSocketFactory"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;I)V
    .registers 3

    iput-object p1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput p2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->mNetId:I

    return-void
.end method

.method private connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    array-length v4, v1

    if-ge v2, v4, :cond_28

    :try_start_a
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    if-eqz p3, :cond_13

    invoke-virtual {v3, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_13
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v1, v2

    invoke-direct {v4, v5, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1d} :catch_1e

    return-object v3

    :catch_1e
    move-exception v0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_25

    throw v0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_28
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-direct {v4, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iget-object v1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

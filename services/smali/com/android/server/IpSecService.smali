.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$ManagedResource;,
        Lcom/android/server/IpSecService$ManagedResourceArray;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$UdpSocketRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field private static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field private static mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$UdpSocketRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v1, "IpSecService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/IpSecService;->DBG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v1, 0x4

    :try_start_13
    new-array v1, v1, [B

    fill-array-data v1, :array_30

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_1e} :catch_29

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0xfaded0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_30
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xa

    :goto_2
    if-lez v1, :cond_50

    :try_start_4
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v6, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    sget-object v4, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    invoke-static {v3}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    const-string/jumbo v4, "IpSecService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Binding to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v4, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception v0

    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v4, v5, :cond_4b

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4b
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    :cond_50
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Failed 10 attempts to bind to a port"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private connectNativeNetdService()V
    .registers 2

    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    return-object v0
.end method

.method private declared-synchronized releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/IpSecService$ManagedResource;",
            ">(",
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v0

    if-nez v0, :cond_2f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not available to be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->release()V

    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->remove(I)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual {v0, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v9

    check-cast v9, Lcom/android/server/IpSecService$TransformRecord;

    if-nez v9, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    :try_start_2f
    iget v0, v9, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_3f

    iget v0, v9, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_48

    :cond_3f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_2c

    move-result-object v7

    :try_start_4c
    sget-object v11, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_51
    if-ge v10, v12, :cond_92

    aget v3, v11, v10

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_89

    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    :goto_6b
    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_8d

    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_79
    invoke-virtual {v9, v3}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v6

    move v2, p2

    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_51

    :cond_89
    const-string/jumbo v4, ""

    goto :goto_6b

    :cond_8d
    const-string/jumbo v5, ""
    :try_end_90
    .catch Landroid/os/ServiceSpecificException; {:try_start_4c .. :try_end_90} :catch_91
    .catchall {:try_start_4c .. :try_end_90} :catchall_2c

    goto :goto_79

    :catch_91
    move-exception v8

    :cond_92
    monitor-exit p0

    return-void
.end method

.method public closeUdpEncapsulationSocket(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "UdpEncapsulationSocket"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    sget-object v2, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    array-length v2, v2

    new-array v0, v2, [Lcom/android/server/IpSecService$SpiRecord;

    move-object/from16 v25, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v17

    if-eqz v17, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapLocalResourceId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v26

    check-cast v26, Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/IpSecService$UdpSocketRecord;->getPort()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v19

    :cond_30
    sget-object v21, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v2, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v2

    :goto_3a
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_ea

    aget v5, v21, v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getAuthentication(I)Landroid/net/IpSecAlgorithm;

    move-result-object v27

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getEncryption(I)Landroid/net/IpSecAlgorithm;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getSpiResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v2

    check-cast v2, Lcom/android/server/IpSecService$SpiRecord;

    aput-object v2, v25, v5

    aget-object v2, v25, v5

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_108

    move-result v10

    :try_start_66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_c5

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    :goto_7c
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_c9

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    :goto_8a
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    if-eqz v8, :cond_cd

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    :goto_98
    if-eqz v27, :cond_d0

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_9e
    if-eqz v27, :cond_d4

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v12

    :goto_a4
    if-eqz v27, :cond_d6

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v13

    :goto_aa
    if-eqz v28, :cond_d8

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v14

    :goto_b0
    if-eqz v28, :cond_dc

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v15

    :goto_b6
    if-eqz v28, :cond_de

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v16

    :goto_bc
    invoke-interface/range {v2 .. v19}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_3a

    :cond_c5
    const-string/jumbo v6, ""

    goto :goto_7c

    :cond_c9
    const-string/jumbo v7, ""

    goto :goto_8a

    :cond_cd
    const-wide/16 v8, 0x0

    goto :goto_98

    :cond_d0
    const-string/jumbo v11, ""

    goto :goto_9e

    :cond_d4
    const/4 v12, 0x0

    goto :goto_a4

    :cond_d6
    const/4 v13, 0x0

    goto :goto_aa

    :cond_d8
    const-string/jumbo v14, ""
    :try_end_db
    .catch Landroid/os/ServiceSpecificException; {:try_start_66 .. :try_end_db} :catch_e1
    .catchall {:try_start_66 .. :try_end_db} :catchall_108

    goto :goto_b0

    :cond_dc
    const/4 v15, 0x0

    goto :goto_b6

    :cond_de
    const/16 v16, 0x0

    goto :goto_bc

    :catch_e1
    move-exception v29

    :try_start_e2
    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_108

    monitor-exit p0

    return-object v2

    :cond_ea
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    new-instance v20, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v21, p0

    move/from16 v22, v3

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    invoke-direct/range {v20 .. v26}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_106
    .catchall {:try_start_ea .. :try_end_106} :catchall_108

    monitor-exit p0

    return-object v2

    :catchall_108
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public deleteTransportModeTransform(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "IpSecTransform"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IpSecService Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "alive"

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_35
    const-string/jumbo v0, "dead"

    goto :goto_26
.end method

.method getNetdInstance()Landroid/net/INetd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Failed to Get Netd Instance"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0
.end method

.method declared-synchronized isNetdAlive()Z
    .registers 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_10
    .catchall {:try_start_2 .. :try_end_5} :catchall_13

    move-result-object v0

    if-nez v0, :cond_a

    monitor-exit p0

    return v2

    :cond_a
    :try_start_a
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_10
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    move-result v2

    monitor-exit p0

    return v2

    :catch_10
    move-exception v1

    monitor-exit p0

    return v2

    :catchall_13
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_18

    const/16 v0, 0x400

    if-lt p1, v0, :cond_c

    const v0, 0xffff

    if-le p1, v0, :cond_18

    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :try_start_18
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    move-result v2

    const/4 v4, 0x0

    :try_start_1f
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz p1, :cond_68

    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v4, v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :goto_4a
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    sget v1, Landroid/system/OsConstants;->UDP_ENCAP:I

    sget v3, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    invoke-static {v4, v0, v1, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v7, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    new-instance v0, Lcom/android/server/IpSecService$UdpSocketRecord;

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/IpSecService$UdpSocketRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    invoke-virtual {v7, v2, v0}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, p1, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_66} :catch_6c
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_66} :catch_6c
    .catchall {:try_start_1f .. :try_end_66} :catchall_15

    monitor-exit p0

    return-object v0

    :cond_68
    :try_start_68
    invoke-direct {p0, v4}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_15

    goto :goto_4a

    :catch_6c
    move-exception v6

    :try_start_6d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_15

    monitor-exit p0

    return-object v0
.end method

.method public releaseSecurityParameterIndex(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "SecurityParameterIndex"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    return-void
.end method

.method public removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public declared-synchronized reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v11, 0x0

    const-string/jumbo v3, ""
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_52

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    move v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v0, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allocated SPI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    new-instance v4, Lcom/android/server/IpSecService$SpiRecord;

    move-object v5, p0

    move v6, v1

    move-object/from16 v7, p4

    move v8, p1

    move-object v9, v3

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V
    :try_end_44
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_44} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_44} :catch_4c
    .catchall {:try_start_b .. :try_end_44} :catchall_52

    :try_start_44
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_52

    monitor-exit p0

    return-object v0

    :catch_4c
    move-exception v12

    :try_start_4d
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_55
    move-exception v13

    :try_start_56
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_52

    monitor-exit p0

    return-object v0
.end method

.method public systemReady()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    return-void

    :cond_10
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

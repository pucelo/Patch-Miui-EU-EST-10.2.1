.class Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .registers 14

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V
    .registers 10

    invoke-direct/range {p0 .. p6}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/net/InetAddress;J)V

    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_12

    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const/16 v0, 0x80

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    :goto_11
    return-void

    :cond_12
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const/16 v0, 0x8

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    goto :goto_11
.end method


# virtual methods
.method public call()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_2
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_f} :catch_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_5a

    const/16 v1, 0x8

    new-array v10, v1, [B

    iget v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    aput-byte v1, v10, v13

    const/4 v1, 0x1

    aput-byte v13, v10, v1

    const/4 v1, 0x2

    aput-byte v13, v10, v1

    const/4 v1, 0x3

    aput-byte v13, v10, v1

    const/4 v1, 0x4

    aput-byte v13, v10, v1

    const/4 v1, 0x5

    aput-byte v13, v10, v1

    const/4 v1, 0x6

    aput-byte v13, v10, v1

    const/4 v1, 0x7

    aput-byte v13, v10, v1

    const/4 v0, 0x0

    :goto_2e
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap1()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mDeadlineTime:J

    const-wide/16 v6, 0x190

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_56

    add-int/lit8 v0, v0, 0x1

    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, v10, v1

    :try_start_43
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v10, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_4a
    .catch Landroid/system/ErrnoException; {:try_start_43 .. :try_end_4a} :catch_65
    .catch Ljava/io/InterruptedIOException; {:try_start_43 .. :try_end_4a} :catch_65

    const/16 v1, 0x200

    :try_start_4c
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_55
    .catch Landroid/system/ErrnoException; {:try_start_4c .. :try_end_55} :catch_70
    .catch Ljava/io/InterruptedIOException; {:try_start_4c .. :try_end_55} :catch_70

    const/4 v12, 0x1

    :cond_56
    :goto_56
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->close()V

    return v12

    :catch_5a
    move-exception v9

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "IcmpCheck"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v12

    :catch_65
    move-exception v9

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "IcmpCheck"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_70
    move-exception v9

    goto :goto_2e
.end method

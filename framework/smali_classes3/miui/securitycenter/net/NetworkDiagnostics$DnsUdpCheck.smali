.class Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_15

    const/16 v0, 0x1c

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x1

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_14
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .registers 11

    const/16 v8, 0x63

    const/16 v7, 0x2d

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x36

    new-array v1, v1, [B

    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    const/4 v2, 0x2

    aput-byte v5, v1, v2

    aput-byte v4, v1, v6

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    const/16 v2, 0x9

    aput-byte v4, v1, v2

    const/16 v2, 0xa

    aput-byte v4, v1, v2

    const/16 v2, 0xb

    aput-byte v4, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0xc

    aput-byte v2, v1, v3

    aget-byte v2, v0, v4

    const/16 v3, 0xd

    aput-byte v2, v1, v3

    aget-byte v2, v0, v5

    const/16 v3, 0xe

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0xf

    aput-byte v2, v1, v3

    aget-byte v2, v0, v6

    const/16 v3, 0x10

    aput-byte v2, v1, v3

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x11

    aput-byte v2, v1, v3

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0x12

    aput-byte v2, v1, v3

    const/16 v2, 0x13

    aput-byte v7, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x14

    aput-byte v2, v1, v3

    const/16 v2, 0x6e

    const/16 v3, 0x15

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x16

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x17

    aput-byte v2, v1, v3

    const/16 v2, 0x6f

    const/16 v3, 0x18

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x19

    aput-byte v2, v1, v3

    const/16 v2, 0x64

    const/16 v3, 0x1a

    aput-byte v2, v1, v3

    const/16 v2, 0x1b

    aput-byte v7, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x1c

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x1d

    aput-byte v2, v1, v3

    const/4 v2, 0x6

    const/16 v3, 0x1e

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x1f

    aput-byte v2, v1, v3

    const/16 v2, 0x65

    const/16 v3, 0x20

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x21

    aput-byte v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0x22

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x23

    aput-byte v2, v1, v3

    const/16 v2, 0x24

    aput-byte v8, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x25

    aput-byte v2, v1, v3

    const/16 v2, 0x67

    const/16 v3, 0x26

    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/16 v3, 0x27

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x28

    aput-byte v2, v1, v3

    const/16 v2, 0x61

    const/16 v3, 0x29

    aput-byte v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x2a

    aput-byte v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x2b

    aput-byte v2, v1, v3

    const/16 v2, 0x2c

    aput-byte v8, v1, v2

    aput-byte v6, v1, v7

    const/16 v2, 0x2e

    aput-byte v8, v1, v2

    const/16 v2, 0x6f

    const/16 v3, 0x2f

    aput-byte v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x30

    aput-byte v2, v1, v3

    const/16 v2, 0x31

    aput-byte v4, v1, v2

    const/16 v2, 0x32

    aput-byte v4, v1, v2

    iget v2, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v2, v2

    const/16 v3, 0x33

    aput-byte v2, v1, v3

    const/16 v2, 0x34

    aput-byte v4, v1, v2

    const/16 v2, 0x35

    aput-byte v5, v1, v2

    return-object v1
.end method


# virtual methods
.method public call()Z
    .registers 15

    const/4 v12, 0x0

    :try_start_1
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x35

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_4f

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v2, 0xdbba0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v0, 0x0

    :goto_29
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->-wrap1()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mDeadlineTime:J

    const-wide/16 v6, 0x3e8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_4b

    add-int/lit8 v0, v0, 0x1

    :try_start_38
    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v9

    const/4 v3, 0x0

    invoke-static {v1, v9, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3f
    .catch Landroid/system/ErrnoException; {:try_start_38 .. :try_end_3f} :catch_5a
    .catch Ljava/io/InterruptedIOException; {:try_start_38 .. :try_end_3f} :catch_5a

    const/16 v1, 0x200

    :try_start_41
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-object v1, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_4a
    .catch Landroid/system/ErrnoException; {:try_start_41 .. :try_end_4a} :catch_65
    .catch Ljava/io/InterruptedIOException; {:try_start_41 .. :try_end_4a} :catch_65

    const/4 v12, 0x1

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->close()V

    return v12

    :catch_4f
    move-exception v10

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "DnsUdpCheck"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v12

    :catch_5a
    move-exception v10

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v2, "DnsUdpCheck"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catch_65
    move-exception v10

    goto :goto_29
.end method

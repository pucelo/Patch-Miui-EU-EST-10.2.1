.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2c

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    if-eqz p2, :cond_32

    const/16 v0, 0xf

    if-le p2, v0, :cond_4c

    :cond_32
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_5b

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    return-void
.end method

.method private read32([BI)J
    .registers 16

    const/16 v9, 0x80

    aget-byte v0, p1, p2

    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_41

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    :goto_18
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_43

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    :goto_20
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_45

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    :goto_28
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_47

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    :goto_30
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    :cond_41
    move v4, v0

    goto :goto_18

    :cond_43
    move v5, v1

    goto :goto_20

    :cond_45
    move v6, v2

    goto :goto_28

    :cond_47
    move v7, v3

    goto :goto_30
.end method

.method private readTimeStamp([BI)J
    .registers 13

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    cmp-long v4, v2, v6

    if-nez v4, :cond_17

    cmp-long v4, v0, v6

    if-nez v4, :cond_17

    return-wide v6

    :cond_17
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v8

    mul-long v6, v0, v8

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .registers 18

    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-nez v5, :cond_d

    add-int/lit8 v5, p2, 0x8

    const/4 v8, 0x0

    invoke-static {p1, p2, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_d
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {p0, v0, v2, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result v2

    return v2

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "SntpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request time failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .registers 40

    const/16 v21, 0x0

    const/16 v32, -0xbf

    invoke-static/range {v32 .. v32}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v10

    :try_start_8
    new-instance v28, Ljava/net/DatagramSocket;

    invoke-direct/range {v28 .. v28}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_117
    .catchall {:try_start_8 .. :try_end_d} :catchall_14a

    :try_start_d
    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v32, 0x30

    move/from16 v0, v32

    new-array v4, v0, [B

    new-instance v11, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v11, v4, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v32, 0x1b

    const/16 v33, 0x0

    aput-byte v32, v4, v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-wide/from16 v2, v18

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v20, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v32, v22, v16

    add-long v24, v18, v32

    const/16 v32, 0x0

    aget-byte v32, v4, v32

    shr-int/lit8 v32, v32, 0x6

    and-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    int-to-byte v8, v0

    const/16 v32, 0x0

    aget-byte v32, v4, v32

    and-int/lit8 v32, v32, 0x7

    move/from16 v0, v32

    int-to-byte v9, v0

    const/16 v32, 0x1

    aget-byte v32, v4, v32

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    const/16 v32, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v14

    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v30

    move/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v32, v22, v16

    sub-long v34, v30, v14

    sub-long v26, v32, v34

    sub-long v32, v14, v12

    sub-long v34, v30, v24

    add-long v32, v32, v34

    const-wide/16 v34, 0x2

    div-long v6, v32, v34

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v6, v7}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "round trip: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "clock offset: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v32, v24, v6

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10c} :catch_158
    .catchall {:try_start_d .. :try_end_10c} :catchall_154

    if-eqz v28, :cond_111

    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    :cond_111
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/16 v32, 0x1

    return v32

    :catch_117
    move-exception v5

    :goto_118
    :try_start_118
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "request time failed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_118 .. :try_end_13f} :catchall_14a

    const/16 v32, 0x0

    if-eqz v21, :cond_146

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    :cond_146
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v32

    :catchall_14a
    move-exception v32

    :goto_14b
    if-eqz v21, :cond_150

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    :cond_150
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v32

    :catchall_154
    move-exception v32

    move-object/from16 v21, v28

    goto :goto_14b

    :catch_158
    move-exception v5

    move-object/from16 v21, v28

    goto :goto_118
.end method

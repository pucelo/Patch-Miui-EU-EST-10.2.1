.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    if-eqz v5, :cond_22

    add-int/lit8 v1, v1, 0x1

    :cond_22
    if-eqz v6, :cond_26

    add-int/lit8 v1, v1, 0x1

    :cond_26
    const-string/jumbo v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_46

    const-string/jumbo v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    :goto_38
    if-nez v1, :cond_49

    const-string/jumbo v7, "GpsXtraDownloader"

    const-string/jumbo v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    :goto_45
    return-void

    :cond_46
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_38

    :cond_49
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v4, :cond_75

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v4, v7, v8

    move v2, v1

    :goto_56
    if-eqz v5, :cond_5f

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v5, v7, v2

    move v2, v1

    :cond_5f
    if-eqz v6, :cond_73

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aput-object v6, v7, v2

    :goto_67
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_45

    :cond_73
    move v1, v2

    goto :goto_67

    :cond_75
    move v2, v1

    goto :goto_56
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 19

    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_20

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Downloading XTRA data from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v4, 0x0

    :try_start_21
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    const-string/jumbo v9, "Accept"

    const-string/jumbo v10, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "x-wap-profile"

    const-string/jumbo v10, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v4, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget v9, Lcom/android/server/location/GpsXtraDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v9, Lcom/android/server/location/GpsXtraDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_7c

    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_75

    const-string/jumbo v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HTTP error downloading gps XTRA: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_75} :catch_b7
    .catchall {:try_start_21 .. :try_end_75} :catchall_e1

    :cond_75
    const/4 v9, 0x0

    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7b
    return-object v9

    :cond_7c
    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_7e
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v9, 0x400

    new-array v2, v9, [B

    :cond_8b
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_d5

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    int-to-long v12, v9

    const-wide/32 v14, 0xf4240

    cmp-long v9, v12, v14

    if-lez v9, :cond_8b

    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_af

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v11, "XTRA file too large"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_af} :catch_f0
    .catchall {:try_start_7e .. :try_end_af} :catchall_10c

    :cond_af
    if-eqz v6, :cond_b4

    :try_start_b1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_cc
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b7
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_e1

    :cond_b4
    :goto_b4
    if-eqz v10, :cond_ce

    :try_start_b6
    throw v10
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b7} :catch_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_e1

    :catch_b7
    move-exception v7

    :try_start_b8
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_c5

    const-string/jumbo v9, "GpsXtraDownloader"

    const-string/jumbo v10, "Error downloading gps XTRA: "

    invoke-static {v9, v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_e1

    :cond_c5
    if-eqz v4, :cond_ca

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ca
    const/4 v9, 0x0

    return-object v9

    :catch_cc
    move-exception v10

    goto :goto_b4

    :cond_ce
    const/4 v9, 0x0

    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d4
    return-object v9

    :cond_d5
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_d8} :catch_f0
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_10c

    move-result-object v9

    if-eqz v6, :cond_de

    :try_start_db
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_de} :catch_e8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_b7
    .catchall {:try_start_db .. :try_end_de} :catchall_e1

    :cond_de
    :goto_de
    if-eqz v10, :cond_ea

    :try_start_e0
    throw v10
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e1} :catch_b7
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    :catchall_e1
    move-exception v9

    if-eqz v4, :cond_e7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e7
    throw v9

    :catch_e8
    move-exception v10

    goto :goto_de

    :cond_ea
    if-eqz v4, :cond_ef

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ef
    return-object v9

    :catch_f0
    move-exception v9

    :try_start_f1
    throw v9
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception v10

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    :goto_f8
    if-eqz v6, :cond_fd

    :try_start_fa
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fd} :catch_100
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_b7
    .catchall {:try_start_fa .. :try_end_fd} :catchall_e1

    :cond_fd
    :goto_fd
    if-eqz v10, :cond_10b

    :try_start_ff
    throw v10

    :catch_100
    move-exception v11

    if-nez v10, :cond_105

    move-object v10, v11

    goto :goto_fd

    :cond_105
    if-eq v10, v11, :cond_fd

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_fd

    :cond_10b
    throw v9
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_10c} :catch_b7
    .catchall {:try_start_ff .. :try_end_10c} :catchall_e1

    :catchall_10c
    move-exception v9

    goto :goto_f8
.end method

.method downloadXtraData()[B
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v3, :cond_9

    return-object v4

    :cond_9
    if-nez v1, :cond_32

    const/16 v3, -0xbc

    invoke-static {v3}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_33

    move-result-object v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v4, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_2e

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    :cond_2e
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v3, v2, :cond_9

    :cond_32
    return-object v1

    :catchall_33
    move-exception v3

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v3
.end method

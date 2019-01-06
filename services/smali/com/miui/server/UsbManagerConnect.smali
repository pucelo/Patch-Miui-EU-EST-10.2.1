.class abstract Lcom/miui/server/UsbManagerConnect;
.super Ljava/lang/Object;
.source "UsbManagerConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "UsbManagerConnect"


# instance fields
.field protected final MSG_LOCAL:I

.field protected final MSG_SHARE_NET:I

.field protected final MSG_TO_PC:I

.field mOutputStream:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_TO_PC:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_LOCAL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/server/UsbManagerConnect;->MSG_SHARE_NET:I

    return-void
.end method


# virtual methods
.method declared-synchronized closeSocket()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_15
    .catchall {:try_start_5 .. :try_end_a} :catchall_31

    :cond_a
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_31

    if-eqz v1, :cond_13

    :try_start_e
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_34
    .catchall {:try_start_e .. :try_end_13} :catchall_31

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "UsbManagerConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_31

    goto :goto_a

    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_34
    move-exception v0

    :try_start_35
    const-string/jumbo v1, "UsbManagerConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_31

    goto :goto_13
.end method

.method getErrMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FAIL, function name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLargeMsg([B)[B
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v3, v1

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v0, v3, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v1

    add-int/lit8 v2, v3, 0x0

    array-length v3, p1

    invoke-static {p1, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method abstract listenToSocket()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method declared-synchronized sendResponse(II[B)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6d

    if-eqz v1, :cond_60

    if-eqz p3, :cond_60

    :try_start_7
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string/jumbo v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string/jumbo v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    const-string/jumbo v2, "%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_60} :catch_62
    .catchall {:try_start_7 .. :try_end_60} :catchall_6d

    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    :catch_62
    move-exception v0

    :try_start_63
    const-string/jumbo v1, "UsbManagerConnect"

    const-string/jumbo v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6d

    goto :goto_60

    :catchall_6d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized sendResponse(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v1, :cond_e

    :try_start_5
    iget-object v1, p0, Lcom/miui/server/UsbManagerConnect;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_10
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :catch_10
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "UsbManagerConnect"

    const-string/jumbo v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_e

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

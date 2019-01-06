.class public final Lcom/android/server/BcbUtil;
.super Ljava/lang/Object;
.source "BcbUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BcbUtil"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBcb()Z
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static connectService()Landroid/net/LocalSocket;
    .registers 8

    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v5, 0x1e

    if-ge v3, v5, :cond_19

    :try_start_b
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "uncrypt"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_26

    const/4 v0, 0x1

    :cond_19
    if-nez v0, :cond_3a

    const-string/jumbo v5, "BcbUtil"

    const-string/jumbo v6, "Timed out connecting to uncrypt socket"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :catch_26
    move-exception v2

    const-wide/16 v6, 0x3e8

    :try_start_29
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2f

    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catch_2f
    move-exception v1

    const-string/jumbo v5, "BcbUtil"

    const-string/jumbo v6, "Interrupted: "

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_3a
    return-object v4
.end method

.method public static setupBcb(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/BcbUtil;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 13

    const/4 v10, 0x0

    if-eqz p0, :cond_1c

    const-string/jumbo v7, "ctl.start"

    const-string/jumbo v8, "setup-bcb"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-static {}, Lcom/android/server/BcbUtil;->connectService()Landroid/net/LocalSocket;

    move-result-object v5

    if-nez v5, :cond_26

    const-string/jumbo v7, "BcbUtil"

    const-string/jumbo v8, "Failed to connect to uncrypt socket"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1c
    const-string/jumbo v7, "ctl.start"

    const-string/jumbo v8, "clear-bcb"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_26
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_28
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_ae
    .catchall {:try_start_28 .. :try_end_31} :catchall_c2

    :try_start_31
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_d4
    .catchall {:try_start_31 .. :try_end_3a} :catchall_cd

    if-eqz p0, :cond_49

    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    :cond_49
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v7, 0x64

    if-ne v6, v7, :cond_8a

    const-string/jumbo v8, "BcbUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uncrypt "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p0, :cond_86

    const-string/jumbo v7, "setup"

    :goto_69
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " bcb successfully finished."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_7b} :catch_d7
    .catchall {:try_start_3c .. :try_end_7b} :catchall_d0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v7, 0x1

    return v7

    :cond_86
    :try_start_86
    const-string/jumbo v7, "clear"

    goto :goto_69

    :cond_8a
    const-string/jumbo v7, "BcbUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uncrypt failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a4} :catch_d7
    .catchall {:try_start_86 .. :try_end_a4} :catchall_d0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v10

    :catch_ae
    move-exception v4

    :goto_af
    :try_start_af
    const-string/jumbo v7, "BcbUtil"

    const-string/jumbo v8, "IOException when communicating with uncrypt: "

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_c2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v10

    :catchall_c2
    move-exception v7

    :goto_c3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catchall_cd
    move-exception v7

    move-object v0, v1

    goto :goto_c3

    :catchall_d0
    move-exception v7

    move-object v2, v3

    move-object v0, v1

    goto :goto_c3

    :catch_d4
    move-exception v4

    move-object v0, v1

    goto :goto_af

    :catch_d7
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    goto :goto_af
.end method

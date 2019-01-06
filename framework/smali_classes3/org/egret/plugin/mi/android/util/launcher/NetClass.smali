.class public Lorg/egret/plugin/mi/android/util/launcher/NetClass;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 18

    if-eqz p1, :cond_4

    if-nez p3, :cond_e

    :cond_4
    const-string/jumbo v11, "NetTool"

    const-string/jumbo v12, "url, out may be null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_13} :catch_41

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_16
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    if-nez v2, :cond_60

    if-eqz p4, :cond_3b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to open "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3b} :catch_11c
    .catchall {:try_start_16 .. :try_end_3b} :catchall_159

    :cond_3b
    if-eqz v2, :cond_40

    :try_start_3d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_51

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v4

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    if-eqz p4, :cond_50

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    :cond_50
    return-void

    :catch_51
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_40

    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_40

    :cond_60
    const/16 v11, 0x7530

    :try_start_62
    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-eqz p2, :cond_b0

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    if-nez v7, :cond_a6

    if-eqz p4, :cond_8c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to open post: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_8c} :catch_11c
    .catchall {:try_start_62 .. :try_end_8c} :catchall_159

    :cond_8c
    if-eqz v2, :cond_91

    :try_start_8e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_91
    if-eqz v7, :cond_96

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_96} :catch_97

    :cond_96
    :goto_96
    return-void

    :catch_97
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_96

    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_96

    :cond_a6
    :try_start_a6
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_b0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_dc

    if-eqz p4, :cond_c2

    const-string/jumbo v11, "response code is HTTP_OK"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_c2} :catch_11c
    .catchall {:try_start_a6 .. :try_end_c2} :catchall_159

    :cond_c2
    if-eqz v2, :cond_c7

    :try_start_c4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c7
    if-eqz v7, :cond_cc

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_cc} :catch_cd

    :cond_cc
    :goto_cc
    return-void

    :catch_cd
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_cc

    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_cc

    :cond_dc
    :try_start_dc
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v11, 0x400

    new-array v1, v11, [B

    :cond_e9
    :goto_e9
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_fd

    if-eqz p4, :cond_10d

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v11

    invoke-virtual {v11}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_f8} :catch_11c
    .catchall {:try_start_dc .. :try_end_f8} :catchall_159

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_10d

    :cond_fd
    if-eqz v2, :cond_102

    :try_start_ff
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_102
    if-eqz v7, :cond_107

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_107
    if-eqz v5, :cond_10c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_10c} :catch_14a

    :cond_10c
    :goto_10c
    return-void

    :cond_10d
    const/4 v11, 0x0

    :try_start_10e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v11, v9}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v8, v9

    if-eqz p4, :cond_e9

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v6}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onProgress(II)V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_11b} :catch_11c
    .catchall {:try_start_10e .. :try_end_11b} :catchall_159

    goto :goto_e9

    :catch_11c
    move-exception v3

    :try_start_11d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_12b

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_11d .. :try_end_12b} :catchall_159

    :cond_12b
    if-eqz v2, :cond_130

    :try_start_12d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_130
    if-eqz v7, :cond_135

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_135
    if-eqz v5, :cond_10c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_13a} :catch_13b

    goto :goto_10c

    :catch_13b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_10c

    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_10c

    :catch_14a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_10c

    const-string/jumbo v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_10c

    :catchall_159
    move-exception v11

    if-eqz v2, :cond_15f

    :try_start_15c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15f
    if-eqz v7, :cond_164

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_164
    if-eqz v5, :cond_169

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_169} :catch_16a

    :cond_169
    :goto_169
    throw v11

    :catch_16a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_169

    const-string/jumbo v12, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_169
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 10

    if-eqz p3, :cond_34

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p4, :cond_20

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v3

    if-nez v3, :cond_21

    const-string/jumbo v3, "net thread is cancelled"

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_20

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_20

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_20

    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, p2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p4, :cond_20

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "net thread is cancelled"

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_20

    :cond_52
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p4, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5e} :catch_26

    goto :goto_20
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return-object v4

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_1a

    return-object v2

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v4
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method public writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

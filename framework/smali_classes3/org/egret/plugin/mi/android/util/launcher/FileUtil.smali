.class public Lorg/egret/plugin/mi/android/util/launcher/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 12

    const/4 v9, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v9

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_63
    .catchall {:try_start_8 .. :try_end_d} :catchall_4b

    :try_start_d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_65
    .catchall {:try_start_d .. :try_end_12} :catchall_5c

    const/16 v7, 0x400

    :try_start_14
    new-array v0, v7, [B

    :goto_16
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_35

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_24
    .catchall {:try_start_14 .. :try_end_23} :catchall_5f

    goto :goto_16

    :catch_24
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    :goto_27
    :try_start_27
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_4b

    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2f
    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_34} :catch_46

    :cond_34
    :goto_34
    return v9

    :cond_35
    const/4 v7, 0x1

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_3b
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return v7

    :catch_41
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catch_46
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    :catchall_4b
    move-exception v7

    :goto_4c
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_51
    if-eqz v4, :cond_56

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    throw v7

    :catch_57
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    :catchall_5c
    move-exception v7

    move-object v1, v2

    goto :goto_4c

    :catchall_5f
    move-exception v7

    move-object v4, v5

    move-object v1, v2

    goto :goto_4c

    :catch_63
    move-exception v3

    goto :goto_27

    :catch_65
    move-exception v3

    move-object v1, v2

    goto :goto_27
.end method

.method public static CopyToRoot(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static Move(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static MoveToRoot(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/egret/plugin/mi/android/util/launcher/FileUtil;->Move(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_5e
    .catchall {:try_start_3 .. :try_end_8} :catchall_46

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_60
    .catchall {:try_start_8 .. :try_end_d} :catchall_57

    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c
    .catchall {:try_start_d .. :try_end_1b} :catchall_5a

    goto :goto_12

    :catch_1c
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_46

    if-eqz v0, :cond_27

    :try_start_24
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_27
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_41

    :cond_2c
    :goto_2c
    return-object v7

    :cond_2d
    :try_start_2d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_1c
    .catchall {:try_start_2d .. :try_end_30} :catchall_5a

    move-result-object v7

    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_36
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return-object v7

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    :catch_41
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    :catchall_46
    move-exception v7

    :goto_47
    if-eqz v0, :cond_4c

    :try_start_49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4c
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_52

    :cond_51
    :goto_51
    throw v7

    :catch_52
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    :catchall_57
    move-exception v7

    move-object v3, v4

    goto :goto_47

    :catchall_5a
    move-exception v7

    move-object v0, v1

    move-object v3, v4

    goto :goto_47

    :catch_5e
    move-exception v2

    goto :goto_1f

    :catch_60
    move-exception v2

    move-object v3, v4

    goto :goto_1f
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_20
    .catchall {:try_start_2 .. :try_end_7} :catchall_35

    :try_start_7
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_4d
    .catchall {:try_start_7 .. :try_end_c} :catchall_46

    :try_start_c
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_50
    .catchall {:try_start_c .. :try_end_f} :catchall_49

    const/4 v5, 0x1

    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_15
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return v5

    :catch_1b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    :catch_20
    move-exception v2

    :goto_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_35

    const/4 v5, 0x0

    if-eqz v0, :cond_2a

    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_2a
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return v5

    :catch_30
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catchall_35
    move-exception v5

    :goto_36
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_3b
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    throw v5

    :catch_41
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catchall_46
    move-exception v5

    move-object v3, v4

    goto :goto_36

    :catchall_49
    move-exception v5

    move-object v0, v1

    move-object v3, v4

    goto :goto_36

    :catch_4d
    move-exception v2

    move-object v3, v4

    goto :goto_21

    :catch_50
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_21
.end method

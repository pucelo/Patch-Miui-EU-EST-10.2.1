.class public Lcom/android/server/os/RegionalizationService;
.super Lcom/android/internal/os/IRegionalizationService$Stub;
.source "RegionalizationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionalizationService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/IRegionalizationService$Stub;-><init>()V

    return-void
.end method

.method private deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const/4 v1, 0x0

    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    if-eqz p3, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_3a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_23
.end method


# virtual methods
.method public checkFileExists(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x0

    return v1

    :cond_11
    const/4 v1, 0x1

    return v1
.end method

.method public deleteFilesUnderDir(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    :cond_f
    return-void

    :cond_10
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/os/RegionalizationService;->deleteFiles(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_18

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_19

    :cond_18
    return-object v9

    :cond_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_20
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_f7
    .catchall {:try_start_20 .. :try_end_25} :catchall_f2

    :try_start_25
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_fa
    .catchall {:try_start_25 .. :try_end_2a} :catchall_f4

    const/4 v7, 0x0

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_85

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_85

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_73

    invoke-virtual {v7, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_46} :catch_47
    .catchall {:try_start_2b .. :try_end_46} :catchall_77

    goto :goto_2b

    :catch_47
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    :goto_4a
    :try_start_4a
    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read File error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4a .. :try_end_68} :catchall_f2

    if-eqz v0, :cond_6d

    :try_start_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_6d
    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_72} :catch_b2

    :cond_72
    :goto_72
    return-object v2

    :cond_73
    :try_start_73
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_47
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_2b

    :catchall_77
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    :goto_7a
    if-eqz v0, :cond_7f

    :try_start_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7f
    if-eqz v5, :cond_84

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_84} :catch_d2

    :cond_84
    :goto_84
    throw v8

    :cond_85
    if-eqz v1, :cond_8a

    :try_start_87
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_8a
    if-eqz v6, :cond_8f

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_92

    :cond_8f
    :goto_8f
    move-object v0, v1

    move-object v5, v6

    goto :goto_72

    :catch_92
    move-exception v3

    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Close the reader error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :catch_b2
    move-exception v3

    const-string/jumbo v8, "RegionalizationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Close the reader error, caused by: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_d2
    move-exception v3

    const-string/jumbo v9, "RegionalizationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Close the reader error, caused by: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catchall_f2
    move-exception v8

    goto :goto_7a

    :catchall_f4
    move-exception v8

    move-object v5, v6

    goto :goto_7a

    :catch_f7
    move-exception v3

    goto/16 :goto_4a

    :catch_fa
    move-exception v3

    move-object v5, v6

    goto/16 :goto_4a
.end method

.method public bridge synthetic readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/RegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v5, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_19

    :cond_18
    return v5

    :cond_19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v5

    :cond_20
    const/4 v2, 0x0

    :try_start_21
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_35
    .catchall {:try_start_21 .. :try_end_26} :catchall_44

    :try_start_26
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_53
    .catchall {:try_start_26 .. :try_end_29} :catchall_50

    if-eqz v3, :cond_2e

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    :cond_2e
    const/4 v4, 0x1

    return v4

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v5

    :catch_35
    move-exception v0

    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    return v5

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v5

    :catchall_44
    move-exception v4

    :goto_45
    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    :cond_4a
    throw v4

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v5

    :catchall_50
    move-exception v4

    move-object v2, v3

    goto :goto_45

    :catch_53
    move-exception v0

    move-object v2, v3

    goto :goto_36
.end method

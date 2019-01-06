.class public final Lmiui/log/LogSwitchesConfigParser;
.super Ljava/lang/Object;
.source "LogSwitchesConfigParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogSwitchesConfigParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseLogSwitchesConfig(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_11

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    return-object v11

    :cond_11
    const/4 v9, 0x0

    :try_start_12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_21} :catch_d5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_d8
    .catchall {:try_start_12 .. :try_end_21} :catchall_d3

    :goto_21
    :try_start_21
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_77

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_30
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lmiui/log/AppLogSwitches;->parseAppLogSwitches(Ljava/lang/String;)Lmiui/log/AppLogSwitches;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v11, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/log/AppLogSwitches;

    if-eqz v5, :cond_b6

    invoke-virtual {v5, v0}, Lmiui/log/AppLogSwitches;->merge(Lmiui/log/AppLogSwitches;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_4f} :catch_50
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4f} :catch_8f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_bd

    goto :goto_30

    :catch_50
    move-exception v3

    move-object v9, v10

    :goto_52
    :try_start_52
    const-string/jumbo v11, "LogSwitchesConfigParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cannot found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_d3

    if-eqz v9, :cond_76

    :try_start_73
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_cf

    :cond_76
    :goto_76
    return-object v11

    :cond_77
    :try_start_77
    const-string/jumbo v11, "\r"

    const-string/jumbo v12, ""

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_8e} :catch_50
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8e} :catch_8f
    .catchall {:try_start_77 .. :try_end_8e} :catchall_bd

    goto :goto_21

    :catch_8f
    move-exception v4

    move-object v9, v10

    :goto_91
    :try_start_91
    const-string/jumbo v11, "LogSwitchesConfigParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "failed to read "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_d3

    if-eqz v9, :cond_b5

    :try_start_b2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_cd

    :cond_b5
    :goto_b5
    return-object v11

    :cond_b6
    :try_start_b6
    iget-object v11, v0, Lmiui/log/AppLogSwitches;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_bb} :catch_50
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bb} :catch_8f
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_bd

    goto/16 :goto_30

    :catchall_bd
    move-exception v11

    move-object v9, v10

    :goto_bf
    if-eqz v9, :cond_c4

    :try_start_c1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_d1

    :cond_c4
    :goto_c4
    throw v11

    :cond_c5
    if-eqz v10, :cond_ca

    :try_start_c7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    :cond_ca
    :goto_ca
    return-object v1

    :catch_cb
    move-exception v4

    goto :goto_ca

    :catch_cd
    move-exception v4

    goto :goto_b5

    :catch_cf
    move-exception v4

    goto :goto_76

    :catch_d1
    move-exception v4

    goto :goto_c4

    :catchall_d3
    move-exception v11

    goto :goto_bf

    :catch_d5
    move-exception v3

    goto/16 :goto_52

    :catch_d8
    move-exception v4

    goto :goto_91
.end method

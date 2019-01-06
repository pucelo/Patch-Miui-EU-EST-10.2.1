.class public final Lmiui/log/LogSwitchesConfigWriter;
.super Ljava/lang/Object;
.source "LogSwitchesConfigWriter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LogSwitchesConfigWriter"


# instance fields
.field private final logSwitchesFileName:Ljava/lang/String;

.field private final logSwitchesFilePath:Ljava/lang/String;

.field private final logSwitchesFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iput-object p2, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized write(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/AppLogSwitches;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2
    iget-object v5, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFolder:Ljava/lang/String;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/log/Utils;->createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_79
    .catchall {:try_start_2 .. :try_end_15} :catchall_67

    :try_start_15
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/AppLogSwitches;

    invoke-virtual {v0}, Lmiui/log/AppLogSwitches;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_33} :catch_34
    .catchall {:try_start_15 .. :try_end_33} :catchall_76

    goto :goto_1d

    :catch_34
    move-exception v2

    move-object v3, v4

    :goto_36
    :try_start_36
    const-string/jumbo v5, "LogSwitchesConfigWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/log/LogSwitchesConfigWriter;->logSwitchesFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_67

    if-eqz v3, :cond_57

    :try_start_54
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_65
    .catchall {:try_start_54 .. :try_end_57} :catchall_6e

    :cond_57
    :goto_57
    monitor-exit p0

    return-void

    :cond_59
    :try_start_59
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_34
    .catchall {:try_start_59 .. :try_end_5c} :catchall_76

    if-eqz v4, :cond_61

    :try_start_5e
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63
    .catchall {:try_start_5e .. :try_end_61} :catchall_73

    :cond_61
    :goto_61
    move-object v3, v4

    goto :goto_57

    :catch_63
    move-exception v2

    goto :goto_61

    :catch_65
    move-exception v2

    goto :goto_57

    :catchall_67
    move-exception v5

    :goto_68
    if-eqz v3, :cond_6d

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_71
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    :cond_6d
    :goto_6d
    :try_start_6d
    throw v5
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v5

    :goto_6f
    monitor-exit p0

    throw v5

    :catch_71
    move-exception v2

    goto :goto_6d

    :catchall_73
    move-exception v5

    move-object v3, v4

    goto :goto_6f

    :catchall_76
    move-exception v5

    move-object v3, v4

    goto :goto_68

    :catch_79
    move-exception v2

    goto :goto_36
.end method

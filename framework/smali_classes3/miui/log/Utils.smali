.class final Lmiui/log/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiLogUtils"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createConfigFolder(Ljava/io/File;)V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p0

    :goto_8
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_8

    :cond_18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_1c

    :cond_35
    return-void
.end method

.method static createLogSwitchesFileIfNotExisted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v3, 0x1

    :cond_d
    :goto_d
    if-eqz v3, :cond_12

    invoke-static {v1}, Lmiui/log/Utils;->createConfigFolder(Ljava/io/File;)V

    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2e} :catch_3a

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v3, 0x1

    goto :goto_d

    :catch_3a
    move-exception v2

    const-string/jumbo v4, "MiuiLogUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to create file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

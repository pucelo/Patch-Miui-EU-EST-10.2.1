.class public Lmiui/maml/util/ZipResourceLoader;
.super Lmiui/maml/ResourceLoader;
.source "ZipResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipResourceLoader"


# instance fields
.field private mInnerPath:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mResourcePath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lmiui/maml/ResourceLoader;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "empty zip path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iput-object p1, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    if-nez p2, :cond_20

    const-string/jumbo p2, ""

    :cond_20
    iput-object p2, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    if-eqz p3, :cond_26

    iput-object p3, p0, Lmiui/maml/util/ZipResourceLoader;->mManifestName:Ljava/lang/String;

    :cond_26
    invoke-virtual {p0}, Lmiui/maml/util/ZipResourceLoader;->init()V

    return-void
.end method

.method private close()V
    .registers 4

    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_f

    :try_start_7
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_14
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v2

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_14
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lmiui/maml/util/ZipResourceLoader;->close()V

    invoke-super {p0}, Lmiui/maml/ResourceLoader;->finalize()V

    return-void
.end method

.method public finish()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/util/ZipResourceLoader;->close()V

    invoke-super {p0}, Lmiui/maml/ResourceLoader;->finish()V

    return-void
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 10

    const/4 v6, 0x0

    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v6

    :cond_8
    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_4a

    move-result-object v1

    if-nez v1, :cond_2c

    monitor-exit v3

    return-object v6

    :cond_2c
    if-eqz p2, :cond_35

    :try_start_2e
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const/4 v2, 0x0

    aput-wide v4, p2, v2

    :cond_35
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3a} :catch_3d
    .catchall {:try_start_2e .. :try_end_3a} :catchall_4a

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string/jumbo v2, "ZipResourceLoader"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_4a

    :cond_48
    monitor-exit v3

    return-object v6

    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/ResourceLoader;->init()V

    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_36

    if-nez v1, :cond_13

    :try_start_a
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_15
    .catchall {:try_start_a .. :try_end_13} :catchall_36

    :cond_13
    :goto_13
    monitor-exit v2

    return-void

    :catch_15
    move-exception v0

    :try_start_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v1, "ZipResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to init zip file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/util/ZipResourceLoader;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_36

    goto :goto_13

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return v0

    :cond_8
    iget-object v1, p0, Lmiui/maml/util/ZipResourceLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_30

    if-eqz v2, :cond_11

    if-nez p1, :cond_13

    :cond_11
    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    :try_start_13
    iget-object v2, p0, Lmiui/maml/util/ZipResourceLoader;->mZipFile:Ljava/util/zip/ZipFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/util/ZipResourceLoader;->mInnerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_30

    move-result-object v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

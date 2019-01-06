.class public final Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/DataChangedJournal$Consumer;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_b
    if-ge v2, v4, :cond_1a

    aget-object v0, v3, v2

    new-instance v5, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v5, v0}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    return-object v1
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    const-string/jumbo v1, "journal"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_20
    .catchall {:try_start_2 .. :try_end_c} :catchall_3b

    :try_start_c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_16} :catch_40
    .catchall {:try_start_c .. :try_end_16} :catchall_3d

    if-eqz v1, :cond_1b

    :try_start_18
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1e

    :cond_1b
    :goto_1b
    if-eqz v3, :cond_3a

    throw v3

    :catch_1e
    move-exception v3

    goto :goto_1b

    :catch_20
    move-exception v2

    :goto_21
    :try_start_21
    throw v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_26
    if-eqz v0, :cond_2b

    :try_start_28
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2e

    :cond_2b
    :goto_2b
    if-eqz v3, :cond_39

    throw v3

    :catch_2e
    move-exception v4

    if-nez v3, :cond_33

    move-object v3, v4

    goto :goto_2b

    :cond_33
    if-eq v3, v4, :cond_2b

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_39
    throw v2

    :cond_3a
    return-void

    :catchall_3b
    move-exception v2

    goto :goto_26

    :catchall_3d
    move-exception v2

    move-object v0, v1

    goto :goto_26

    :catch_40
    move-exception v2

    move-object v0, v1

    goto :goto_21
.end method

.method public delete()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/android/server/backup/DataChangedJournal;

    if-eqz v2, :cond_1b

    move-object v1, p1

    check-cast v1, Lcom/android/server/backup/DataChangedJournal;

    :try_start_8
    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_19

    move-result v2

    return v2

    :catch_19
    move-exception v0

    return v4

    :cond_1b
    return v4
.end method

.method public forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_74
    .catchall {:try_start_3 .. :try_end_11} :catchall_6b

    :try_start_11
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_76
    .catchall {:try_start_11 .. :try_end_16} :catchall_6d

    :goto_16
    :try_start_16
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_3b

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/server/backup/DataChangedJournal$Consumer;->accept(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_24
    .catchall {:try_start_16 .. :try_end_23} :catchall_70

    goto :goto_16

    :catch_24
    move-exception v5

    move-object v2, v3

    move-object v0, v1

    :goto_27
    :try_start_27
    throw v5
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2c
    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_55

    :cond_31
    move-object v7, v6

    :cond_32
    :goto_32
    if-eqz v0, :cond_37

    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_5f

    :cond_37
    move-object v6, v7

    :cond_38
    :goto_38
    if-eqz v6, :cond_69

    throw v6

    :cond_3b
    if-eqz v3, :cond_40

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_49

    :cond_40
    :goto_40
    if-eqz v1, :cond_45

    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_4b

    :cond_45
    move-object v5, v6

    :cond_46
    :goto_46
    if-eqz v5, :cond_6a

    throw v5

    :catch_49
    move-exception v6

    goto :goto_40

    :catch_4b
    move-exception v5

    if-eqz v6, :cond_46

    if-eq v6, v5, :cond_45

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_46

    :catch_55
    move-exception v7

    if-eqz v6, :cond_32

    if-eq v6, v7, :cond_31

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_32

    :catch_5f
    move-exception v6

    if-eqz v7, :cond_38

    if-eq v7, v6, :cond_37

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_38

    :cond_69
    throw v5

    :cond_6a
    return-void

    :catchall_6b
    move-exception v5

    goto :goto_2c

    :catchall_6d
    move-exception v5

    move-object v0, v1

    goto :goto_2c

    :catchall_70
    move-exception v5

    move-object v2, v3

    move-object v0, v1

    goto :goto_2c

    :catch_74
    move-exception v5

    goto :goto_27

    :catch_76
    move-exception v5

    move-object v0, v1

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

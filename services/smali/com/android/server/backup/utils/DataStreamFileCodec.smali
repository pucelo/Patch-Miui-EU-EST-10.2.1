.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "DataStreamFileCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCodec:Lcom/android/server/backup/utils/DataStreamCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/backup/utils/DataStreamCodec",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/backup/utils/DataStreamCodec",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    return-void
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_30
    .catchall {:try_start_3 .. :try_end_a} :catchall_5a

    :try_start_a
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_63
    .catchall {:try_start_a .. :try_end_f} :catchall_5c

    :try_start_f
    iget-object v4, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v4, v1}, Lcom/android/server/backup/utils/DataStreamCodec;->deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_66
    .catchall {:try_start_f .. :try_end_14} :catchall_5f

    move-result-object v6

    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_23

    :cond_1a
    :goto_1a
    if-eqz v3, :cond_1f

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_25

    :cond_1f
    move-object v4, v5

    :cond_20
    :goto_20
    if-eqz v4, :cond_2f

    throw v4

    :catch_23
    move-exception v5

    goto :goto_1a

    :catch_25
    move-exception v4

    if-eqz v5, :cond_20

    if-eq v5, v4, :cond_1f

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_20

    :cond_2f
    return-object v6

    :catch_30
    move-exception v4

    :goto_31
    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_36
    if-eqz v0, :cond_3b

    :try_start_38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_45

    :cond_3b
    move-object v6, v5

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_4f

    :cond_41
    move-object v5, v6

    :cond_42
    :goto_42
    if-eqz v5, :cond_59

    throw v5

    :catch_45
    move-exception v6

    if-eqz v5, :cond_3c

    if-eq v5, v6, :cond_3b

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v5

    goto :goto_3c

    :catch_4f
    move-exception v5

    if-eqz v6, :cond_42

    if-eq v6, v5, :cond_41

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_42

    :cond_59
    throw v4

    :catchall_5a
    move-exception v4

    goto :goto_36

    :catchall_5c
    move-exception v4

    move-object v2, v3

    goto :goto_36

    :catchall_5f
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_36

    :catch_63
    move-exception v4

    move-object v2, v3

    goto :goto_31

    :catch_66
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_31
.end method

.method public serialize(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_48
    .catchall {:try_start_4 .. :try_end_b} :catchall_83

    :try_start_b
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_91
    .catchall {:try_start_b .. :try_end_10} :catchall_85

    :try_start_10
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_94
    .catchall {:try_start_10 .. :try_end_15} :catchall_88

    :try_start_15
    iget-object v6, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/utils/DataStreamCodec;

    invoke-interface {v6, p1, v3}, Lcom/android/server/backup/utils/DataStreamCodec;->serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1d} :catch_98
    .catchall {:try_start_15 .. :try_end_1d} :catchall_8c

    if-eqz v3, :cond_22

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_32

    :cond_22
    move-object v6, v7

    :goto_23
    if-eqz v1, :cond_28

    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_34

    :cond_28
    move-object v7, v6

    :cond_29
    :goto_29
    if-eqz v5, :cond_2e

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_3e

    :cond_2e
    move-object v6, v7

    :cond_2f
    :goto_2f
    if-eqz v6, :cond_82

    throw v6

    :catch_32
    move-exception v6

    goto :goto_23

    :catch_34
    move-exception v7

    if-eqz v6, :cond_29

    if-eq v6, v7, :cond_28

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_29

    :catch_3e
    move-exception v6

    if-eqz v7, :cond_2f

    if-eq v7, v6, :cond_2e

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_2f

    :catch_48
    move-exception v6

    :goto_49
    :try_start_49
    throw v6
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_4e
    if-eqz v2, :cond_53

    :try_start_50
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_62

    :cond_53
    :goto_53
    if-eqz v0, :cond_58

    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_6d

    :cond_58
    move-object v8, v7

    :cond_59
    :goto_59
    if-eqz v4, :cond_5e

    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_77

    :cond_5e
    move-object v7, v8

    :cond_5f
    :goto_5f
    if-eqz v7, :cond_81

    throw v7

    :catch_62
    move-exception v8

    if-nez v7, :cond_67

    move-object v7, v8

    goto :goto_53

    :cond_67
    if-eq v7, v8, :cond_53

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_6d
    move-exception v8

    if-eqz v7, :cond_59

    if-eq v7, v8, :cond_58

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_59

    :catch_77
    move-exception v7

    if-eqz v8, :cond_5f

    if-eq v8, v7, :cond_5e

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v8

    goto :goto_5f

    :cond_81
    throw v6

    :cond_82
    return-void

    :catchall_83
    move-exception v6

    goto :goto_4e

    :catchall_85
    move-exception v6

    move-object v4, v5

    goto :goto_4e

    :catchall_88
    move-exception v6

    move-object v0, v1

    move-object v4, v5

    goto :goto_4e

    :catchall_8c
    move-exception v6

    move-object v2, v3

    move-object v0, v1

    move-object v4, v5

    goto :goto_4e

    :catch_91
    move-exception v6

    move-object v4, v5

    goto :goto_49

    :catch_94
    move-exception v6

    move-object v0, v1

    move-object v4, v5

    goto :goto_49

    :catch_98
    move-exception v6

    move-object v2, v3

    move-object v0, v1

    move-object v4, v5

    goto :goto_49
.end method

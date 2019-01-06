.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrpCredentialHandle()[B
    .registers 14

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-nez v5, :cond_a

    return-object v12

    :cond_a
    :try_start_a
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1f} :catch_44

    :try_start_1f
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_5d
    .catchall {:try_start_1f .. :try_end_26} :catchall_6c

    :try_start_26
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_5a

    move-result v4

    if-lez v4, :cond_3f

    const/16 v5, 0x3e4

    if-le v4, v5, :cond_50

    :cond_3f
    :try_start_3f
    monitor-exit v6
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_40} :catch_5d
    .catchall {:try_start_3f .. :try_end_40} :catchall_6c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :catch_44
    move-exception v1

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_50
    :try_start_50
    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_5a

    :try_start_55
    monitor-exit v6
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_56} :catch_5d
    .catchall {:try_start_55 .. :try_end_56} :catchall_6c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v6

    throw v5
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5d} :catch_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_6c

    :catch_5d
    move-exception v2

    :try_start_5e
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "unable to access persistent partition"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_6c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :catchall_6c
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method public setFrpCredentialHandle([B)V
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_7

    array-length v5, p1

    if-lez v5, :cond_52

    :cond_7
    move v5, v6

    :goto_8
    const-string/jumbo v8, "handle must be null or non-empty"

    invoke-static {v5, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_15

    array-length v5, p1

    const/16 v8, 0x3e4

    if-gt v5, v8, :cond_54

    :cond_15
    :goto_15
    const-string/jumbo v5, "handle must not be longer than 996"

    invoke-static {v6, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :try_start_1b
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_2b} :catch_56

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez p1, :cond_62

    :goto_33
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3b

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_45
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-nez v5, :cond_64

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_9c

    monitor-exit v6

    return-void

    :cond_52
    move v5, v7

    goto :goto_8

    :cond_54
    move v6, v7

    goto :goto_15

    :catch_56
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_62
    array-length v7, p1

    goto :goto_33

    :cond_64
    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7d} :catch_87
    .catchall {:try_start_64 .. :try_end_7d} :catchall_97

    :try_start_7d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_9c

    monitor-exit v6

    return-void

    :catch_87
    move-exception v3

    :try_start_88
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "unable to access persistent partition"

    invoke-static {v5, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_97

    :try_start_92
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9c

    monitor-exit v6

    return-void

    :catchall_97
    move-exception v5

    :try_start_98
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v5

    monitor-exit v6

    throw v5
.end method

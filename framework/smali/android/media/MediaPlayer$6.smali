.class Landroid/media/MediaPlayer$6;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$dupedFd:Ljava/io/FileDescriptor;

.field final synthetic val$length2:J

.field final synthetic val$offset2:J

.field final synthetic val$thread:Landroid/os/HandlerThread;

.field final synthetic val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .registers 10

    iput-object p1, p0, Landroid/media/MediaPlayer$6;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$6;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$6;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$6;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$6;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .registers 25

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v19, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$6;->val$offset2:J

    move-wide/from16 v22, v0

    sget v21, Landroid/system/OsConstants;->SEEK_SET:I

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v8, v0, [B

    const-wide/16 v16, 0x0

    :goto_28
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$6;->val$length2:J

    move-wide/from16 v20, v0

    cmp-long v19, v16, v20

    if-gez v19, :cond_5b

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$6;->val$length2:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v16

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v8, v1, v10}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v9

    if-gez v9, :cond_95

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/media/MediaPlayer$TimeProvider;->-get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v13

    const/16 v18, 0x1

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$track:Landroid/media/SubtitleTrack;

    move-object/from16 v19, v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v6, v1, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_87} :catch_b2
    .catchall {:try_start_5 .. :try_end_87} :catchall_df

    const/16 v19, 0x323

    :try_start_89
    sget-object v20, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_94
    .catch Landroid/system/ErrnoException; {:try_start_89 .. :try_end_94} :catch_a2

    :goto_94
    return v19

    :cond_95
    const/16 v19, 0x0

    :try_start_97
    move/from16 v0, v19

    invoke-virtual {v7, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_b2
    .catchall {:try_start_97 .. :try_end_9c} :catchall_df

    int-to-long v0, v9

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    goto :goto_28

    :catch_a2
    move-exception v11

    const-string/jumbo v20, "MediaPlayer"

    invoke-virtual {v11}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_94

    :catch_b2
    move-exception v12

    :try_start_b3
    const-string/jumbo v19, "MediaPlayer"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c1
    .catchall {:try_start_b3 .. :try_end_c1} :catchall_df

    const/16 v19, 0x384

    :try_start_c3
    sget-object v20, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_ce
    .catch Landroid/system/ErrnoException; {:try_start_c3 .. :try_end_ce} :catch_cf

    :goto_ce
    return v19

    :catch_cf
    move-exception v11

    const-string/jumbo v20, "MediaPlayer"

    invoke-virtual {v11}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    :catchall_df
    move-exception v19

    :try_start_e0
    sget-object v20, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$6;->val$dupedFd:Ljava/io/FileDescriptor;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_eb
    .catch Landroid/system/ErrnoException; {:try_start_e0 .. :try_end_eb} :catch_ec

    :goto_eb
    throw v19

    :catch_ec
    move-exception v11

    const-string/jumbo v20, "MediaPlayer"

    invoke-virtual {v11}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_eb
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer$6;->addTrack()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaPlayer$6;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/media/MediaPlayer$6;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$6;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    iget-object v2, p0, Landroid/media/MediaPlayer$6;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

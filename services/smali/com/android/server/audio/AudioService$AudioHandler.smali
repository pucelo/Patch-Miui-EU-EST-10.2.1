.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6

    if-eqz p1, :cond_8

    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    :cond_8
    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private onLoadSoundEffects()Z
    .registers 16

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-nez v10, :cond_1b

    const-string/jumbo v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_d8

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :cond_1b
    :try_start_1b
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_d8

    move-result-object v10

    if-eqz v10, :cond_26

    const/4 v10, 0x1

    monitor-exit v11

    return v10

    :cond_26
    :try_start_26
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;)V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    const/4 v0, 0x3

    move v1, v0

    :goto_73
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_78
    .catchall {:try_start_26 .. :try_end_78} :catchall_d8

    move-result-object v10

    if-nez v10, :cond_8c

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_8d

    :try_start_7f
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_8a} :catch_cd
    .catchall {:try_start_7f .. :try_end_8a} :catchall_d8

    :goto_8a
    move v1, v0

    goto :goto_73

    :cond_8c
    move v0, v1

    :cond_8d
    :try_start_8d
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_db

    const-string/jumbo v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_b5

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    :cond_b5
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_ca
    .catchall {:try_start_8d .. :try_end_ca} :catchall_d8

    const/4 v10, 0x0

    monitor-exit v11

    return v10

    :catch_cd
    move-exception v2

    :try_start_ce
    const-string/jumbo v10, "AudioService"

    const-string/jumbo v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_ce .. :try_end_d7} :catchall_d8

    goto :goto_8a

    :catchall_d8
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_db
    :try_start_db
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    const/4 v4, 0x0

    :goto_e6
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_f6

    const/4 v10, -0x1

    aput v10, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    :cond_f6
    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_f8
    const/16 v10, 0xa

    if-ge v3, v10, :cond_1ab

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_10c

    :goto_109
    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    :cond_10c
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_191

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    if-gtz v8, :cond_175

    const-string/jumbo v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    :cond_175
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_109

    :cond_191
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    iget-object v12, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v12}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v12

    aget-object v12, v12, v3

    const/4 v13, 0x0

    aget v12, v12, v13

    aget v12, v7, v12

    const/4 v13, 0x1

    aput v12, v10, v13

    goto/16 :goto_109

    :cond_1ab
    if-lez v6, :cond_244

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_1b6
    .catchall {:try_start_db .. :try_end_1b6} :catchall_d8

    const/4 v0, 0x3

    const/4 v9, 0x1

    move v1, v0

    :goto_1b9
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d7

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1d8

    :try_start_1c0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_1d4
    .catch Ljava/lang/InterruptedException; {:try_start_1c0 .. :try_end_1d4} :catch_239
    .catchall {:try_start_1c0 .. :try_end_1d4} :catchall_d8

    move-result v9

    :goto_1d5
    move v1, v0

    goto :goto_1b9

    :cond_1d7
    move v0, v1

    :cond_1d8
    :goto_1d8
    :try_start_1d8
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_1ef

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    :cond_1ef
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    if-eqz v9, :cond_255

    const-string/jumbo v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_219
    const/16 v10, 0xa

    if-ge v3, v10, :cond_246

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_236

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, -0x1

    const/4 v13, 0x1

    aput v12, v10, v13

    :cond_236
    add-int/lit8 v3, v3, 0x1

    goto :goto_219

    :catch_239
    move-exception v2

    const-string/jumbo v10, "AudioService"

    const-string/jumbo v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d5

    :cond_244
    const/4 v9, -0x1

    goto :goto_1d8

    :cond_246
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_255
    .catchall {:try_start_1d8 .. :try_end_255} :catchall_d8

    :cond_255
    monitor-exit v11

    if-nez v9, :cond_25a

    const/4 v10, 0x1

    :goto_259
    return v10

    :cond_25a
    const/4 v10, 0x0

    goto :goto_259
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_c7

    move-result-object v0

    if-nez v0, :cond_14

    monitor-exit v12

    return-void

    :cond_14
    if-gez p2, :cond_4e

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :try_start_18
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get47()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    :goto_26
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_54

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_4c
    .catchall {:try_start_18 .. :try_end_4c} :catchall_c7

    :goto_4c
    monitor-exit v12

    return-void

    :cond_4e
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    goto :goto_26

    :cond_54
    :try_start_54
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_c7

    :try_start_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v11, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->start()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_aa} :catch_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_aa} :catch_e7
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_aa} :catch_ca
    .catchall {:try_start_59 .. :try_end_aa} :catchall_c7

    goto :goto_4c

    :catch_ab
    move-exception v7

    :try_start_ac
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_c7

    goto :goto_4c

    :catchall_c7
    move-exception v0

    monitor-exit v12

    throw v0

    :catch_ca
    move-exception v9

    :try_start_cb
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    :catch_e7
    move-exception v8

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_cb .. :try_end_102} :catchall_c7

    goto/16 :goto_4c
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_7f

    move-result-object v3

    if-nez v3, :cond_11

    monitor-exit v4

    return-void

    :cond_11
    :try_start_11
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1c
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const/16 v3, 0xa

    if-ge v0, v3, :cond_82

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_41

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_41
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3
    :try_end_7e
    .catchall {:try_start_11 .. :try_end_7e} :catchall_7f

    goto :goto_3e

    :catchall_7f
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_82
    :try_start_82
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_7f

    monitor-exit v4

    return-void
.end method

.method private persistRingerMode(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get25(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    return-void

    :cond_19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_35
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_9
    if-ltz v1, :cond_29

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_26

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_26

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_29
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 13

    const/4 v4, 0x0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    add-int/lit8 v9, v7, -0x1

    :goto_d
    if-ltz v9, :cond_4c

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_49

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v9

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_49

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    if-eq p2, v8, :cond_3e

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    :cond_3e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_5d

    :cond_49
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    :cond_4c
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap39(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_5d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setForceUse(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->-wrap41(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_1be

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_8

    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_8

    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_8

    :sswitch_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_8

    :sswitch_2f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_8

    :sswitch_35
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_8

    :sswitch_39
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    monitor-enter v12

    if-eqz v9, :cond_4f

    :goto_48
    :try_start_48
    iput v1, v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->notify()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_51

    monitor-exit v12

    goto :goto_8

    :cond_4f
    move v1, v2

    goto :goto_48

    :catchall_51
    move-exception v0

    monitor-exit v12

    throw v0

    :sswitch_54
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto :goto_8

    :sswitch_5c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    :try_start_63
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_6e

    monitor-exit v1

    goto :goto_8

    :catchall_6e
    move-exception v0

    monitor-exit v1

    throw v0

    :sswitch_71
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(IILjava/lang/String;)V

    goto :goto_8

    :sswitch_7d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap36(Lcom/android/server/audio/AudioService;)V

    goto :goto_8

    :sswitch_83
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get45(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, v7}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->-wrap31(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :sswitch_af
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap30(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :sswitch_c5
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :sswitch_db
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap23(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :sswitch_ef
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get28(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_109

    :goto_f9
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(ZI)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get8(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :cond_109
    move v0, v1

    goto :goto_f9

    :sswitch_10b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    if-lez v6, :cond_13b

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    :try_start_11a
    new-instance v13, Landroid/media/AudioRoutesInfo;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v13, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_138

    monitor-exit v1

    :goto_124
    if-lez v6, :cond_13b

    add-int/lit8 v6, v6, -0x1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/media/IAudioRoutesObserver;

    :try_start_132
    invoke-interface {v11, v13}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_135} :catch_136

    goto :goto_124

    :catch_136
    move-exception v8

    goto :goto_124

    :catchall_138
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8

    :sswitch_149
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_154
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_8

    :sswitch_15b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_164

    move v1, v0

    :cond_164
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_8

    :sswitch_16d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_8

    :sswitch_174
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8

    :sswitch_17d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_8

    :sswitch_184
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_8

    :sswitch_18b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8

    :sswitch_194
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_8

    :sswitch_1a5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-wrap32(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_8

    :sswitch_1b0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_8

    nop

    :sswitch_data_1be
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_1b
        0x3 -> :sswitch_25
        0x4 -> :sswitch_2f
        0x5 -> :sswitch_54
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_39
        0x8 -> :sswitch_71
        0x9 -> :sswitch_7d
        0xa -> :sswitch_13
        0xc -> :sswitch_10b
        0xd -> :sswitch_71
        0xe -> :sswitch_149
        0xf -> :sswitch_154
        0x10 -> :sswitch_15b
        0x11 -> :sswitch_15b
        0x12 -> :sswitch_16d
        0x13 -> :sswitch_174
        0x14 -> :sswitch_35
        0x15 -> :sswitch_17d
        0x16 -> :sswitch_194
        0x18 -> :sswitch_1a5
        0x19 -> :sswitch_1b0
        0x1a -> :sswitch_184
        0x1b -> :sswitch_18b
        0x64 -> :sswitch_83
        0x65 -> :sswitch_af
        0x66 -> :sswitch_c5
        0x67 -> :sswitch_db
        0x68 -> :sswitch_ef
    .end sparse-switch
.end method

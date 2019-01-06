.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private mFlushAll:I

.field private mFlushedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method static synthetic -wrap0(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    return-void
.end method

.method private endFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v1

    if-nez p1, :cond_d

    :try_start_5
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 5

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    if-gtz v0, :cond_13

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    move-result v0

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_15

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-object v0

    :cond_15
    monitor-exit p0

    return-object v2

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v1

    if-nez p1, :cond_d

    :try_start_5
    iget v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_13

    :goto_b
    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_b

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .registers 9

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    instance-of v3, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v3, :cond_a

    move-object v2, p2

    check-cast v2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    :cond_a
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v2, :cond_16

    const/4 v3, -0x8

    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    :cond_16
    return v5

    :cond_17
    if-nez p1, :cond_36

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    :cond_20
    :goto_20
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v4

    :cond_36
    const/4 v3, 0x2

    if-ne p1, v3, :cond_20

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    goto :goto_20

    :cond_3d
    const-string/jumbo v3, "TextToSpeechService"

    const-string/jumbo v4, "SynthThread has quit"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4c

    const/4 v3, -0x4

    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    :cond_4c
    return v5
.end method

.method public isSpeaking()Z
    .registers 2

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public quit()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_11
    return-void
.end method

.method public stopAll()I
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_d
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .registers 5

    if-nez p1, :cond_4

    const/4 v2, -0x1

    return v2

    :cond_4
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    :cond_10
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2
.end method

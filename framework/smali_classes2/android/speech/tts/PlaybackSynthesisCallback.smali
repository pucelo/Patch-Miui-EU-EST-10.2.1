.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .registers 12

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v3

    if-gt p3, v3, :cond_a

    if-gtz p3, :cond_2b

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buffer is too large or of zero length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2b
    const/4 v2, 0x0

    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2f
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v3, :cond_38

    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_5f

    monitor-exit v4

    return v7

    :cond_38
    :try_start_38
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5f

    if-eqz v3, :cond_3e

    monitor-exit v4

    return v7

    :cond_3e
    :try_start_3e
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_49

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_5f

    move-result v3

    monitor-exit v4

    return v3

    :cond_49
    :try_start_49
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_5f

    monitor-exit v4

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v6, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v3, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    :try_start_56
    invoke-virtual {v2, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_62

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    return v6

    :catchall_5f
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_62
    move-exception v1

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, -0x5

    :try_start_67
    iput v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_6b

    monitor-exit v3

    return v7

    :catchall_6b
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public done()I
    .registers 8

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "PlaybackSynthesisRequest"

    const-string/jumbo v4, "Duplicate call to done()"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_49

    monitor-exit v3

    return v6

    :cond_16
    :try_start_16
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_21

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_49

    move-result v2

    monitor-exit v3

    return v2

    :cond_21
    const/4 v2, 0x1

    :try_start_22
    iput-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v2, :cond_4c

    const-string/jumbo v2, "PlaybackSynthesisRequest"

    const-string/jumbo v4, "done() was called before start() call"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    :goto_3a
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_49

    monitor-exit v3

    return v6

    :cond_41
    :try_start_41
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_3a

    :catchall_49
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_49

    monitor-exit v3

    if-nez v1, :cond_5c

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    :goto_56
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    return v5

    :cond_5c
    invoke-virtual {v0, v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    goto :goto_56
.end method

.method public error()V
    .registers 2

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    return-void
.end method

.method public error(I)V
    .registers 4

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    if-eqz v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaxBufferSize()I
    .registers 2

    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasStarted()Z
    .registers 3

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public rangeStart(III)V
    .registers 6

    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v0, :cond_e

    const-string/jumbo v0, "PlaybackSynthesisRequest"

    const-string/jumbo v1, "mItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->rangeStart(III)V

    return-void
.end method

.method public start(III)I
    .registers 15

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3a

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3a

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3a

    const-string/jumbo v1, "PlaybackSynthesisRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio format encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not supported. Please use one "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "AudioFormat.ENCODING_PCM_FLOAT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v8

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v9

    if-nez v8, :cond_67

    :try_start_48
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported number of channels :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x5

    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_a0

    monitor-exit v9

    return v4

    :cond_67
    :try_start_67
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_72

    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_a0

    move-result v1

    monitor-exit v9

    return v1

    :cond_72
    :try_start_72
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_a0

    if-eqz v1, :cond_78

    monitor-exit v9

    return v4

    :cond_78
    :try_start_78
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v1, :cond_87

    const-string/jumbo v1, "PlaybackSynthesisRequest"

    const-string/jumbo v2, "Start called twice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_a0

    monitor-exit v9

    return v4

    :cond_87
    :try_start_87
    new-instance v0, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_9e
    .catchall {:try_start_87 .. :try_end_9e} :catchall_a0

    monitor-exit v9

    return v10

    :catchall_a0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method stop()V
    .registers 5

    const/4 v3, -0x2

    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-eqz v1, :cond_a

    monitor-exit v2

    return-void

    :cond_a
    :try_start_a
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-ne v1, v3, :cond_19

    const-string/jumbo v1, "PlaybackSynthesisRequest"

    const-string/jumbo v3, "stop() called twice"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_25

    monitor-exit v2

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    const/4 v1, -0x2

    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    monitor-exit v2

    if-eqz v0, :cond_28

    invoke-virtual {v0, v3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    :goto_24
    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_28
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v1, v3}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_24
.end method

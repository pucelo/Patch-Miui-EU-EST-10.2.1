.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return p1
.end method

.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    return-void
.end method

.method private static final clip(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpg-float v0, p0, p2

    if-gez v0, :cond_b

    move p1, p0

    goto :goto_4

    :cond_b
    move p1, p2

    goto :goto_4
.end method

.method private finish()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_b

    :goto_5
    iget-object v1, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    return-void

    :catch_b
    move-exception v0

    goto :goto_5
.end method

.method private static setupVolume(Landroid/media/MediaPlayer;FF)V
    .registers 10

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p1, v6, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {p2, v4, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->clip(FFF)F

    move-result v0

    move v2, v1

    move v3, v1

    cmpl-float v4, v0, v6

    if-lez v4, :cond_1b

    sub-float v4, v5, v0

    mul-float v2, v1, v4

    :cond_17
    :goto_17
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_1b
    cmpg-float v4, v0, v6

    if-gez v4, :cond_17

    add-float v4, v5, v0

    mul-float v3, v1, v4

    goto :goto_17
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v2, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-lez v2, :cond_26

    :goto_17
    invoke-static {v4, v5, v7, v6, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_28

    const/4 v3, -0x5

    invoke-interface {v0, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    return-void

    :cond_26
    move v2, v3

    goto :goto_17

    :cond_28
    :try_start_28
    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v5, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v4, v5}, Landroid/speech/tts/AudioPlaybackQueueItem;->setupVolume(Landroid/media/MediaPlayer;FF)V

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Landroid/speech/tts/AudioPlaybackQueueItem;->finish()V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_56} :catch_5e

    :goto_56
    iget-boolean v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mFinished:Z

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    :goto_5d
    return-void

    :catch_5e
    move-exception v1

    const-string/jumbo v3, "TTS.AudioQueueItem"

    const-string/jumbo v4, "MediaPlayer failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    goto :goto_56

    :cond_6e
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_5d
.end method

.method stop(I)V
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/AudioPlaybackQueueItem;->mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

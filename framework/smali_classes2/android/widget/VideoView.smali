.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView$1;,
        Landroid/widget/VideoView$2;,
        Landroid/widget/VideoView$3;,
        Landroid/widget/VideoView$4;,
        Landroid/widget/VideoView$5;,
        Landroid/widget/VideoView$6;,
        Landroid/widget/VideoView$7;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/VideoView;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get10(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/VideoView;)I
    .registers 2

    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/VideoView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/VideoView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic -set10(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/VideoView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic -set4(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic -set5(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic -set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic -set7(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic -set8(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic -set9(Landroid/widget/VideoView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/VideoView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/VideoView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    iput-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput v3, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    return-void
.end method

.method private attachMediaController()V
    .registers 4

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1b
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_29
    return-void

    :cond_2a
    move-object v0, p0

    goto :goto_1b
.end method

.method private isInPlaybackState()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_16

    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v2, :cond_16

    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v2, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method private measureAndLayoutSubtitleWidget()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    return-void
.end method

.method private openVideo()V
    .registers 13

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v7, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, v10}, Landroid/widget/VideoView;->release(Z)V

    iget v7, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    if-eqz v7, :cond_1b

    iget-object v7, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v9, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    :cond_1b
    :try_start_1b
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/media/SubtitleController;

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v1, v0, v7, v8}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    new-instance v7, Landroid/media/WebVttRenderer;

    invoke-direct {v7, v0}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    new-instance v7, Landroid/media/TtmlRenderer;

    invoke-direct {v7, v0}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    new-instance v7, Landroid/media/Cea708CaptionRenderer;

    invoke-direct {v7, v0}, Landroid/media/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    new-instance v7, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v7, v0}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v1, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    iget v7, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-eqz v7, :cond_112

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v8, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    :goto_63
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v10, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ba
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_c6} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_c6} :catch_11c
    .catchall {:try_start_1b .. :try_end_c6} :catchall_15a

    :try_start_c6
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/io/InputStream;

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/media/MediaFormat;

    invoke-virtual {v9, v7, v8}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_d3
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_d3} :catch_d4
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d3} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_d3} :catch_11c
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_15a

    goto :goto_ba

    :catch_d4
    move-exception v2

    :try_start_d5
    iget-object v7, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v9, 0x385

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_df} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d5 .. :try_end_df} :catch_11c
    .catchall {:try_start_d5 .. :try_end_df} :catchall_15a

    goto :goto_ba

    :catch_e0
    move-exception v3

    :try_start_e1
    const-string/jumbo v7, "VideoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    iget-object v7, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_10c
    .catchall {:try_start_e1 .. :try_end_10c} :catchall_15a

    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    return-void

    :cond_112
    :try_start_112
    iget-object v7, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v7

    iput v7, p0, Landroid/widget/VideoView;->mAudioSession:I
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11a} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_11a} :catch_11c
    .catchall {:try_start_112 .. :try_end_11a} :catchall_15a

    goto/16 :goto_63

    :catch_11c
    move-exception v4

    :try_start_11d
    const-string/jumbo v7, "VideoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to open content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/VideoView;->mTargetState:I

    iget-object v7, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_148
    .catchall {:try_start_11d .. :try_end_148} :catchall_15a

    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    return-void

    :cond_14e
    const/4 v7, 0x1

    :try_start_14f
    iput v7, p0, Landroid/widget/VideoView;->mCurrentState:I

    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_154} :catch_e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14f .. :try_end_154} :catch_11c
    .catchall {:try_start_14f .. :try_end_154} :catchall_15a

    iget-object v7, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_15a
    move-exception v7

    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    throw v7
.end method

.method private release(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz p1, :cond_1d

    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    :cond_1d
    iget v0, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_26
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_d
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 8

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_e

    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_d
    return-void

    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_d

    :catch_14
    move-exception v0

    iget-object v1, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x385

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_d
.end method

.method public canPause()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_20
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 3

    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-nez v1, :cond_12

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_12
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .registers 2

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .registers 2

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_42

    const/16 v1, 0x18

    if-eq p1, v1, :cond_42

    const/16 v1, 0x19

    if-eq p1, v1, :cond_42

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_42

    const/16 v1, 0x52

    if-eq p1, v1, :cond_42

    const/4 v1, 0x5

    if-eq p1, v1, :cond_42

    const/4 v1, 0x6

    if-eq p1, v1, :cond_40

    const/4 v0, 0x1

    :goto_1b
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_7e

    if-eqz v0, :cond_7e

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_7e

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_2f

    const/16 v1, 0x55

    if-ne p1, v1, :cond_4d

    :cond_2f
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    :goto_3f
    return v2

    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    :cond_42
    const/4 v0, 0x0

    goto :goto_1b

    :cond_44
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_3f

    :cond_4d
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_62

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    :cond_61
    return v2

    :cond_62
    const/16 v1, 0x56

    if-eq p1, v1, :cond_6a

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_7b

    :cond_6a
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    :cond_7a
    return v2

    :cond_7b
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    :cond_7e
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Landroid/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v3

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_3d

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v6, :cond_3d

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v4, v7, :cond_51

    if-ne v1, v7, :cond_51

    move v3, v5

    move v0, v2

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v5

    if-ge v6, v7, :cond_41

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    :cond_3d
    :goto_3d
    invoke-virtual {p0, v3, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    return-void

    :cond_41
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v5

    if-le v6, v7, :cond_3d

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_3d

    :cond_51
    if-ne v4, v7, :cond_61

    move v3, v5

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    if-ne v1, v8, :cond_3d

    if-le v0, v2, :cond_3d

    move v0, v2

    goto :goto_3d

    :cond_61
    if-ne v1, v7, :cond_71

    move v0, v2

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    if-ne v4, v8, :cond_3d

    if-le v3, v5, :cond_3d

    move v3, v5

    goto :goto_3d

    :cond_71
    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-ne v1, v8, :cond_81

    if-le v0, v2, :cond_81

    move v0, v2

    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v2

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    :cond_81
    if-ne v4, v8, :cond_3d

    if-le v3, v5, :cond_3d

    move v3, v5

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_3d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    :cond_13
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    :cond_13
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    :cond_16
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 4

    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    :goto_e
    return-void

    :cond_f
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_e
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p1, p0, Landroid/widget/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public setAudioFocusRequest(I)V
    .registers 5

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal audio focus type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iput p1, p0, Landroid/widget/VideoView;->mAudioFocusType:I

    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_9
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v1, p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    :cond_15
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    :cond_1a
    iput-object p1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p1, :cond_3e

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_29

    new-instance v1, Landroid/widget/VideoView$8;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    return-void

    :cond_3e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    goto :goto_3a
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .registers 3

    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    :cond_e
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    iget-object v0, p0, Landroid/widget/VideoView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1b
    return-void
.end method

.method public suspend()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

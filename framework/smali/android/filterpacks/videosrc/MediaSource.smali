.class public Landroid/filterpacks/videosrc/MediaSource;
.super Landroid/filterfw/core/Filter;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosrc/MediaSource$1;,
        Landroid/filterpacks/videosrc/MediaSource$2;,
        Landroid/filterpacks/videosrc/MediaSource$3;,
        Landroid/filterpacks/videosrc/MediaSource$4;
    }
.end annotation


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSource"

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mContext:Landroid/content/Context;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "context"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static synthetic -get0(Landroid/filterpacks/videosrc/MediaSource;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return v0
.end method

.method static synthetic -get1(Landroid/filterpacks/videosrc/MediaSource;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic -get2(Landroid/filterpacks/videosrc/MediaSource;)I
    .registers 2

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    return v0
.end method

.method static synthetic -get3(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .registers 2

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-object v0
.end method

.method static synthetic -set0(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    return p1
.end method

.method static synthetic -set1(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p1
.end method

.method static synthetic -set2(Landroid/filterpacks/videosrc/MediaSource;I)I
    .registers 2

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    return p1
.end method

.method static synthetic -set3(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    return p1
.end method

.method static synthetic -set4(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    return p1
.end method

.method static synthetic -set5(Landroid/filterpacks/videosrc/MediaSource;I)I
    .registers 2

    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x10

    new-array v0, v1, [F

    fill-array-data v0, :array_20

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_44

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_68

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_8c

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    return-void

    nop

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    iput-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    iput v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$2;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$3;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$4;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    const-string/jumbo v0, "MediaSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return-void
.end method

.method private createFormats()V
    .registers 2

    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .registers 12

    const/4 v9, 0x1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Setting up playback."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Resetting existing MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_37
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to create a MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_47
    :try_start_47
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_54

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Creating new MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_44

    goto :goto_37

    :cond_5c
    if-eqz p1, :cond_10a

    :try_start_5e
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_7e

    const-string/jumbo v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting MediaPlayer source to URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d8

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_89} :catch_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_89} :catch_143
    .catchall {:try_start_5e .. :try_end_89} :catchall_44

    :goto_89
    :try_start_89
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    new-instance v8, Landroid/view/Surface;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v8, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_d1

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Preparing MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_d6
    .catchall {:try_start_89 .. :try_end_d6} :catchall_44

    monitor-exit p0

    return v9

    :cond_d8
    :try_start_d8
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e9} :catch_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_e9} :catch_143
    .catchall {:try_start_d8 .. :try_end_e9} :catchall_44

    goto :goto_89

    :catch_ea
    move-exception v6

    :try_start_eb
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_178

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10a
    .catchall {:try_start_eb .. :try_end_10a} :catchall_44

    :cond_10a
    :try_start_10a
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_12a

    const-string/jumbo v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting MediaPlayer source to asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12a
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_141} :catch_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10a .. :try_end_141} :catch_143
    .catchall {:try_start_10a .. :try_end_141} :catchall_44

    goto/16 :goto_89

    :catch_143
    move-exception v7

    :try_start_144
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_163

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18d
    .catchall {:try_start_144 .. :try_end_18d} :catchall_44
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_f
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "MediaSource closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 6

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Parameter update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string/jumbo v0, "sourceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Opening new source URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    :cond_32
    :goto_32
    return-void

    :cond_33
    const-string/jumbo v0, "sourceAsset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Opening new source FD"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_32

    :cond_59
    const-string/jumbo v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_32

    :cond_70
    const-string/jumbo v0, "sourceIsUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_90

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Opening new source URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_32

    :cond_96
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_90

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Opening new source Asset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_a4
    const-string/jumbo v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_32

    :cond_be
    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    if-eqz v0, :cond_d5

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_e3

    :cond_d5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    :goto_de
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    goto/16 :goto_32

    :cond_e3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_de
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 7

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Opening MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current URL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const-wide/16 v2, 0x0

    const/16 v4, 0x68

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    move-result v0

    if-nez v0, :cond_67

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error setting up MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Current source is Asset!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_67
    return-void
.end method

.method public declared-synchronized pauseVideo(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_18

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_14
    :goto_14
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_24

    monitor-exit p0

    return-void

    :cond_18
    if-nez p1, :cond_14

    :try_start_1a
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "Preparing MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "Processing new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1e

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Unexpected null media player!"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    return-void

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    if-nez v3, :cond_98

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_44

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "Waiting for preparation to complete"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v3, :cond_52

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_82

    :cond_52
    const-wide/16 v6, 0x64

    :try_start_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/filterpacks/videosrc/MediaSource;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_59} :catch_68

    :goto_59
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_6a

    const-string/jumbo v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    return-void

    :catch_68
    move-exception v14

    goto :goto_59

    :cond_6a
    add-int/lit8 v17, v17, 0x1

    const/16 v3, 0x64

    move/from16 v0, v17

    if-ne v0, v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "MediaPlayer timed out while preparing!"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_82
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_91

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "Starting playback"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    :cond_98
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v3, :cond_a6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11c

    :cond_a6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    if-eqz v3, :cond_110

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_bb

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "Waiting for new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    const/16 v17, 0x0

    :goto_bd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    if-nez v3, :cond_fc

    const/16 v3, 0xa

    move/from16 v0, v17

    if-ne v0, v3, :cond_e1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_d8

    const-string/jumbo v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    return-void

    :cond_d8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Timeout waiting for new frame!"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e1
    const-wide/16 v6, 0x64

    :try_start_e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/filterpacks/videosrc/MediaSource;->wait(J)V
    :try_end_e8
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_e8} :catch_eb

    :cond_e8
    :goto_e8
    add-int/lit8 v17, v17, 0x1

    goto :goto_bd

    :catch_eb
    move-exception v14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_e8

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "interrupted"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    :cond_fc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_110

    const-string/jumbo v3, "MediaSource"

    const-string/jumbo v5, "Got new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    :cond_11c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    if-eqz v3, :cond_1f3

    const/16 v3, 0x10

    new-array v4, v3, [F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/16 v3, 0x10

    new-array v2, v3, [F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    sparse-switch v3, :sswitch_data_276

    :sswitch_138
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :goto_140
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_1cb

    const-string/jumbo v3, "MediaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OrientationHint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x4

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x5

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/16 v6, 0xc

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    const/16 v6, 0xd

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const/16 v6, 0x8

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    const/16 v6, 0x9

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "MediaSource"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cb
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x5

    aget v7, v2, v3

    const/4 v3, 0x0

    aget v8, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    const/16 v3, 0xc

    aget v10, v2, v3

    const/16 v3, 0xd

    aget v11, v2, v3

    const/16 v3, 0x8

    aget v12, v2, v3

    const/16 v3, 0x9

    aget v13, v2, v3

    invoke-virtual/range {v5 .. v13}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    :cond_1f3
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v3, v5, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_242

    const-string/jumbo v3, "MediaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_242
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    const-string/jumbo v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Landroid/filterpacks/videosrc/MediaSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    return-void

    :sswitch_258
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_140

    :sswitch_262
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_140

    :sswitch_26c
    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_140

    :sswitch_data_276
    .sparse-switch
        0x0 -> :sswitch_138
        0x5a -> :sswitch_258
        0xb4 -> :sswitch_262
        0x10e -> :sswitch_26c
    .end sparse-switch
.end method

.method public setupPorts()V
    .registers 3

    const/4 v1, 0x3

    const-string/jumbo v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :cond_9
    return-void
.end method

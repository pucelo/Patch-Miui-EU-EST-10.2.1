.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;
.source "MediaActionSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$1;,
        Landroid/media/MediaActionSound$SoundState;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final START_VIDEO_RECORDING:I = 0x2

.field private static final STATE_LOADED:I = 0x3

.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOADING_PLAY_REQUESTED:I = 0x2

.field private static final STATE_NOT_LOADED:I = 0x0

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:[Landroid/media/MediaActionSound$SoundState;


# direct methods
.method static synthetic -get0(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/media/audio/ui/camera_focus.ogg"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/media/audio/ui/VideoStop.ogg"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/MediaActionSound$1;

    invoke-direct {v1, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/MediaActionSound$SoundState;

    iput-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    const/4 v0, 0x0

    :goto_45
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    new-instance v2, Landroid/media/MediaActionSound$SoundState;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaActionSound$SoundState;-><init>(Landroid/media/MediaActionSound;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_56
    return-void
.end method

.method private loadSound(Landroid/media/MediaActionSound$SoundState;)I
    .registers 7

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    iget v3, p1, Landroid/media/MediaActionSound$SoundState;->name:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_13

    iput v4, p1, Landroid/media/MediaActionSound$SoundState;->state:I

    iput v0, p1, Landroid/media/MediaActionSound$SoundState;->id:I

    :cond_13
    return v0
.end method


# virtual methods
.method public load(I)V
    .registers 6

    if-ltz p1, :cond_7

    sget-object v1, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_21

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown sound requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v1, p1

    monitor-enter v0

    :try_start_26
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v1, :pswitch_data_76

    const-string/jumbo v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_73

    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    :pswitch_52
    :try_start_52
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_50

    const-string/jumbo v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_73

    goto :goto_50

    :catchall_73
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method public play(I)V
    .registers 10

    if-ltz p1, :cond_7

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_21

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v7, v0, p1

    monitor-enter v7

    :try_start_26
    iget v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v0, :pswitch_data_90

    :pswitch_2b
    const-string/jumbo v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play() called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_26 .. :try_end_52} :catchall_78

    :goto_52
    monitor-exit v7

    return-void

    :pswitch_54
    :try_start_54
    invoke-direct {p0, v7}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    invoke-direct {p0, v7}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v0

    if-gtz v0, :cond_7b

    const-string/jumbo v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play() error loading sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_78

    goto :goto_52

    :catchall_78
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_7b
    :pswitch_7b
    const/4 v0, 0x2

    :try_start_7c
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    goto :goto_52

    :pswitch_7f
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_8e
    .catchall {:try_start_7c .. :try_end_8e} :catchall_78

    goto :goto_52

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_54
        :pswitch_7b
        :pswitch_2b
        :pswitch_7f
    .end packed-switch
.end method

.method public release()V
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v3, v2

    :goto_9
    if-ge v1, v3, :cond_1b

    aget-object v0, v2, v1

    monitor-enter v0

    const/4 v4, 0x0

    :try_start_f
    iput v4, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaActionSound$SoundState;->id:I
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    monitor-exit v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1b
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iput-object v5, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_22
    return-void
.end method

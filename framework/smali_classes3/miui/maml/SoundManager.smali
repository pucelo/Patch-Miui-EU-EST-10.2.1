.class public Lmiui/maml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/SoundManager$Command;,
        Lmiui/maml/SoundManager$SoundOptions;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-SoundManager$CommandSwitchesValues:[I = null

.field private static final ADVANCE:Ljava/lang/String; = "advance/"

.field private static final LOCKSCREEN_AUDIO:Ljava/lang/String; = "lockscreen_audio/"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/maml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/SoundManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/SoundManager;)Landroid/media/SoundPool;
    .registers 2

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-SoundManager$CommandSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/SoundManager$Command;->values()[Lmiui/maml/SoundManager$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/SoundManager$Command;->Pause:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/SoundManager$Command;->Play:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/SoundManager$Command;->Resume:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/SoundManager$Command;->Stop:Lmiui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/SoundManager;->-miui-maml-SoundManager$CommandSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lmiui/maml/SoundManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2

    iput-object p1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    iget-object v0, p1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {p1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private init()V
    .registers 7

    iget-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_34

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    :goto_33
    return-void

    :cond_34
    iget-object v1, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lmiui/maml/SoundManager$1;

    invoke-direct {v2, p0}, Lmiui/maml/SoundManager$1;-><init>(Lmiui/maml/SoundManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    monitor-enter v2

    :goto_41
    :try_start_41
    iget-boolean v1, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_4f

    if-eqz v1, :cond_47

    monitor-exit v2

    goto :goto_33

    :cond_47
    :try_start_47
    iget-object v1, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4f

    goto :goto_41

    :catch_4d
    move-exception v0

    goto :goto_41

    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    .registers 13

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3c

    if-nez v0, :cond_8

    monitor-exit p0

    return v9

    :cond_8
    :try_start_8
    iget-boolean v0, p2, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3c

    :cond_f
    :try_start_f
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    iget v3, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    iget-boolean v1, p2, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v1, :cond_2d

    const/4 v5, -0x1

    :goto_1a
    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2f
    .catchall {:try_start_f .. :try_end_2b} :catchall_3c

    monitor-exit p0

    return v7

    :cond_2d
    move v5, v9

    goto :goto_1a

    :catch_2f
    move-exception v8

    :try_start_30
    const-string/jumbo v0, "MamlSoundManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return v9

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 6

    if-nez p3, :cond_11

    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/SoundManager$SoundOptions;

    invoke-direct {p0, p2, v0}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I

    :cond_11
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .registers 16

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    :cond_9
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_ae

    if-nez v0, :cond_f

    monitor-exit p0

    return v12

    :cond_f
    :try_start_f
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_15e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b1

    iget-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v9

    if-nez v9, :cond_43

    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_ae

    monitor-exit p0

    return v12

    :cond_43
    :try_start_43
    invoke-virtual {v9}, Landroid/os/MemoryFile;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_69

    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "the sound file is larger than %d KB: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_ae

    monitor-exit p0

    return v12

    :cond_69
    :try_start_69
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v9}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/os/MemoryFile;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_87} :catch_8e
    .catchall {:try_start_69 .. :try_end_87} :catchall_ae

    :goto_87
    :try_start_87
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_ae

    monitor-exit p0

    return v12

    :catch_8e
    move-exception v7

    :try_start_8f
    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to load sound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8f .. :try_end_ad} :catchall_ae

    goto :goto_87

    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b1
    :try_start_b1
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "advance/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f9

    const-string/jumbo v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_b1 .. :try_end_f7} :catchall_ae

    monitor-exit p0

    return v12

    :cond_f9
    :try_start_f9
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_122

    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "the sound file is larger than %d KB: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_f9 .. :try_end_120} :catchall_ae

    monitor-exit p0

    return v12

    :cond_122
    const/4 v8, 0x0

    const/high16 v0, 0x10000000

    :try_start_125
    invoke-static {v10, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_145

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_145} :catch_14a
    .catchall {:try_start_125 .. :try_end_145} :catchall_159

    :cond_145
    :try_start_145
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_ae

    goto/16 :goto_87

    :catch_14a
    move-exception v7

    :try_start_14b
    const-string/jumbo v0, "MamlSoundManager"

    const-string/jumbo v1, "fail to load sound. "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_154
    .catchall {:try_start_14b .. :try_end_154} :catchall_159

    :try_start_154
    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_87

    :catchall_159
    move-exception v0

    invoke-static {v8}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_15e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    :try_end_165
    .catchall {:try_start_154 .. :try_end_165} :catchall_ae

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized playSound(ILmiui/maml/SoundManager$Command;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    :cond_8
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    if-eqz v0, :cond_e

    if-gtz p1, :cond_10

    :cond_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Lmiui/maml/SoundManager;->-getmiui-maml-SoundManager$CommandSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_25

    packed-switch v0, :pswitch_data_3e

    :goto_1d
    :pswitch_1d
    monitor-exit p0

    return-void

    :pswitch_1f
    :try_start_1f
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_1d

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_28
    :try_start_28
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_1d

    :pswitch_2e
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_25

    goto :goto_1d

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1d
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopAllPlaying()V
    .registers 5

    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_13

    :cond_29
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.class public final Landroid/media/soundtrigger/SoundTriggerDetector;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerDetector$Callback;,
        Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;,
        Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;,
        Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final MSG_DETECTION_ERROR:I = 0x3

.field private static final MSG_DETECTION_PAUSE:I = 0x4

.field private static final MSG_DETECTION_RESUME:I = 0x5

.field private static final MSG_SOUND_TRIGGER_DETECTED:I = 0x2

.field public static final RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final RECOGNITION_FLAG_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SoundTriggerDetector"


# instance fields
.field private final mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

.field private final mSoundModelId:Ljava/util/UUID;

.field private final mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method static synthetic -get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .registers 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mCallback:Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    if-nez p4, :cond_22

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-direct {v0, p0}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    :goto_1a
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    invoke-direct {v0, p0, v2}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    return-void

    :cond_22
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1a
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public startRecognition(I)Z
    .registers 13

    const/4 v4, 0x0

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_26

    const/4 v1, 0x1

    :goto_6
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_28

    const/4 v0, 0x1

    :goto_b
    const/4 v3, 0x0

    :try_start_c
    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v6, Landroid/os/ParcelUuid;

    iget-object v7, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v7, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    new-instance v8, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v1, v0, v9, v10}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[B)V

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/app/ISoundTriggerService;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_2a

    move-result v3

    if-nez v3, :cond_25

    const/4 v4, 0x1

    :cond_25
    return v4

    :cond_26
    const/4 v1, 0x0

    goto :goto_6

    :cond_28
    const/4 v0, 0x0

    goto :goto_b

    :catch_2a
    move-exception v2

    return v4
.end method

.method public stopRecognition()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v4, Landroid/os/ParcelUuid;

    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mSoundModelId:Ljava/util/UUID;

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/media/soundtrigger/SoundTriggerDetector;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/ISoundTriggerService;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_15

    move-result v1

    if-nez v1, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2

    :catch_15
    move-exception v0

    return v2
.end method

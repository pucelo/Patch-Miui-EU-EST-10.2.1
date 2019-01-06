.class public Lcom/android/server/soundtrigger/SoundTriggerService;
.super Lcom/android/server/SystemService;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$1;,
        Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;,
        Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;,
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SoundTriggerService"


# instance fields
.field private mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;

.field final mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

.field private final mIntentCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerRecognitionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadedModels:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/UUID;",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field private mLock:Ljava/lang/Object;

.field private final mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/app/PendingIntent$OnFinished;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mIntentCallbacks:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/soundtrigger/SoundTriggerService;)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/soundtrigger/SoundTriggerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->isInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->grabWakeLock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mCallbackCompletedHandler:Landroid/app/PendingIntent$OnFinished;

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLoadedModels:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mIntentCallbacks:Ljava/util/TreeMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller does not hold the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method private grabWakeLock()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "SoundTriggerService"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    :cond_1c
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private declared-synchronized initSoundTriggerHelper()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerHelper;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isInitialized()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_11

    const-string/jumbo v0, "SoundTriggerService"

    const-string/jumbo v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_f

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService;->initSoundTriggerHelper()V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/16 v0, 0x258

    if-ne v0, p1, :cond_e

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    goto :goto_e
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "soundtrigger"

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerInternal;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

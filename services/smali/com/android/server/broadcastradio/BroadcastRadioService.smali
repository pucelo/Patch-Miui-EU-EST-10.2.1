.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/broadcastradio/BroadcastRadioService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/broadcastradio/BroadcastRadioService;JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/broadcastradio/BroadcastRadioService;J)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-direct {v0, p0, v2}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/Tuner;
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->nativeFinalize(J)V

    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "broadcastradio"

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

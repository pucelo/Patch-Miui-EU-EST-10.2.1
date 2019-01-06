.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method static synthetic -wrap0(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Landroid/media/tv/ITvInputHardware;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    return-void
.end method

.method private getInterface()Landroid/media/tv/ITvInputHardware;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 13

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setStreamVolume(F)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

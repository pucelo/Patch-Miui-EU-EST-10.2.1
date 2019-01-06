.class Landroid/hardware/radio/TunerCallbackAdapter;
.super Landroid/hardware/radio/ITunerCallback$Stub;
.source "TunerCallbackAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerCallbackAdapter"


# instance fields
.field private final mCallback:Landroid/hardware/radio/RadioTuner$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Landroid/hardware/radio/ITunerCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    if-nez p2, :cond_13

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    :goto_12
    return-void

    :cond_13
    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    goto :goto_12
.end method


# virtual methods
.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_1493(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_1643(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_1927(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 4

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    :cond_10
    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2227(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2376(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2521(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2682(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2836()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onBackgroundScanComplete()V

    return-void
.end method

.method synthetic lambda$-android_hardware_radio_TunerCallbackAdapter_2965()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mCallback:Landroid/hardware/radio/RadioTuner$Callback;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramListChanged()V

    return-void
.end method

.method public onAntennaState(Z)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackgroundScanComplete()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 5

    if-nez p1, :cond_c

    const-string/jumbo v0, "BroadcastRadio.TunerCallbackAdapter"

    const-string/jumbo v1, "ProgramInfo must not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;

    invoke-direct {v1, p1, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgramListChanged()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1, p0}, Landroid/hardware/radio/-$Lambda$JnOBQcNE2QHtc2zY4hNL33J974o$3;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

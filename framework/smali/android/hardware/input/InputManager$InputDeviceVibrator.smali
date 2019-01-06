.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v1}, Landroid/hardware/input/InputManager;->-get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasVibrator()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .registers 13

    instance-of v5, p3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v5, :cond_25

    move-object v1, p3

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    const/4 v5, 0x2

    new-array v2, v5, [J

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    aput-wide v6, v2, v5

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v6

    const/4 v5, 0x1

    aput-wide v6, v2, v5

    const/4 v3, -0x1

    :goto_17
    :try_start_17
    iget-object v5, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v5}, Landroid/hardware/input/InputManager;->-get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    move-result-object v5

    iget v6, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    iget-object v7, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v5, v6, v2, v3, v7}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_3f

    return-void

    :cond_25
    instance-of v5, p3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v5, :cond_35

    move-object v4, p3

    check-cast v4, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v2

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v3

    goto :goto_17

    :cond_35
    const-string/jumbo v5, "InputManager"

    const-string/jumbo v6, "Pre-baked effects aren\'t supported on input devices"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

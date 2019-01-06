.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    iput-object p3, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .registers 6

    const/16 v3, 0x1388

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_3e

    return v0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    return v2

    :pswitch_c
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    :goto_19
    return v2

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_19

    :pswitch_1e
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    if-nez v0, :cond_26

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->turnOnDevice()V

    :goto_25
    return v2

    :cond_26
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_25

    :pswitch_2a
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_39

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    :goto_38
    return v2

    :cond_39
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_38

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1e
        :pswitch_2a
        :pswitch_c
    .end packed-switch
.end method

.method private invokeCallback(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "DeviceSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    return-void
.end method

.method private sendSetStreamPath()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    return-void
.end method

.method private turnOnDevice()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->sendUserControlPressedAndReleased(II)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method public handleTimerEvent(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    if-eq v0, p1, :cond_e

    const-string/jumbo v0, "DeviceSelect"

    const-string/jumbo v1, "Timer in a wrong state. Ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    packed-switch v0, :pswitch_data_34

    :goto_13
    return-void

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/DeviceSelectAction;->invokeCallback(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    return-void

    :cond_26
    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->sendSetStreamPath()V

    goto :goto_13

    :pswitch_2a
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mPowerStatusCounter:I

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    goto :goto_13

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->getTargetAddress()I

    move-result v3

    if-eq v2, v3, :cond_c

    return v4

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/DeviceSelectAction;->mState:I

    packed-switch v2, :pswitch_data_26

    return v4

    :pswitch_1a
    const/16 v2, 0x90

    if-ne v0, v2, :cond_25

    aget-byte v2, v1, v4

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/DeviceSelectAction;->handleReportPowerStatus(I)Z

    move-result v2

    return v2

    :cond_25
    return v4

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public start()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V

    const/4 v0, 0x1

    return v0
.end method

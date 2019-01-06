.class public Landroid/media/AudioDevicePort;
.super Landroid/media/AudioPort;
.source "AudioDevicePort.java"


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;Ljava/lang/String;[I[I[I[I[Landroid/media/AudioGain;ILjava/lang/String;)V
    .registers 20

    invoke-static/range {p8 .. p8}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x1

    :goto_7
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    move/from16 v0, p8

    iput v0, p0, Landroid/media/AudioDevicePort;->mType:I

    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    return-void

    :cond_1d
    const/4 v3, 0x2

    goto :goto_7
.end method


# virtual methods
.method public address()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;
    .registers 11

    new-instance v0, Landroid/media/AudioDevicePortConfig;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioDevicePortConfig;-><init>(Landroid/media/AudioDevicePort;IIILandroid/media/AudioGainConfig;)V

    return-object v0
.end method

.method public bridge synthetic buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    instance-of v1, p1, Landroid/media/AudioDevicePort;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    :cond_9
    return v3

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/media/AudioDevicePort;

    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    iget-object v1, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    if-nez v1, :cond_21

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    return v3

    :cond_21
    iget-object v1, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v3

    :cond_2e
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v1, p0, Landroid/media/AudioDevicePort;->mRole:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Landroid/media/AudioPort;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDevicePort;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_43
    iget v1, p0, Landroid/media/AudioDevicePort;->mType:I

    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public type()I
    .registers 2

    iget v0, p0, Landroid/media/AudioDevicePort;->mType:I

    return v0
.end method

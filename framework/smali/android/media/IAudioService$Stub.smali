.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x24

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1c

.field static final TRANSACTION_createAudioRecordForLoopback:I = 0x4c

.field static final TRANSACTION_disableRingtoneSync:I = 0x48

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x37

.field static final TRANSACTION_dispatchFocusChange:I = 0x4a

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x5

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2a

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x43

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x40

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x26

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x49

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getNotificationUri:I = 0x4d

.field static final TRANSACTION_getRingerModeExternal:I = 0xf

.field static final TRANSACTION_getRingerModeInternal:I = 0x10

.field static final TRANSACTION_getRingtonePlayer:I = 0x2c

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamMinVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x2d

.field static final TRANSACTION_getVibrateSetting:I = 0x13

.field static final TRANSACTION_handleBluetoothA2dpDeviceConfigChange:I = 0x30

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_isBluetoothScoOn:I = 0x20

.field static final TRANSACTION_isCameraSoundForced:I = 0x32

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x39

.field static final TRANSACTION_isMasterMute:I = 0x6

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x36

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x35

.field static final TRANSACTION_isStreamMute:I = 0x4

.field static final TRANSACTION_isValidRingerMode:I = 0x11

.field static final TRANSACTION_loadSoundEffects:I = 0x19

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x34

.field static final TRANSACTION_playSoundEffect:I = 0x17

.field static final TRANSACTION_playSoundEffectVolume:I = 0x18

.field static final TRANSACTION_playerAttributes:I = 0x45

.field static final TRANSACTION_playerEvent:I = 0x46

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x4b

.field static final TRANSACTION_registerAudioPolicy:I = 0x3a

.field static final TRANSACTION_registerPlaybackCallback:I = 0x41

.field static final TRANSACTION_registerRecordingCallback:I = 0x3e

.field static final TRANSACTION_releasePlayer:I = 0x47

.field static final TRANSACTION_reloadAudioSettings:I = 0x1b

.field static final TRANSACTION_requestAudioFocus:I = 0x23

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x2f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x21

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1f

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3c

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x38

.field static final TRANSACTION_setMasterMute:I = 0x7

.field static final TRANSACTION_setMicrophoneMute:I = 0xc

.field static final TRANSACTION_setMode:I = 0x15

.field static final TRANSACTION_setRingerModeExternal:I = 0xd

.field static final TRANSACTION_setRingerModeInternal:I = 0xe

.field static final TRANSACTION_setRingtonePlayer:I = 0x2b

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1d

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x12

.field static final TRANSACTION_setVolumeController:I = 0x33

.field static final TRANSACTION_setVolumePolicy:I = 0x3d

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x2e

.field static final TRANSACTION_shouldVibrate:I = 0x14

.field static final TRANSACTION_startBluetoothSco:I = 0x27

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x28

.field static final TRANSACTION_startWatchingRoutes:I = 0x31

.field static final TRANSACTION_stopBluetoothSco:I = 0x29

.field static final TRANSACTION_trackPlayer:I = 0x44

.field static final TRANSACTION_unloadSoundEffects:I = 0x1a

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x25

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3b

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x42

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x3f


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/IAudioService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 70
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a08

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_8
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_12
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_35
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_57
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_79
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_98

    const/4 v6, 0x1

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_98
    const/4 v6, 0x0

    goto :goto_91

    :sswitch_9a
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bc

    const/16 v43, 0x1

    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_bc
    const/16 v43, 0x0

    goto :goto_aa

    :sswitch_bf
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_d8

    const/4 v6, 0x1

    :goto_d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_d8
    const/4 v6, 0x0

    goto :goto_d1

    :sswitch_da
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_106

    const/16 v43, 0x1

    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v25

    move/from16 v3, v55

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_106
    const/16 v43, 0x0

    goto :goto_ea

    :sswitch_109
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_127
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_145
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_163
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_181
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a7

    const/16 v43, 0x1

    :goto_191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2, v9}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_1a7
    const/16 v43, 0x0

    goto :goto_191

    :sswitch_1aa
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1c6
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1e2
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_1fa
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_212
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_231

    const/4 v6, 0x1

    :goto_22a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_231
    const/4 v6, 0x0

    goto :goto_22a

    :sswitch_233
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_24d
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_26b
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_28a

    const/4 v6, 0x1

    :goto_283
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_28a
    const/4 v6, 0x0

    goto :goto_283

    :sswitch_28c
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_2ae
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_2c6
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_2d9
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    const/4 v6, 0x1

    return v6

    :sswitch_2f2
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_30b

    const/4 v6, 0x1

    :goto_304
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_30b
    const/4 v6, 0x0

    goto :goto_304

    :sswitch_30d
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    const/4 v6, 0x1

    return v6

    :sswitch_31a
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    const/4 v6, 0x1

    return v6

    :sswitch_327
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_346

    const/16 v51, 0x1

    :goto_33b
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    const/4 v6, 0x1

    return v6

    :cond_346
    const/16 v51, 0x0

    goto :goto_33b

    :sswitch_349
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_365

    const/16 v43, 0x1

    :goto_359
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_365
    const/16 v43, 0x0

    goto :goto_359

    :sswitch_368
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_381

    const/4 v6, 0x1

    :goto_37a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_381
    const/4 v6, 0x0

    goto :goto_37a

    :sswitch_383
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39f

    const/16 v43, 0x1

    :goto_393
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_39f
    const/16 v43, 0x0

    goto :goto_393

    :sswitch_3a2
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_3bb

    const/4 v6, 0x1

    :goto_3b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_3bb
    const/4 v6, 0x0

    goto :goto_3b4

    :sswitch_3bd
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d9

    const/16 v43, 0x1

    :goto_3cd
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3d9
    const/16 v43, 0x0

    goto :goto_3cd

    :sswitch_3dc
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_3f5

    const/4 v6, 0x1

    :goto_3ee
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_3f5
    const/4 v6, 0x0

    goto :goto_3ee

    :sswitch_3f7
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44c

    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioAttributes;

    :goto_40f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move-object/from16 v12, p0

    move v14, v8

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v21}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_44c
    const/4 v13, 0x0

    goto :goto_40f

    :sswitch_44e
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48e

    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/media/AudioAttributes;

    :goto_472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v50

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_48e
    const/16 v52, 0x0

    goto :goto_472

    :sswitch_491
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_4a9
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_4c1
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v8}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_4dd
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_4f5
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_50d
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_529
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_545
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v59

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v59, :cond_561

    invoke-interface/range {v59 .. v59}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_55a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_561
    const/4 v6, 0x0

    goto :goto_55a

    :sswitch_563
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_57b
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, p0

    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    invoke-virtual/range {v22 .. v27}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_5a9
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5dd

    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/bluetooth/BluetoothDevice;

    :goto_5c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5dd
    const/16 v28, 0x0

    goto :goto_5c1

    :sswitch_5e0
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_604

    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/bluetooth/BluetoothDevice;

    :goto_5f8
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_604
    const/16 v28, 0x0

    goto :goto_5f8

    :sswitch_607
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v58

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_634

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_632
    const/4 v6, 0x1

    return v6

    :cond_634
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_632

    :sswitch_63b
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_654

    const/4 v6, 0x1

    :goto_64d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_654
    const/4 v6, 0x0

    goto :goto_64d

    :sswitch_656
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_672
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_698

    const/16 v51, 0x1

    :goto_68a
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_698
    const/16 v51, 0x0

    goto :goto_68a

    :sswitch_69b
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_6ba

    const/4 v6, 0x1

    :goto_6b3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6ba
    const/4 v6, 0x0

    goto :goto_6b3

    :sswitch_6bc
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_6db

    const/4 v6, 0x1

    :goto_6d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6db
    const/4 v6, 0x0

    goto :goto_6d4

    :sswitch_6dd
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_6f5
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_719

    const/16 v43, 0x1

    :goto_705
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_719
    const/16 v43, 0x0

    goto :goto_705

    :sswitch_71c
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v64, :cond_735

    const/4 v6, 0x1

    :goto_72e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_735
    const/4 v6, 0x0

    goto :goto_72e

    :sswitch_737
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_781

    sget-object v6, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/media/audiopolicy/AudioPolicyConfig;

    :goto_74f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v48

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_784

    const/16 v54, 0x1

    :goto_75f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_787

    const/16 v56, 0x1

    :goto_767
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v48

    move/from16 v3, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZ)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_781
    const/16 v38, 0x0

    goto :goto_74f

    :cond_784
    const/16 v54, 0x0

    goto :goto_75f

    :cond_787
    const/16 v56, 0x0

    goto :goto_767

    :sswitch_78a
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    const/4 v6, 0x1

    return v6

    :sswitch_7a3
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_7cb
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7ef

    sget-object v6, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/media/VolumePolicy;

    :goto_7e3
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_7ef
    const/16 v37, 0x0

    goto :goto_7e3

    :sswitch_7f2
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_80e
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    const/4 v6, 0x1

    return v6

    :sswitch_827
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_83f
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_85b
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    const/4 v6, 0x1

    return v6

    :sswitch_874
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v62

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_88c
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b8

    sget-object v6, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/media/PlayerBase$PlayerIdCard;

    :goto_8a4
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_8b8
    const/16 v36, 0x0

    goto :goto_8a4

    :sswitch_8bb
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8e0

    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/media/AudioAttributes;

    :goto_8d7
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    const/4 v6, 0x1

    return v6

    :cond_8e0
    const/16 v45, 0x0

    goto :goto_8d7

    :sswitch_8e3
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/media/IAudioService$Stub;->playerEvent(II)V

    const/4 v6, 0x1

    return v6

    :sswitch_8fa
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_90d
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/IAudioService$Stub;->disableRingtoneSync(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_923
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_953

    sget-object v6, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/media/AudioAttributes;

    :goto_93f
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_953
    const/16 v45, 0x0

    goto :goto_93f

    :sswitch_956
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_990

    sget-object v6, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/media/AudioFocusInfo;

    :goto_96e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v8, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v57

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_990
    const/16 v29, 0x0

    goto :goto_96e

    :sswitch_993
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9b0

    const/16 v51, 0x1

    :goto_9a7
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v7, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    const/4 v6, 0x1

    return v6

    :cond_9b0
    const/16 v51, 0x0

    goto :goto_9a7

    :sswitch_9b3
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9e5

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/ParcelFileDescriptor;

    :goto_9cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v46

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->createAudioRecordForLoopback(Landroid/os/ParcelFileDescriptor;J)Landroid/os/IBinder;

    move-result-object v60

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_9e5
    const/16 v41, 0x0

    goto :goto_9cb

    :sswitch_9e8
    const-string/jumbo v6, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_data_a08
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_35
        0x3 -> :sswitch_57
        0x4 -> :sswitch_79
        0x5 -> :sswitch_9a
        0x6 -> :sswitch_bf
        0x7 -> :sswitch_da
        0x8 -> :sswitch_109
        0x9 -> :sswitch_127
        0xa -> :sswitch_145
        0xb -> :sswitch_163
        0xc -> :sswitch_181
        0xd -> :sswitch_1aa
        0xe -> :sswitch_1c6
        0xf -> :sswitch_1e2
        0x10 -> :sswitch_1fa
        0x11 -> :sswitch_212
        0x12 -> :sswitch_233
        0x13 -> :sswitch_24d
        0x14 -> :sswitch_26b
        0x15 -> :sswitch_28c
        0x16 -> :sswitch_2ae
        0x17 -> :sswitch_2c6
        0x18 -> :sswitch_2d9
        0x19 -> :sswitch_2f2
        0x1a -> :sswitch_30d
        0x1b -> :sswitch_31a
        0x1c -> :sswitch_327
        0x1d -> :sswitch_349
        0x1e -> :sswitch_368
        0x1f -> :sswitch_383
        0x20 -> :sswitch_3a2
        0x21 -> :sswitch_3bd
        0x22 -> :sswitch_3dc
        0x23 -> :sswitch_3f7
        0x24 -> :sswitch_44e
        0x25 -> :sswitch_491
        0x26 -> :sswitch_4a9
        0x27 -> :sswitch_4c1
        0x28 -> :sswitch_4dd
        0x29 -> :sswitch_4f5
        0x2a -> :sswitch_50d
        0x2b -> :sswitch_529
        0x2c -> :sswitch_545
        0x2d -> :sswitch_563
        0x2e -> :sswitch_57b
        0x2f -> :sswitch_5a9
        0x30 -> :sswitch_5e0
        0x31 -> :sswitch_607
        0x32 -> :sswitch_63b
        0x33 -> :sswitch_656
        0x34 -> :sswitch_672
        0x35 -> :sswitch_69b
        0x36 -> :sswitch_6bc
        0x37 -> :sswitch_6dd
        0x38 -> :sswitch_6f5
        0x39 -> :sswitch_71c
        0x3a -> :sswitch_737
        0x3b -> :sswitch_78a
        0x3c -> :sswitch_7a3
        0x3d -> :sswitch_7cb
        0x3e -> :sswitch_7f2
        0x3f -> :sswitch_80e
        0x40 -> :sswitch_827
        0x41 -> :sswitch_83f
        0x42 -> :sswitch_85b
        0x43 -> :sswitch_874
        0x44 -> :sswitch_88c
        0x45 -> :sswitch_8bb
        0x46 -> :sswitch_8e3
        0x47 -> :sswitch_8fa
        0x48 -> :sswitch_90d
        0x49 -> :sswitch_923
        0x4a -> :sswitch_956
        0x4b -> :sswitch_993
        0x4c -> :sswitch_9b3
        0x4d -> :sswitch_9e8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

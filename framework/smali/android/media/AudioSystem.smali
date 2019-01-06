.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x2e

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ce00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7dffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x47ffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_EARPIECE:I = 0xf

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_LB_TEST:I = 0x7

.field public static final FOR_LOOPBACK:I = 0x9

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_RING:I = 0x8

.field public static final FOR_SYSTEM:I = 0x4

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0x10

.field private static final NUM_FORCE_USE:I = 0xa

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xb

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field public static final WOULD_BLOCK:I = -0x7

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "STREAM_VOICE_CALL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_SYSTEM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_RING"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_MUSIC"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_ALARM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_NOTIFICATION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_BLUETOOTH_SCO"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_DTMF"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_TTS"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "STREAM_ACCESSIBILITY"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_58

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    invoke-static {v0}, Landroid/media/AudioServiceInjector;->adjustDefaultStreamVolume([I)V

    return-void

    :array_58
    .array-data 4
        0x4
        0x7
        0x5
        0x5
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    :try_start_4
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    if-eqz v1, :cond_a

    sget-object v0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_2b

    :cond_a
    monitor-exit v2

    if-eqz v0, :cond_2a

    packed-switch p0, :pswitch_data_32

    const-string/jumbo v1, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_2e
    invoke-interface {v0, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    goto :goto_2a

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
    .end packed-switch
.end method

.method private static errorCallbackFromNative(I)V
    .registers 4

    const/4 v0, 0x0

    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    :try_start_4
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_a

    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    :cond_a
    monitor-exit v2

    if-eqz v0, :cond_10

    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    :cond_10
    return-void

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "FORCE_NONE"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "FORCE_SPEAKER"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "FORCE_HEADPHONES"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "FORCE_BT_SCO"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "FORCE_BT_A2DP"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "FORCE_ANALOG_DOCK"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "FORCE_NO_BT_A2DP"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
    .end packed-switch
.end method

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "FOR_COMMUNICATION"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "FOR_MEDIA"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "FOR_RECORD"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "FOR_DOCK"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "FOR_SYSTEM"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "FOR_ENCODED_SURROUND"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
    .end packed-switch
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .registers 2

    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_64

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "communication"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "ambient"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "mic"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "bt_sco_hs"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "headset"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "aux_digital"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "telephony_rx"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "back_mic"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "remote_submix"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "analog_dock"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "digital_dock"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "usb_device"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "fm_tuner"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "tv_tuner"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "line"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "spdif"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "bt_a2dp"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "loopback"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "ip"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "bus"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "proxy"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "usb_headset"

    return-object v0

    :sswitch_data_64
    .sparse-switch
        -0x7fffffff -> :sswitch_8
        -0x7ffffffe -> :sswitch_c
        -0x7ffffffc -> :sswitch_10
        -0x7ffffff8 -> :sswitch_14
        -0x7ffffff0 -> :sswitch_18
        -0x7fffffe0 -> :sswitch_1c
        -0x7fffffc0 -> :sswitch_20
        -0x7fffff80 -> :sswitch_24
        -0x7fffff00 -> :sswitch_28
        -0x7ffffe00 -> :sswitch_2c
        -0x7ffffc00 -> :sswitch_30
        -0x7ffff800 -> :sswitch_34
        -0x7ffff000 -> :sswitch_38
        -0x7fffe000 -> :sswitch_3c
        -0x7fffc000 -> :sswitch_40
        -0x7fff8000 -> :sswitch_44
        -0x7fff0000 -> :sswitch_48
        -0x7ffe0000 -> :sswitch_4c
        -0x7ffc0000 -> :sswitch_50
        -0x7ff80000 -> :sswitch_54
        -0x7ff00000 -> :sswitch_58
        -0x7f000000 -> :sswitch_5c
        -0x7e000000 -> :sswitch_60
    .end sparse-switch
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .registers 1

    const/16 v0, 0xb

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_74

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "earpiece"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "speaker"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "headset"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "headphone"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "bt_sco"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "bt_sco_hs"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "bt_sco_carkit"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "bt_a2dp"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "bt_a2dp_hp"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "bt_a2dp_spk"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "hdmi"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "analog_dock"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "digital_dock"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "usb_device"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "remote_submix"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "telephony_tx"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "line"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "hmdi_arc"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "spdif"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "fm_transmitter"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "aux_line"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "speaker_safe"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "ip"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "bus"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "proxy"

    return-object v0

    :sswitch_70
    const-string/jumbo v0, "usb_headset"

    return-object v0

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_c
        0x4 -> :sswitch_10
        0x8 -> :sswitch_14
        0x10 -> :sswitch_18
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_20
        0x80 -> :sswitch_24
        0x100 -> :sswitch_28
        0x200 -> :sswitch_2c
        0x400 -> :sswitch_30
        0x800 -> :sswitch_34
        0x1000 -> :sswitch_38
        0x2000 -> :sswitch_3c
        0x4000 -> :sswitch_40
        0x8000 -> :sswitch_44
        0x10000 -> :sswitch_48
        0x20000 -> :sswitch_4c
        0x40000 -> :sswitch_50
        0x80000 -> :sswitch_54
        0x100000 -> :sswitch_58
        0x200000 -> :sswitch_5c
        0x400000 -> :sswitch_60
        0x800000 -> :sswitch_64
        0x1000000 -> :sswitch_68
        0x2000000 -> :sswitch_6c
        0x4000000 -> :sswitch_70
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "MODE_CURRENT"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "MODE_IN_CALL"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "MODE_IN_COMMUNICATION"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "MODE_INVALID"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "MODE_NORMAL"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "MODE_RINGTONE"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch -0x2
        :pswitch_2b
        :pswitch_1f
        :pswitch_2f
        :pswitch_33
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method private static recordingCallbackFromNative(IIII[I)V
    .registers 12

    const/4 v0, 0x0

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    :try_start_4
    sget-object v0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_15

    monitor-exit v1

    if-eqz v0, :cond_14

    const-string/jumbo v6, ""

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V

    :cond_14
    return-void

    :catchall_15
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .registers 3

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .registers 3

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(Z)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .registers 3

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_c

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_c
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_14

    const-string/jumbo v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native systemReady()I
.end method

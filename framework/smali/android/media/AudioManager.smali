.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$1;,
        Landroid/media/AudioManager$2;,
        Landroid/media/AudioManager$3;,
        Landroid/media/AudioManager$AudioPlaybackCallback;,
        Landroid/media/AudioManager$AudioPlaybackCallbackInfo;,
        Landroid/media/AudioManager$AudioRecordingCallback;,
        Landroid/media/AudioManager$AudioRecordingCallbackInfo;,
        Landroid/media/AudioManager$FocusRequestInfo;,
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;,
        Landroid/media/AudioManager$RecordConfigChangeCallbackData;,
        Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_MUTE:I = -0x64

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final ADJUST_UNMUTE:I = 0x64

.field public static final AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1

.field public static final AUDIOFOCUS_FLAG_LOCK:I = 0x4

.field public static final AUDIOFOCUS_FLAG_NAVI_LOCK:I = 0x10

.field public static final AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_NONE:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field static final AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final AUDIO_SESSION_ID_GENERATE:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field public static final ERROR_NO_INIT:I = -0x5

.field public static final ERROR_PERMISSION_DENIED:I = -0x4

.field public static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40

.field public static final FLAG_FIXED_VOLUME:I = 0x20

.field public static final FLAG_FROM_KEY:I = 0x1000

.field public static final FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field private static final FLAG_NAMES:[Ljava/lang/String;

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_INVALID:I = 0x9

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final GET_DEVICES_ALL:I = 0x3

.field public static final GET_DEVICES_INPUTS:I = 0x1

.field public static final GET_DEVICES_OUTPUTS:I = 0x2

.field public static final INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field private static final MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field private static final MSSG_FOCUS_CHANGE:I = 0x0

.field private static final MSSG_PLAYBACK_CONFIG_CHANGE:I = 0x2

.field private static final MSSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0xa

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED:Ljava/lang/String; = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

.field public static final PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field public static final RECORD_CONFIG_EVENT_START:I = 0x1

.field public static final RECORD_CONFIG_EVENT_STOP:I = 0x0

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

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

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioManager"

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field static sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static sAudioPortGeneration:Ljava/lang/Integer;

.field static sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field static sPreviousAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$FocusRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mICallBack:Landroid/os/IBinder;

.field private mOriginalContext:Landroid/content/Context;

.field private final mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

.field private mPlaybackCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioManager$AudioPlaybackCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaybackCallbackLock:Ljava/lang/Object;

.field private mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecCb:Landroid/media/IRecordingConfigDispatcher;

.field private mRecordCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioManager$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordCallbackLock:Ljava/lang/Object;

.field private final mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field private final mUseFixedVolume:Z

.field private final mUseVolumeKeySounds:Z

.field private mVolumeKeyUpTime:J


# direct methods
.method static synthetic -get0(Landroid/media/AudioManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "FLAG_SHOW_UI"

    aput-object v1, v0, v3

    const-string/jumbo v1, "FLAG_ALLOW_RINGER_MODES"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_PLAY_SOUND"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_VIBRATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_FIXED_VOLUME"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_BLUETOOTH_ABS_VOLUME"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_SHOW_SILENT_HINT"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_ACTIVE_MEDIA_ONLY"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_SHOW_UI_WARNINGS"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_SHOW_VIBRATE_HINT"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "FLAG_FROM_KEY"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseVolumeKeySounds:Z

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return-void
.end method

.method public static final adjustToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown adjust mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "ADJUST_RAISE"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "ADJUST_LOWER"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "ADJUST_SAME"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "ADJUST_MUTE"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "ADJUST_UNMUTE"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "ADJUST_TOGGLE_MUTE"

    return-object v0

    :sswitch_data_2c
    .sparse-switch
        -0x64 -> :sswitch_20
        -0x1 -> :sswitch_18
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_14
        0x64 -> :sswitch_24
        0x65 -> :sswitch_28
    .end sparse-switch
.end method

.method private broadcastDeviceListChange(Landroid/os/Handler;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v5

    if-eqz v5, :cond_e

    return-void

    :cond_e
    if-eqz p1, :cond_1e

    invoke-static {v1, v7}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    invoke-static {p1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    :goto_1b
    iput-object v1, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    return-void

    :cond_1e
    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    invoke-static {v6, v1, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iget-object v6, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    invoke-static {v1, v6, v7}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    array-length v6, v0

    if-nez v6, :cond_30

    array-length v6, v4

    if-eqz v6, :cond_1b

    :cond_30
    iget-object v7, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v7

    const/4 v3, 0x0

    :goto_34
    :try_start_34
    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_63

    iget-object v6, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-virtual {v6}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_60

    array-length v6, v0

    if-eqz v6, :cond_55

    const/4 v6, 0x1

    invoke-static {p1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_55
    array-length v6, v4

    if-eqz v6, :cond_60

    const/4 v6, 0x2

    invoke-static {p1, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_65

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_63
    monitor-exit v7

    goto :goto_1b

    :catchall_65
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3d

    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    const/4 v4, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_35

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->id()I

    move-result v6

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDevicePort;

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->id()I

    move-result v5

    if-ne v6, v5, :cond_33

    const/4 v2, 0x1

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_33
    const/4 v2, 0x0

    goto :goto_30

    :cond_35
    if-nez v2, :cond_3a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3d
    invoke-static {v3, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v5

    return-object v5
.end method

.method private static checkFlags(Landroid/media/AudioDevicePort;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v2

    if-ne v2, v0, :cond_18

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_d

    :cond_18
    move v0, v1

    goto :goto_d
.end method

.method private static checkTypes(Landroid/media/AudioDevicePort;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const v2, -0x7fffff80

    if-eq v1, v2, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method private static filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/AudioDevicePort;

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1e
    return-void
.end method

.method private findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .registers 3

    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$FocusRequestInfo;

    return-object v0
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .registers 6

    const/16 v4, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_29

    const/4 v3, 0x1

    shl-int v0, v3, v1

    and-int v3, p0, v0

    if-eqz v3, :cond_26

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    sget-object v3, Landroid/media/AudioManager;->FLAG_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v0

    and-int/2addr p0, v3

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_29
    if-eqz p0, :cond_37

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_34

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    sget-object v1, Landroid/media/AudioManager;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/media/AudioManager;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v1

    :cond_7
    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Landroid/media/AudioManager;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v1
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    :cond_9
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    return-object v0

    :cond_10
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_f

    new-array v2, v2, [Landroid/media/AudioDeviceInfo;

    return-object v2

    :cond_f
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v1

    :cond_7
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .registers 4

    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v1, :cond_22

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioPlaybackCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .registers 4

    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v1, :cond_22

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioRecordingCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private static infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    new-array v0, v1, [Landroid/media/AudioDeviceInfo;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v6

    if-eqz v6, :cond_27

    add-int/lit8 v5, v4, 0x1

    new-instance v6, Landroid/media/AudioDeviceInfo;

    invoke-direct {v6, v2}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    aput-object v6, v0, v4

    move v4, v5

    goto :goto_27

    :cond_4a
    return-object v0
.end method

.method public static isInputDevice(I)Z
    .registers 3

    const/high16 v1, -0x80000000

    and-int v0, p0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isOutputDevice(I)Z
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private isRestricted(I)Z
    .registers 11

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v6, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    invoke-interface {v0, v8, v4, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v3

    const-string/jumbo v6, "AudioManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getStreamVolume isRestricted mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_42} :catch_46

    if-eqz v3, :cond_45

    const/4 v5, 0x1

    :cond_45
    return v5

    :catch_46
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    return v5

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v5
.end method

.method public static isValidRingerMode(I)Z
    .registers 5

    const/4 v3, 0x0

    if-ltz p0, :cond_6

    const/4 v2, 0x2

    if-le p0, v2, :cond_7

    :cond_6
    return v3

    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_b
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result v2

    return v2

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static listAudioDevicePorts(Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v2, -0x2

    return v2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2, v2}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_13
    return v1
.end method

.method public static listAudioPatches(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static listAudioPorts(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v2, -0x2

    return v2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v2, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_13
    return v1
.end method

.method public static listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private querySoundEffectsEnabled(I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static releaseAudioPatch(Landroid/media/AudioPatch;)I
    .registers 2

    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method private removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .registers 4

    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioPlaybackCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .registers 4

    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager$AudioRecordingCallback;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method static resetAudioPortGeneration()I
    .registers 3

    sget-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v2

    return v0

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .registers 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v1, -0x2

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    new-instance v0, Landroid/media/AudioPortConfig;

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v2

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v3

    invoke-virtual {v6}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    const/16 v1, 0x8

    iput v1, v0, Landroid/media/AudioPortConfig;->mConfigMask:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result v1

    return v1
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    iput-object v1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_d
.end method

.method static updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    sget-object v12, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v12}, Landroid/media/AudioPortEventHandler;->init()V

    sget-object v13, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v13

    :try_start_8
    sget-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_ff

    const/4 v12, 0x1

    new-array v8, v12, [I

    const/4 v12, 0x1

    new-array v10, v12, [I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_20
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-static {v7, v10}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v11

    if-eqz v11, :cond_34

    const-string/jumbo v12, "AudioManager"

    const-string/jumbo v14, "updateAudioPortCache: listAudioPorts failed"

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_e5

    monitor-exit v13

    return v11

    :cond_34
    :try_start_34
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-static {v6, v8}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v11

    if-eqz v11, :cond_48

    const-string/jumbo v12, "AudioManager"

    const-string/jumbo v14, "updateAudioPortCache: listAudioPatches failed"

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_e5

    monitor-exit v13

    return v11

    :cond_48
    const/4 v12, 0x0

    :try_start_49
    aget v12, v8, v12

    const/4 v14, 0x0

    aget v14, v10, v14

    if-ne v12, v14, :cond_20

    const/4 v2, 0x0

    :goto_51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_b4

    const/4 v4, 0x0

    :goto_58
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_84

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aput-object v9, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_84
    const/4 v4, 0x0

    :goto_85
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v4, v12, :cond_b1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aput-object v9, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_b4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b8
    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioPatch;

    const/4 v1, 0x0

    invoke-virtual {v5}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    :goto_cb
    if-ge v12, v15, :cond_d2

    aget-object v9, v14, v12

    if-nez v9, :cond_e8

    const/4 v1, 0x1

    :cond_d2
    invoke-virtual {v5}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v14

    const/4 v12, 0x0

    array-length v15, v14

    :goto_d8
    if-ge v12, v15, :cond_df

    aget-object v9, v14, v12

    if-nez v9, :cond_eb

    const/4 v1, 0x1

    :cond_df
    if-eqz v1, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_e4
    .catchall {:try_start_49 .. :try_end_e4} :catchall_e5

    goto :goto_b8

    :catchall_e5
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_e8
    add-int/lit8 v12, v12, 0x1

    goto :goto_cb

    :cond_eb
    add-int/lit8 v12, v12, 0x1

    goto :goto_d8

    :cond_ee
    :try_start_ee
    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    sput-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    sput-object v7, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    sput-object v6, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    :cond_ff
    if-eqz p0, :cond_10b

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    sget-object v12, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10b
    if-eqz p1, :cond_117

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    sget-object v12, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_117
    if-eqz p2, :cond_123

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    sget-object v12, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_123
    .catchall {:try_start_ee .. :try_end_123} :catchall_e5

    :cond_123
    monitor-exit v13

    const/4 v12, 0x0

    return v12
.end method

.method static updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v3

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_26

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPort;

    invoke-virtual {v4}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPort;

    :cond_26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_52

    const-string/jumbo v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePortConfig port not found for handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioHandle;->id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_52
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->index()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v1

    :cond_74
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_8
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, p2, v5}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public abandonAudioFocusForCall()V
    .registers 7

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    const-string/jumbo v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v5, v3}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustStreamVolume(III)V
    .registers 7

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 6

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    return-void
.end method

.method public adjustVolume(II)V
    .registers 5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public disableSafeMediaVolume()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I
    .registers 8

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Illegal null AudioFocusInfo"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    if-nez p3, :cond_16

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Illegal null AudioPolicy"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_1a
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    move-result v2

    return v2

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public forceVolumeControlStream(I)V
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public generateAudioSessionId()I
    .registers 4

    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_7

    return v0

    :cond_7
    const-string/jumbo v1, "AudioManager"

    const-string/jumbo v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getActivePlaybackConfigurations()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v2

    return-object v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v2

    return-object v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getDevices(I)[Landroid/media/AudioDeviceInfo;
    .registers 3

    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesForStream(I)I
    .registers 3

    packed-switch p1, :pswitch_data_a

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getMode()I
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getOutputLatency(I)I
    .registers 3

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v1

    if-lez v1, :cond_14

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_14
    return-object v2

    :cond_15
    const-string/jumbo v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    if-lez v0, :cond_28

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_28
    return-object v2

    :cond_29
    const-string/jumbo v3, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_46
    const-string/jumbo v3, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_63
    const-string/jumbo v3, "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_80
    return-object v2
.end method

.method public getRingerMode()I
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeExternal()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getRingerModeInternal()I
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerModeInternal()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRouting(I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getStreamMinVolume(I)I
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getStreamVolume(I)I
    .registers 5

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->isRestricted(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    return v2

    :cond_8
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_c
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    move-result v2

    return v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getUiSoundsStreamType()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getVibrateSetting(I)I
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isAudioFocusExclusive()Z
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->getCurrentAudioFocus()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_f

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isBluetoothA2dpOn()Z
    .registers 4

    const/4 v2, 0x1

    const-string/jumbo v0, ""

    const/16 v1, 0x80

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_d

    return v2

    :cond_d
    const-string/jumbo v0, ""

    const/16 v1, 0x100

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_19

    return v2

    :cond_19
    const-string/jumbo v0, ""

    const/16 v1, 0x200

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_25

    return v2

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .registers 3

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMasterMute()Z
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isMasterMute()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isMicrophoneMute()Z
    .registers 2

    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMusicActiveRemotely()Z
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    return v0
.end method

.method public isSilentMode()Z
    .registers 4

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isSpeakerphoneOn()Z
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isStreamMute(I)Z
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isVolumeFixed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/AudioManager;->mUseFixedVolume:Z

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, ""

    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    const-string/jumbo v0, ""

    const/high16 v1, 0x4000000

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    return v2

    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public loadSoundEffects()V
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public playSoundEffect(I)V
    .registers 5

    if-ltz p1, :cond_6

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_1a
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public playSoundEffect(IF)V
    .registers 6

    if-ltz p1, :cond_6

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_b
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public playSoundEffect(II)V
    .registers 6

    if-ltz p1, :cond_6

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->querySoundEffectsEnabled(I)Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_12
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_23

    const/16 v1, 0x18

    if-eq v0, v1, :cond_23

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_23

    iget-wide v2, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_23

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    :cond_23
    return-void
.end method

.method public registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 7

    iget-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v2

    if-eqz p1, :cond_39

    :try_start_5
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    if-nez v1, :cond_23

    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    :cond_23
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    :cond_28
    new-instance v0, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/AudioManager;->broadcastDeviceListChange(Landroid/os/Handler;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3b

    :cond_39
    monitor-exit v2

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Landroid/media/AudioManager$FocusRequestInfo;

    if-nez v1, :cond_1a

    :goto_9
    invoke-direct {v0, p1, v3}, Landroid/media/AudioManager$FocusRequestInfo;-><init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1a
    new-instance v3, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v3, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v3}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_9
.end method

.method public registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .registers 10

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    iget-object v4, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v3, :cond_19

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    :cond_19
    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    new-instance v5, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    new-instance v6, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v6, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v6}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_53

    move-result v1

    if-nez v2, :cond_4b

    if-lez v1, :cond_4b

    :try_start_42
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v3, v5}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4b} :catch_4d
    .catchall {:try_start_42 .. :try_end_4b} :catchall_53

    :cond_4b
    :goto_4b
    monitor-exit v4

    return-void

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_56
    :try_start_56
    const-string/jumbo v3, "AudioManager"

    const-string/jumbo v5, "attempt to call registerAudioPlaybackCallback() on a previouslyregistered callback"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_53

    goto :goto_4b
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 9

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal null AudioPolicy argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    :try_start_f
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v5

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->isFocusPolicy()Z

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v3, -0x1

    return v3

    :cond_27
    invoke-virtual {p1, v1}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2a} :catch_2c

    const/4 v3, 0x0

    return v3

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3

    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    return-void
.end method

.method public registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
    .registers 11

    if-nez p1, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    iget-object v5, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_e
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v4, :cond_19

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    :cond_19
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v4

    if-nez v4, :cond_56

    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    new-instance v6, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    new-instance v7, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v7, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v7}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/media/AudioManager$AudioRecordingCallbackInfo;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v2, :cond_4b

    if-lez v1, :cond_4b

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_53

    move-result-object v3

    :try_start_46
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4d
    .catchall {:try_start_46 .. :try_end_4b} :catchall_53

    :cond_4b
    :goto_4b
    monitor-exit v5

    return-void

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_56
    :try_start_56
    const-string/jumbo v4, "AudioManager"

    const-string/jumbo v6, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_53

    goto :goto_4b
.end method

.method public registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "AudioManager"

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 6

    if-nez p1, :cond_c

    const-string/jumbo v1, "AudioManager"

    const-string/jumbo v2, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    return-void
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    return-void
.end method

.method public registerRemoteController(Landroid/media/RemoteController;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    const/4 v0, 0x1

    return v0
.end method

.method public reloadAudioSettings()V
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I
    .registers 16

    const/4 v8, 0x0

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Illegal null AudioFocusRequest"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->locksFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez p2, :cond_1d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal null audio policy when locking audio focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_24
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_2e} :catch_59

    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v7

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v8

    :cond_54
    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_57} :catch_5d

    move-result v12

    return v12

    :catch_59
    move-exception v11

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_2e

    :catch_5d
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .registers 8

    const-string/jumbo v2, "AudioManager"

    const-string/jumbo v3, "requestAudioFocus()"

    invoke-static {p2, v2, v3}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1b} :catch_1d

    move-result v1

    :goto_1c
    return v1

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "AudioManager"

    const-string/jumbo v3, "Audio focus request denied due to "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 v0, p4, 0x3

    if-eq p4, v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    and-int/lit8 v4, p4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal null AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {p3}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid duration hint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    and-int/lit8 v1, p4, 0x7

    if-eq p4, v1, :cond_45

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    and-int/lit8 v1, p4, 0x1

    if-ne v1, v2, :cond_54

    if-nez p1, :cond_54

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal null focus listener when flagged as accepting delayed focus grant"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_54
    and-int/lit8 v1, p4, 0x2

    if-ne v1, v5, :cond_63

    if-nez p1, :cond_63

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal null focus listener when flagged as pausing instead of ducking"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    and-int/lit8 v1, p4, 0x4

    if-ne v1, v6, :cond_72

    if-nez p5, :cond_72

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal null audio policy when locking audio focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, p3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v1, p1, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v4

    and-int/lit8 v1, p4, 0x1

    if-ne v1, v2, :cond_a2

    move v1, v2

    :goto_84
    invoke-virtual {v4, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v4

    and-int/lit8 v1, p4, 0x2

    if-ne v1, v5, :cond_a4

    move v1, v2

    :goto_8d
    invoke-virtual {v4, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    and-int/lit8 v4, p4, 0x4

    if-ne v4, v6, :cond_a6

    :goto_95
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v1

    return v1

    :cond_a2
    move v1, v3

    goto :goto_84

    :cond_a4
    move v1, v3

    goto :goto_8d

    :cond_a6
    move v2, v3

    goto :goto_95
.end method

.method public requestAudioFocusForCall(II)V
    .registers 14

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_4
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const-string/jumbo v5, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p2

    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 8

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v2, p1, p2, p3}, Landroid/media/IAudioService;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v0

    return v0

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMasterMute(ZI)V
    .registers 7

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMicrophoneMute(Z)V
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setMode(I)V
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public setRingerMode(I)V
    .registers 5

    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_b
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setRingerModeInternal(I)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRouting(III)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 7

    const-string/jumbo v2, "AudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSpeakerphoneOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_23
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setStreamMute(IZ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, "AudioManager"

    const-string/jumbo v2, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_16

    const/16 v0, -0x64

    :goto_e
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_19

    invoke-virtual {p0, v0, p1, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    :goto_15
    return-void

    :cond_16
    const/16 v0, 0x64

    goto :goto_e

    :cond_19
    invoke-virtual {p0, p1, v0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_15
.end method

.method public setStreamSolo(IZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "AudioManager"

    const-string/jumbo v1, "setStreamSolo has been deprecated. Do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStreamVolume(III)V
    .registers 7

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setVibrateSetting(II)V
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWiredHeadsetOn(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public shouldVibrate(I)Z
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startBluetoothSco()V
    .registers 5

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startBluetoothScoVirtualCall()V
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public stopBluetoothSco()V
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unloadSoundEffects()V
    .registers 4

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_4
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .registers 4

    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .registers 8

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    iget-object v4, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_e
    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v3, :cond_1d

    const-string/jumbo v3, "AudioManager"

    const-string/jumbo v5, "attempt to call unregisterAudioPlaybackCallback() on a callback that was never registered"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_44

    monitor-exit v4

    return-void

    :cond_1d
    :try_start_1d
    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_44

    move-result v1

    if-lez v2, :cond_3c

    if-nez v1, :cond_3c

    :try_start_33
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v5, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v3, v5}, Landroid/media/IAudioService;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_3e
    .catchall {:try_start_33 .. :try_end_3c} :catchall_44

    :cond_3c
    :goto_3c
    monitor-exit v4

    return-void

    :catch_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_47
    :try_start_47
    const-string/jumbo v3, "AudioManager"

    const-string/jumbo v5, "attempt to call unregisterAudioPlaybackCallback() on a callback already unregistered or never registered"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    goto :goto_3c
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioPolicy argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    :try_start_f
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .registers 3

    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    return-void
.end method

.method public unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 9

    if-nez p1, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    iget-object v5, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_e
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_3b

    if-nez v4, :cond_14

    monitor-exit v5

    return-void

    :cond_14
    :try_start_14
    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v2, :cond_33

    if-nez v1, :cond_33

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_3b

    move-result-object v3

    :try_start_2e
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_35
    .catchall {:try_start_2e .. :try_end_33} :catchall_3b

    :cond_33
    :goto_33
    monitor-exit v5

    return-void

    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3e
    :try_start_3e
    const-string/jumbo v4, "AudioManager"

    const-string/jumbo v6, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_3b

    goto :goto_33
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .registers 4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    return-void
.end method

.method public unregisterRemoteController(Landroid/media/RemoteController;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    return-void
.end method

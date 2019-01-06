.class public Landroid/media/MediaPlayer;
.super Landroid/media/PlayerBase;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$1;,
        Landroid/media/MediaPlayer$2;,
        Landroid/media/MediaPlayer$DrmInfo;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$MetricsConstants;,
        Landroid/media/MediaPlayer$NoDrmSchemeException;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnDrmConfigHelper;,
        Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmInfoListener;,
        Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;,
        Landroid/media/MediaPlayer$OnDrmPreparedListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
        Landroid/media/MediaPlayer$ProvisioningServerErrorException;,
        Landroid/media/MediaPlayer$ProvisioningThread;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final CALENDAR_URI:Ljava/lang/String; = "content://settings/system/calendar_alert"

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_DRM_INFO:I = 0xd2

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final NOTIFICATION_URI:Ljava/lang/String; = "content://settings/system/notification_sound"

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final PREPARE_DRM_STATUS_PREPARATION_ERROR:I = 0x3

.field public static final PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR:I = 0x1

.field public static final PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR:I = 0x2

.field public static final PREPARE_DRM_STATUS_SUCCESS:I = 0x0

.field public static final SEEK_CLOSEST:I = 0x3

.field public static final SEEK_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_NEXT_SYNC:I = 0x1

.field public static final SEEK_PREVIOUS_SYNC:I = 0x0

.field private static final SMS_SLOT1_URI:Ljava/lang/String; = "content://settings/system/sms_received_sound_slot_1"

.field private static final SMS_SLOT2_URI:Ljava/lang/String; = "content://settings/system/sms_received_sound_slot_2"

.field private static final SMS_URI:Ljava/lang/String; = "content://settings/system/sms_received_sound"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mActiveDrmScheme:Z

.field private mBypassInterruptionPolicy:Z

.field private mDrmConfigAllowed:Z

.field private mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

.field private mDrmInfoResolved:Z

.field private final mDrmLock:Ljava/lang/Object;

.field private mDrmObj:Landroid/media/MediaDrm;

.field private mDrmProvisioningInProgress:Z

.field private mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

.field private mDrmSessionId:[B

.field private mDrmUUID:Ljava/util/UUID;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsDefaultNotificationSound:Z

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mNeedMuteNotification:Z

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

.field private mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

.field private mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareDrmInProgress:Z

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaPlayer;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic -get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic -get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic -get19(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    return-object v0
.end method

.method static synthetic -get20(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic -get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaPlayer;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic -get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic -get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaPlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaPlayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/media/MediaPlayer;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/MediaPlayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, -0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    iput v4, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    new-instance v1, Landroid/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionInternalListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_63

    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    :goto_49
    new-instance v1, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRegisterPlayer()V

    return-void

    :cond_63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_71

    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_49

    :cond_71
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_49
.end method

.method private HandleProvisioninig(Ljava/util/UUID;)I
    .registers 9

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "MediaPlayer"

    const-string/jumbo v4, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    if-nez v1, :cond_22

    const-string/jumbo v3, "MediaPlayer"

    const-string/jumbo v4, "HandleProvisioninig: getProvisionRequest returned null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_22
    const-string/jumbo v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HandleProvisioninig provReq  data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    new-instance v3, Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-direct {v3, p0, v6}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$ProvisioningThread;)V

    invoke-virtual {v3, v1, p1, p0}, Landroid/media/MediaPlayer$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->start()V

    iget-object v3, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    if-eqz v3, :cond_68

    const/4 v2, 0x0

    :goto_67
    return v2

    :cond_68
    :try_start_68
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_76

    :goto_6d
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$ProvisioningThread;->status()I

    move-result v2

    iput-object v6, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    goto :goto_67

    :catch_76
    move-exception v0

    const-string/jumbo v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HandleProvisioninig: Thread.join Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepareDrm([B[B)V
.end method

.method private native _release()V
.end method

.method private native _releaseDrm()V
.end method

.method private native _reset()V
.end method

.method private final native _seekTo(JI)V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v2, "r"

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_40
    .catchall {:try_start_2 .. :try_end_c} :catchall_5a

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    :try_start_f
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_12} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_12} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    if-eqz v3, :cond_3f

    :try_start_14
    throw v3
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_15} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v1

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catch_3d
    move-exception v3

    goto :goto_12

    :cond_3f
    return v2

    :catch_40
    move-exception v2

    :try_start_41
    throw v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_46
    if-eqz v0, :cond_4b

    :try_start_48
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_4b} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_15
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_15

    :cond_4b
    :goto_4b
    if-eqz v3, :cond_59

    :try_start_4d
    throw v3

    :catch_4e
    move-exception v4

    if-nez v3, :cond_53

    move-object v3, v4

    goto :goto_4b

    :cond_53
    if-eq v3, v4, :cond_4b

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_59
    throw v2
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_5a} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_5a} :catch_15
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5a} :catch_15

    :catchall_5a
    move-exception v2

    goto :goto_46
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private cleanDrmObj()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cleanDrmObj: mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    :cond_37
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    :cond_42
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_d

    :goto_7
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 16

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_c

    return-object v11

    :cond_c
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz p2, :cond_30

    move-object v6, p2

    :goto_14
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    return-object v0

    :cond_30
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_38} :catch_45
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_38} :catch_3a

    move-result-object v6

    goto :goto_14

    :catch_3a
    move-exception v10

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-object v11

    :catch_45
    move-exception v9

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_50
    move-exception v8

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    if-lez v0, :cond_d

    :goto_7
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .registers 13

    const/4 v7, 0x0

    :try_start_1
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz p3, :cond_1b

    move-object v0, p3

    :goto_9
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v4, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    invoke-virtual {v4, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p2, :cond_17

    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_17
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    return-object v4

    :cond_1b
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_30
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_9

    :catch_25
    move-exception v3

    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return-object v7

    :catch_30
    move-exception v2

    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :catch_3b
    move-exception v1

    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method private generateAndSetRandomEqualizer()V
    .registers 20

    const/4 v2, 0x5

    :try_start_1
    new-instance v5, Landroid/media/audiofx/Equalizer;

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v5, v15, v14}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v3

    const/4 v14, 0x5

    if-eq v3, v14, :cond_1c

    const-string/jumbo v14, "MediaPlayer"

    const-string/jumbo v15, "EQ config is not default, should not be set!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v14

    const/4 v15, 0x0

    aget-short v10, v14, v15

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v14

    const/4 v15, 0x1

    aget-short v9, v14, v15

    const/4 v14, 0x6

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    filled-new-array/range {v14 .. v18}, [I

    move-result-object v1

    const/4 v0, 0x7

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_3e
    const/4 v14, 0x5

    if-ge v6, v14, :cond_d1

    const/4 v12, 0x0

    packed-switch v6, :pswitch_data_e2

    :goto_45
    :pswitch_45
    if-eqz v12, :cond_49

    if-ge v12, v10, :cond_83

    :cond_49
    :goto_49
    add-int/lit8 v14, v6, 0x1

    int-to-short v6, v14

    goto :goto_3e

    :pswitch_4d
    aget v14, v1, v6

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    aget v15, v1, v6

    sub-int/2addr v14, v15

    int-to-short v12, v14

    move v7, v12

    goto :goto_45

    :pswitch_5d
    const/4 v14, 0x1

    aget v14, v1, v14

    rsub-int/lit8 v15, v7, 0x7

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v14, v1, v6

    add-int/2addr v14, v8

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    aget v15, v1, v6

    sub-int/2addr v14, v15

    int-to-short v12, v14

    goto :goto_45

    :pswitch_74
    aget v14, v1, v6

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    aget v15, v1, v6

    sub-int/2addr v14, v15

    int-to-short v12, v14

    goto :goto_45

    :cond_83
    if-gt v12, v9, :cond_49

    invoke-virtual {v5, v6, v12}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    const-string/jumbo v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setBandLevel:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b4} :catch_b5

    goto :goto_49

    :catch_b5
    move-exception v4

    const-string/jumbo v14, "MediaPlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "get Exception when setEqualizer:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    return-void

    :cond_d1
    const/4 v14, 0x1

    :try_start_d2
    invoke-virtual {v5, v14}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    move-result v13

    if-eqz v13, :cond_d0

    const-string/jumbo v14, "MediaPlayer"

    const-string/jumbo v15, "set equalizer enable fail!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e1} :catch_b5

    return-void

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_5d
        :pswitch_45
        :pswitch_45
        :pswitch_74
    .end packed-switch
.end method

.method private getAudioStreamType()I
    .registers 3

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    :cond_c
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .registers 12

    const/16 v10, 0x8

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 v6, 0x10

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v10, :cond_2a

    rsub-int/lit8 v6, v0, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    add-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v7, v0, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v8, v2, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2a
    return-object v1
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_8
    const-string/jumbo v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_24
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string/jumbo v4, "audio"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    :try_start_b
    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    return-object v3

    :catch_10
    move-exception v0

    const-string/jumbo v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot getNotificationUri(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method private isVideoScalingModeSupported(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .registers 8

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    array-length v3, v2

    if-ge v0, v3, :cond_50

    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_16

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_41

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v1

    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3e

    goto :goto_13

    :catchall_3e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_41
    :try_start_41
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_3e

    goto :goto_13

    :cond_50
    monitor-exit v4

    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 12

    const/4 v6, 0x0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    if-nez v2, :cond_c

    return-void

    :cond_c
    sparse-switch p1, :sswitch_data_78

    :cond_f
    :goto_f
    iget-object v4, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v4, :cond_1e

    iget-object v4, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v4, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1e
    return-void

    :sswitch_1f
    const/4 v4, 0x2

    if-ne p2, v4, :cond_f

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/media/MediaPlayer$7;

    invoke-direct {v5, v2}, Landroid/media/MediaPlayer$7;-><init>(Landroid/media/MediaPlayer;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_f

    :sswitch_33
    const-string/jumbo v4, "MediaPlayer"

    const-string/jumbo v5, "postEventFromNative MEDIA_DRM_INFO"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v4, p4, Landroid/os/Parcel;

    if-eqz v4, :cond_52

    move-object v3, p4

    check-cast v3, Landroid/os/Parcel;

    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    invoke-direct {v0, v3, v6}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer$DrmInfo;)V

    iget-object v4, v2, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4b
    iput-object v0, v2, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4f

    :goto_4d
    monitor-exit v4

    goto :goto_f

    :catchall_4f
    move-exception v5

    monitor-exit v4

    throw v5

    :cond_52
    const-string/jumbo v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :sswitch_6d
    iget-object v4, v2, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_71
    iput-boolean v5, v2, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_74

    goto :goto_4d

    :catchall_74
    move-exception v5

    monitor-exit v4

    throw v5

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_6d
        0xc8 -> :sswitch_1f
        0xd2 -> :sswitch_33
    .end sparse-switch
.end method

.method private prepareDrm_createDrmStep(Ljava/util/UUID;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_createDrmStep: UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    new-instance v1, Landroid/media/MediaDrm;

    invoke-direct {v1, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_createDrmStep: MediaDrm failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private prepareDrm_openSessionStep(Ljava/util/UUID;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/MediaPlayer;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-direct {p0, v1, v2}, Landroid/media/MediaPlayer;->_prepareDrm([B[B)V

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_50} :catch_51

    return-void

    :catch_51
    move-exception v0

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareDrm_openSessionStep: open/crypto failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private resetDrmState()V
    .registers 6

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetDrmState:  mDrmInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mDrmProvisioningThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mPrepareDrmInProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mActiveDrmScheme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_7f

    if-eqz v1, :cond_58

    :try_start_50
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$ProvisioningThread;->join()V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_63
    .catchall {:try_start_50 .. :try_end_55} :catchall_7f

    :goto_55
    const/4 v1, 0x0

    :try_start_56
    iput-object v1, p0, Landroid/media/MediaPlayer;->mDrmProvisioningThread:Landroid/media/MediaPlayer$ProvisioningThread;

    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_7f

    monitor-exit v2

    return-void

    :catch_63
    move-exception v0

    :try_start_64
    const-string/jumbo v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetDrmState: ProvThread.join Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_64 .. :try_end_7e} :catchall_7f

    goto :goto_55

    :catchall_7f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private resumePrepareDrm(Ljava/util/UUID;)Z
    .registers 7

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumePrepareDrm: uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_1b
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :catch_25
    move-exception v0

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HandleProvisioninig: Thread run _prepareDrm resume failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private scanInternalSubtitleTracks()V
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    :cond_f
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_8
    const-string/jumbo v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p2, :cond_21

    const/4 v2, 0x4

    :goto_11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_23

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_21
    const/4 v2, 0x5

    goto :goto_11

    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    const/4 v1, 0x0

    :try_start_6
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_e} :catch_20

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    if-nez v3, :cond_22

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    return-void

    :catch_20
    move-exception v0

    return-void

    :cond_22
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v5, :cond_27

    return-void

    :cond_27
    if-nez p2, :cond_41

    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    if-ne v5, v3, :cond_37

    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5, v6}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    :goto_36
    return-void

    :cond_37
    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "trying to deselect track that was not selected"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_41
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v5

    if-ne v5, v7, :cond_75

    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v4

    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    if-ltz v4, :cond_74

    :try_start_50
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_74

    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_74

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_74

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_7b

    :cond_74
    monitor-exit v6

    :cond_75
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    return-void

    :catchall_7b
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_38
    invoke-direct {p0, p1, v3, v4, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3a

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_30
    if-eqz v3, :cond_15

    invoke-static {p1, p4}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_3a
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "setDataSource failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_2a

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_2a

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "SetSubtitleAnchorThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/media/MediaPlayer$4;

    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_3e

    :try_start_27
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2c
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3e

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :catch_2c
    move-exception v0

    :try_start_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    const-string/jumbo v3, "MediaPlayer"

    const-string/jumbo v4, "failed to join SetSubtitleAnchorThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3e

    goto :goto_2a

    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private startImpl()V
    .registers 3

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mNeedMuteNotification:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setVolume(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mNeedMuteNotification:Z

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "startImpl(), mNeedMuteNotification=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStart()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    return-void
.end method

.method private stayAwake(Z)V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_28

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_15
    :goto_15
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Landroid/media/MediaPlayerInjector;->updateActiveProcessStatus(ZZII)V

    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void

    :cond_28
    if-nez p1, :cond_15

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_15
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    :goto_c
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object v1, p1

    move-object v0, p2

    if-eqz p1, :cond_32

    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    monitor-exit v5

    :goto_d
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "SubtitleReadThread"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Landroid/media/MediaPlayer$5;

    invoke-direct {v4, p0, p1, p2, v3}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2f
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_32
    const-string/jumbo v4, "MediaPlayer"

    const-string/jumbo v5, "addSubtitleSource called with null InputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_f
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v2, 0x0

    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "r"

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_22} :catch_3f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_38
    .catchall {:try_start_18 .. :try_end_22} :catchall_46

    move-result-object v2

    if-nez v2, :cond_2b

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2a
    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_32} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_38
    .catchall {:try_start_2b .. :try_end_32} :catchall_46

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_37
    return-void

    :catch_38
    move-exception v0

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v1

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_3e

    :catchall_46
    move-exception v5

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4c
    throw v5
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_22
    :try_start_22
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_29
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_29} :catch_ab

    move-result-object v5

    new-instance v13, Landroid/media/MediaFormat;

    invoke-direct {v13}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v13, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_47

    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v4, v2, v6}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v13}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    :try_start_72
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-static {v6, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_bc

    monitor-exit v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-wide/from16 v18, p2

    move-wide/from16 v16, p4

    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v3, "TimedTextReadThread"

    const/16 v4, 0x9

    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    new-instance v14, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/media/MediaPlayer$6;

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$6;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v14, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_ab
    move-exception v12

    const-string/jumbo v3, "MediaPlayer"

    invoke-virtual {v12}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_bc
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_20
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_3b
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3

    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method public deselectTrack(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .registers 7

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    packed-switch p2, :pswitch_data_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio playback mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2e
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    :goto_35
    return-object v1

    :pswitch_36
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_35

    :pswitch_43
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_35

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getBufferingParams()Landroid/media/BufferingParams;
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDefaultBufferingParams()Landroid/media/BufferingParams;
.end method

.method public getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z

    if-nez v2, :cond_24

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-nez v2, :cond_24

    const-string/jumbo v1, "The Player has not been prepared yet"

    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v4, "The Player has not been prepared yet"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "The Player has not been prepared yet"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_24
    :try_start_24
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-static {v2}, Landroid/media/MediaPlayer$DrmInfo;->-wrap0(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_21

    move-result-object v0

    :cond_2e
    monitor-exit v3

    return-object v0
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDrmPropertyString: propertyName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1d
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v2, :cond_3c

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3c

    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v4, "getDrmPropertyString NoDrmSchemeException"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v4, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v2, v4}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3c
    :try_start_3c
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_69
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    move-result-object v1

    monitor-exit v3

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDrmPropertyString: propertyName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " --> value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_69
    move-exception v0

    :try_start_6a
    const-string/jumbo v2, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDrmPropertyString Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_39
.end method

.method public native getDuration()I
.end method

.method public getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string/jumbo v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyRequest:  keySetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " initData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " keyType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " optionalParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_49
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v0, :cond_62

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v2, "getKeyRequest NoDrmSchemeException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v2, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v0, v2}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_62
    const/4 v0, 0x3

    if-eq p4, v0, :cond_93

    :try_start_65
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    :goto_67
    if-eqz p5, :cond_95

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_6e
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v8

    const-string/jumbo v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyRequest:   --> request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/media/NotProvisionedException; {:try_start_65 .. :try_end_91} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_91} :catch_97
    .catchall {:try_start_65 .. :try_end_91} :catchall_5f

    monitor-exit v9

    return-object v8

    :cond_93
    move-object v1, p1

    goto :goto_67

    :cond_95
    const/4 v5, 0x0

    goto :goto_6e

    :catch_97
    move-exception v7

    :try_start_98
    const-string/jumbo v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyRequest Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v7

    :catch_b3
    move-exception v6

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v2, "getKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "getKeyRequest: Unexpected provisioning error."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c6
    .catchall {:try_start_98 .. :try_end_c6} :catchall_5f
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_b

    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_b
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_14
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :cond_1e
    return-object v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_36

    const/4 v6, 0x4

    if-eq p1, v6, :cond_a

    const/4 v6, 0x3

    if-ne p1, v6, :cond_36

    :cond_a
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    if-eqz v5, :cond_36

    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    const/4 v0, 0x0

    :goto_16
    :try_start_16
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_35

    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v6, v5, :cond_32

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_7c

    move-result v6

    if-ne v6, p1, :cond_32

    monitor-exit v7

    return v0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_35
    monitor-exit v7

    :cond_36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_3e
    const-string/jumbo v6, "android.media.IMediaPlayer"

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_8e

    const/4 v0, 0x0

    :goto_56
    :try_start_56
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_82

    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_7f

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_8b

    move-result v6

    if-ne v6, v1, :cond_7f

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_8e

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_7c
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_82
    :try_start_82
    monitor-exit v7
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8e

    const/4 v6, -0x1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return v6

    :catchall_8b
    move-exception v6

    :try_start_8c
    monitor-exit v7

    throw v6
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .registers 8

    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v6

    :goto_1c
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1f} :catch_22

    return-object v1

    :cond_20
    const/4 v6, 0x0

    goto :goto_1c

    :catch_22
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    const/4 v1, 0x0

    :goto_10
    array-length v5, v0

    if-ge v1, v5, :cond_45

    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2e

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    aput-object v5, v0, v1

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2e
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    new-instance v5, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v5, v0, v1
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_42

    goto :goto_2b

    :catchall_42
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_45
    monitor-exit v6

    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    if-eqz v0, :cond_24

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .registers 8

    const/4 v5, 0x0

    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v3, :cond_e

    :try_start_5
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_b} :catch_51

    :goto_b
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    :cond_e
    invoke-virtual {p0, v5}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    if-nez p1, :cond_14

    return-void

    :cond_14
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    :try_start_17
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_1d

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_1d

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_4c

    :cond_3b
    monitor-exit v4

    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v3, :cond_4b

    :try_start_40
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_46} :catch_4f

    :goto_46
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    :cond_4b
    return-void

    :catchall_4c
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_4f
    move-exception v0

    goto :goto_46

    :catch_51
    move-exception v0

    goto :goto_b
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->basePause()V

    return-void
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 4

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move p2, v0

    :cond_4
    if-eqz p1, :cond_7

    move p3, v0

    :cond_7
    invoke-direct {p0, p2, p3}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    return-void
.end method

.method playerStart()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method playerStop()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public prepare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmInfoResolved:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public prepareDrm(Ljava/util/UUID;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer$ProvisioningServerErrorException;
        }
    .end annotation

    const/4 v11, 0x0

    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareDrm: uuid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mOnDrmConfigHelper: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2d
    iget-object v8, p0, Landroid/media/MediaPlayer;->mDrmInfo:Landroid/media/MediaPlayer$DrmInfo;

    if-nez v8, :cond_49

    const-string/jumbo v5, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_49
    :try_start_49
    iget-boolean v8, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-eqz v8, :cond_6f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "MediaPlayer"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6f
    iget-boolean v8, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    if-eqz v8, :cond_88

    const-string/jumbo v5, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_88
    iget-boolean v8, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-eqz v8, :cond_a1

    const-string/jumbo v5, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    iget-object v6, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_a9
    .catchall {:try_start_49 .. :try_end_a9} :catchall_46

    :try_start_a9
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_de
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_46

    const/4 v8, 0x1

    :try_start_ad
    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_46

    monitor-exit v9

    iget-object v8, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    if-eqz v8, :cond_b9

    iget-object v8, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    invoke-interface {v8, p0}, Landroid/media/MediaPlayer$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer;)V

    :cond_b9
    iget-object v9, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v8, 0x0

    :try_start_bd
    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_117

    const/4 v4, 0x0

    :try_start_c0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    iput-object p1, p0, Landroid/media/MediaPlayer;->mDrmUUID:Ljava/util/UUID;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_c0 .. :try_end_c8} :catch_169
    .catch Landroid/media/NotProvisionedException; {:try_start_c0 .. :try_end_c8} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c8} :catch_ec
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_109

    const/4 v0, 0x1

    :try_start_c9
    iget-boolean v8, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v8, :cond_d0

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_d0
    if-eqz v4, :cond_d5

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_117

    :cond_d5
    :goto_d5
    monitor-exit v9

    if-eqz v0, :cond_dd

    if-eqz v6, :cond_dd

    invoke-virtual {v6, v11}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    :cond_dd
    return-void

    :catch_de
    move-exception v2

    :try_start_df
    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm(): Exception "

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    throw v2
    :try_end_ec
    .catchall {:try_start_df .. :try_end_ec} :catchall_46

    :catch_ec
    move-exception v2

    :try_start_ed
    const-string/jumbo v8, "MediaPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "prepareDrm: Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    throw v2
    :try_end_109
    .catchall {:try_start_ed .. :try_end_109} :catchall_109

    :catchall_109
    move-exception v8

    :try_start_10a
    iget-boolean v10, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v10, :cond_111

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_111
    if-eqz v4, :cond_116

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    :cond_116
    throw v8
    :try_end_117
    .catchall {:try_start_10a .. :try_end_117} :catchall_117

    :catchall_117
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_11a
    move-exception v1

    :try_start_11b
    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm: NotProvisionedException"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result v7

    if-eqz v7, :cond_15b

    const/4 v4, 0x1

    packed-switch v7, :pswitch_data_180

    const-string/jumbo v5, "prepareDrm: Post-provisioning preparation failed."

    const-string/jumbo v8, "MediaPlayer"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_13d
    const-string/jumbo v5, "prepareDrm: Provisioning was required but failed due to a network error."

    const-string/jumbo v8, "MediaPlayer"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;

    invoke-direct {v8, v5}, Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_14c
    const-string/jumbo v5, "prepareDrm: Provisioning was required but the request was denied by the server."

    const-string/jumbo v8, "MediaPlayer"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/media/MediaPlayer$ProvisioningServerErrorException;

    invoke-direct {v8, v5}, Landroid/media/MediaPlayer$ProvisioningServerErrorException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_15b
    .catchall {:try_start_11b .. :try_end_15b} :catchall_109

    :cond_15b
    :try_start_15b
    iget-boolean v8, p0, Landroid/media/MediaPlayer;->mDrmProvisioningInProgress:Z

    if-nez v8, :cond_162

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mPrepareDrmInProgress:Z

    :cond_162
    if-eqz v4, :cond_d5

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V
    :try_end_167
    .catchall {:try_start_15b .. :try_end_167} :catchall_117

    goto/16 :goto_d5

    :catch_169
    move-exception v3

    :try_start_16a
    const-string/jumbo v5, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v10, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_180
    .catchall {:try_start_16a .. :try_end_180} :catchall_109

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_14c
    .end packed-switch
.end method

.method public provideKeyResponse([B[B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    const-string/jumbo v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "provideKeyResponse: keySetId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_28
    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v4, :cond_41

    const-string/jumbo v4, "MediaPlayer"

    const-string/jumbo v6, "getKeyRequest NoDrmSchemeException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v6, "getKeyRequest: Has to set a DRM scheme first."

    invoke-direct {v4, v6}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_41
    if-nez p1, :cond_7d

    :try_start_43
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    :goto_45
    iget-object v4, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v4, v3, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    const-string/jumbo v4, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provideKeyResponse: keySetId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/media/NotProvisionedException; {:try_start_43 .. :try_end_7b} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_7b} :catch_7f
    .catchall {:try_start_43 .. :try_end_7b} :catchall_3e

    monitor-exit v5

    return-object v2

    :cond_7d
    move-object v3, p1

    goto :goto_45

    :catch_7f
    move-exception v1

    :try_start_80
    const-string/jumbo v4, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "provideKeyResponse Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :catch_9b
    move-exception v0

    const-string/jumbo v4, "MediaPlayer"

    const-string/jumbo v6, "provideKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "provideKeyResponse: Unexpected provisioning error."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_ae
    .catchall {:try_start_80 .. :try_end_ae} :catchall_3e
.end method

.method public release()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseRelease()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_26
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    return-void
.end method

.method public releaseDrm()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v3, "releaseDrm:"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v2, :cond_25

    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v4, "releaseDrm(): No active DRM scheme to release."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v4, "releaseDrm: No active DRM scheme to release."

    invoke-direct {v2, v4}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_25
    :try_start_25
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_releaseDrm()V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->cleanDrmObj()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_2e} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_30
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    :goto_2e
    monitor-exit v3

    return-void

    :catch_30
    move-exception v0

    :try_start_31
    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v4, "releaseDrm: Exception "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :catch_3b
    move-exception v1

    const-string/jumbo v2, "MediaPlayer"

    const-string/jumbo v4, "releaseDrm: Exception "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "releaseDrm: The player is not in a valid state."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_22
.end method

.method public reset()V
    .registers 7

    const/4 v5, 0x0

    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_5b

    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_5b

    goto :goto_d

    :catch_1d
    move-exception v0

    goto :goto_d

    :cond_1f
    :try_start_1f
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_5b

    monitor-exit v4

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3}, Landroid/media/SubtitleController;->reset()V

    :cond_2e
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    iput-object v5, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    :cond_39
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v3, :cond_49

    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_49
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    :try_start_4c
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_5e

    monitor-exit v4

    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDrmState()V

    return-void

    :catchall_5b
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_5e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public restoreKeys([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreKeys: keySetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_36

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v3, "restoreKeys NoDrmSchemeException"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v3, "restoreKeys: Has to set a DRM scheme first."

    invoke-direct {v1, v3}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_36
    :try_start_36
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mDrmSessionId:[B

    invoke-virtual {v1, v3, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3f
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    monitor-exit v2

    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    const-string/jumbo v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreKeys Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_33
.end method

.method public seekTo(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void
.end method

.method public seekTo(JI)V
    .registers 9

    if-ltz p3, :cond_5

    const/4 v1, 0x3

    if-le p3, v1, :cond_1f

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal seek mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-lez v1, :cond_55

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seekTo offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is too large, cap to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, 0x7fffffff

    :cond_51
    :goto_51
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_seekTo(JI)V

    return-void

    :cond_55
    const-wide/32 v2, -0x80000000

    cmp-long v1, p1, v2

    if-gez v1, :cond_51

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seekTo offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is too small, cap to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x80000000

    goto :goto_51
.end method

.method public selectTrack(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_10

    const-string/jumbo v0, "Cannot set AudioAttributes to null"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Cannot set AudioAttributes to null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_22

    move v2, v3

    :cond_22
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 v2, 0x578

    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .registers 4

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setAudioStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/MediaPlayer;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->baseSetAuxEffectSendLevel(F)I

    return-void
.end method

.method public native setBufferingParams(Landroid/media/BufferingParams;)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    if-nez p1, :cond_c

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "context param can not be null."

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    if-nez p2, :cond_17

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "uri param can not be null."

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_17
    if-eqz p4, :cond_2e

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v3

    if-eqz v3, :cond_2e

    instance-of v8, v3, Ljava/net/CookieManager;

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2e

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2e
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/media/MediaPlayer;->mNeedMuteNotification:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "file"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_52
    const-string/jumbo v8, "content"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    const-string/jumbo v8, "settings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    invoke-static {p2}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v7}, Landroid/media/ExtraRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v8, "content://settings/system/notification_sound"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    const-string/jumbo v8, "content://settings/system/calendar_alert"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    const-string/jumbo v8, "content://settings/system/sms_received_sound"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    const-string/jumbo v8, "content://settings/system/sms_received_sound_slot_1"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b5

    const-string/jumbo v8, "content://settings/system/sms_received_sound_slot_2"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    :cond_b5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/media/MediaPlayer;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_eb

    iput-boolean v10, p0, Landroid/media/MediaPlayer;->mNeedMuteNotification:Z

    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v9, "setDataSource() randomUri = null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    :goto_ca
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDataSource() actualUri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    invoke-direct {p0, v5, v2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_fb

    return-void

    :cond_eb
    const-string/jumbo v8, "normal_notification"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ca

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-boolean v10, p0, Landroid/media/MediaPlayer;->mIsDefaultNotificationSound:Z

    goto :goto_ca

    :cond_fb
    invoke-direct {p0, v5, v0}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_102

    return-void

    :cond_102
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :goto_109
    return-void

    :cond_10a
    invoke-direct {p0, v5, p2}, Landroid/media/MediaPlayer;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_111

    return-void

    :cond_111
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_109
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_14
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer$NoDrmSchemeException;
        }
    .end annotation

    const-string/jumbo v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDrmPropertyString: propertyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_28
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mActiveDrmScheme:Z

    if-nez v1, :cond_47

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDrmConfigAllowed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v3, "setDrmPropertyString NoDrmSchemeException"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer$NoDrmSchemeException;

    const-string/jumbo v3, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {v1, v3}, Landroid/media/MediaPlayer$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_47
    :try_start_47
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4e
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    monitor-exit v2

    return-void

    :catch_4e
    move-exception v0

    :try_start_4f
    const-string/jumbo v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDrmPropertyString Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_44
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    invoke-virtual {v1}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_22

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    :cond_22
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :cond_41
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    :cond_60
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDrmConfigHelper:Landroid/media/MediaPlayer$OnDrmConfigHelper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_e

    :try_start_5
    new-instance v0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmInfoHandlerDelegate:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    goto :goto_c

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnDrmPreparedListener(Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V
    .registers 5

    iget-object v1, p0, Landroid/media/MediaPlayer;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_e

    :try_start_5
    new-instance v0, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmPreparedListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Landroid/media/MediaPlayer;->mOnDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_12

    goto :goto_c

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    :cond_10
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_30

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_18

    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_13

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    :cond_18
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .registers 4

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_2f
    const-string/jumbo v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_46

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_46
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVolume(F)V
    .registers 2

    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolume(FF)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->baseSetVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "audio.offload.ignore_setawake"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IGNORING setWakeMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_39
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_3b
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v1, :cond_5f

    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5f
    return-void
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getStartDelayMs()I

    move-result v0

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mIsDefaultNotificationSound:Z

    if-eqz v1, :cond_b

    invoke-direct {p0}, Landroid/media/MediaPlayer;->generateAndSetRandomEqualizer()V

    :cond_b
    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/media/MediaPlayer;->startImpl()V

    :goto_10
    return-void

    :cond_11
    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;I)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer$3;->start()V

    goto :goto_10
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->baseStop()V

    return-void
.end method

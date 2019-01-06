.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$1;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$Builder;,
        Landroid/media/audiopolicy/AudioPolicy$EventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FOCUS_POLICY_DUCKING_DEFAULT:I = 0x0

.field public static final FOCUS_POLICY_DUCKING_IN_APP:I = 0x0

.field public static final FOCUS_POLICY_DUCKING_IN_POLICY:I = 0x1

.field private static final MSG_FOCUS_ABANDON:I = 0x5

.field private static final MSG_FOCUS_GRANT:I = 0x1

.field private static final MSG_FOCUS_LOSS:I = 0x2

.field private static final MSG_FOCUS_REQUEST:I = 0x4

.field private static final MSG_MIX_STATE_UPDATE:I = 0x3

.field private static final MSG_POLICY_STATUS_CHANGE:I = 0x0

.field public static final POLICY_STATUS_REGISTERED:I = 0x2

.field public static final POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPolicy"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

.field private mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private mIsFocusPolicy:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private mRegistrationId:Ljava/lang/String;

.field private mStatus:I

.field private mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;


# direct methods
.method static synthetic -get0(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;Z)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$1;

    invoke-direct {v0, p0}, Landroid/media/audiopolicy/AudioPolicy$1;-><init>(Landroid/media/audiopolicy/AudioPolicy;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    iput-object p2, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    if-nez p3, :cond_1f

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_1f
    if-eqz p3, :cond_2f

    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;-><init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    :goto_28
    iput-object p4, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    iput-object p5, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    iput-boolean p6, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    return-void

    :cond_2f
    iput-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    const-string/jumbo v0, "AudioPolicy"

    const-string/jumbo v1, "No event handler due to looper without a thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZLandroid/media/audiopolicy/AudioPolicy;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;Z)V

    return-void
.end method

.method private static addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_11

    if-eqz p2, :cond_d

    const-string/jumbo v0, "Invalid null AudioMix for AudioTrack creation"

    :goto_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-string/jumbo v0, "Invalid null AudioMix for AudioRecord creation"

    goto :goto_7

    :cond_11
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid mix: not part of this policy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid AudioMix: not defined for loop back"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    if-eqz p2, :cond_48

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid AudioMix: not defined for being a recording source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    if-nez p2, :cond_59

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v1

    if-eqz v1, :cond_59

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid AudioMix: not defined for capturing playback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    return-void
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v1

    :cond_7
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private onPolicyStatusChange()V
    .registers 4

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_9

    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_10

    monitor-exit v2

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onStatusChange()V

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private policyReadyToUse()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const-string/jumbo v0, "AudioPolicy"

    const-string/jumbo v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_73

    monitor-exit v1

    return v3

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_23

    const-string/jumbo v0, "AudioPolicy"

    const-string/jumbo v2, "Cannot use AudioPolicy without context"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_73

    monitor-exit v1

    return v3

    :cond_23
    :try_start_23
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    if-nez v0, :cond_32

    const-string/jumbo v0, "AudioPolicy"

    const-string/jumbo v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_73

    monitor-exit v1

    return v3

    :cond_32
    monitor-exit v1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_76

    const-string/jumbo v0, "AudioPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot use AudioPolicy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", needs MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_73
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_76
    const/4 v0, 0x1

    return v0
.end method

.method private sendMsg(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method private sendMsg(ILjava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method


# virtual methods
.method public cb()Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method public createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "AudioPolicy"

    const-string/jumbo v3, "Cannot create AudioRecord sink for AudioMix"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_12
    invoke-direct {p0, p1, v6}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->inChannelMaskFromOutChannelMask(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    new-instance v0, Landroid/media/AudioRecord;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    const/16 v5, 0xc

    invoke-static {v3, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    invoke-direct {v0, v2, v1, v3, v6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    return-object v0
.end method

.method public createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "AudioPolicy"

    const-string/jumbo v2, "Cannot create AudioTrack source for AudioMix"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_12
    invoke-direct {p0, p1, v4}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method public getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method public getFocusDuckingBehavior()I
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    return v0
.end method

.method public hasFocusListener()Z
    .registers 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFocusPolicy()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    return v0
.end method

.method public setFocusDuckingBehavior(I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p1, :cond_1f

    if-eq p1, v6, :cond_1f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ducking behavior "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1f
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_22
    iget v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_33

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Cannot change ducking behavior for unregistered policy"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_33
    if-ne p1, v6, :cond_42

    :try_start_35
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-nez v3, :cond_42

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Cannot handle ducking without an audio focus listener"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_42
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_30

    move-result-object v1

    :try_start_46
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    if-nez v2, :cond_54

    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iput p1, v3, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_54} :catch_56
    .catchall {:try_start_46 .. :try_end_54} :catchall_30

    :cond_54
    monitor-exit v4

    return v2

    :catch_56
    move-exception v0

    :try_start_57
    const-string/jumbo v3, "AudioPolicy"

    const-string/jumbo v5, "Dead object in setFocusPropertiesForPolicy for behavior"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_30

    const/4 v3, -0x1

    monitor-exit v4

    return v3
.end method

.method public setRegistration(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    :goto_f
    monitor-exit v1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(I)V

    return-void

    :cond_15
    const/4 v0, 0x1

    :try_start_16
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_19

    goto :goto_f

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "android.media.audiopolicy.AudioPolicy:\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioServiceInjector$1;
    }
.end annotation


# static fields
.field public static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "miui.intent.action.VOLUME_BOOST"

.field public static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field public static final EXTRA_BOOST_STATE:Ljava/lang/String; = "volume_boost_state"

.field private static final MUTE_TIME_INTERVAL_INDEX:I = 0x3

.field private static final RANDOM_SOUND_DEFALTE_URI:Ljava/lang/String; = "file:///system/media/audio/ui/notice_audition.ogg"

.field private static final RANDOM_SOUND_NUM_INDEX:I = 0x0

.field private static RANDOM_SOUND_PREFIX:Ljava/lang/String; = null

.field private static SEQUENCE_SOUND_PREFIX:Ljava/lang/String; = null

.field private static final SEQ_SOUND_NUM_INDEX:I = 0x1

.field private static final SEQ_TIME_INTERVAL_INDEX:I = 0x2

.field private static final SOUND_SUFFIX:Ljava/lang/String; = ".ogg"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final availableDevice:I = 0x8c

.field private static final mContentResolverParameters:[Ljava/lang/String;

.field private static final mContentResolverTypes:[Ljava/lang/String;

.field private static mHasPlayedNormalNotification:Z

.field private static mLastNotificationTimeMs:J

.field private static mNotificationRandomSound:Z

.field public static mOriginalIndexWhenSetStreamVolume:I

.field private static mRandomSound:[Z

.field private static mSeqIndex:I

.field private static mTimeAndSoundNumParameters:[I

.field private static mTypes:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "file:///system/media/audio/ui/notification_beep_sound_"

    sput-object v0, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    const-string/jumbo v0, "file:///system/media/audio/ui/notification_beep_soundseq_"

    sput-object v0, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "notification_sound"

    aput-object v1, v0, v2

    const-string/jumbo v1, "sms_received_sound"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sms_received_sound_slot_1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sms_received_sound_slot_2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "calendar_alert"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "random_note_mode_random_sound_number"

    aput-object v1, v0, v2

    const-string/jumbo v1, "random_note_mode_sequence_sound_number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "random_note_mode_sequence_time_interval_ms"

    aput-object v1, v0, v4

    const-string/jumbo v1, "random_note_mode_mute_time_interval_ms"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sput v2, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sput-boolean v2, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    sput-boolean v3, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_6c

    sput-object v0, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    const/16 v0, 0xa

    const/16 v1, 0x3e8

    const/16 v2, 0x2710

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    new-instance v0, Landroid/media/AudioServiceInjector$1;

    invoke-direct {v0}, Landroid/media/AudioServiceInjector$1;-><init>()V

    sput-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    return-void

    nop

    :array_6c
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    if-eqz v0, :cond_9

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/16 v1, 0xa

    aput v1, p0, v0

    goto :goto_9

    :cond_11
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_d

    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    const/16 v1, 0x64

    if-ge v0, v1, :cond_c

    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method public static adjustMaxStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    if-eqz v0, :cond_9

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/16 v1, 0xf

    aput v1, p0, v0

    goto :goto_9

    :cond_11
    return-void
.end method

.method public static adjustMinStreamVolume([I)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    aput v1, p0, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .registers 5

    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    const/4 v1, 0x3

    if-ne v1, p0, :cond_f

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0xa

    :cond_f
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .registers 5

    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    const/4 v1, 0x3

    if-ne p0, v1, :cond_14

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .registers 5

    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream([Ljava/lang/Object;Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public static getActiveStreamType(ZIIIZ)I
    .registers 11

    const/high16 v1, -0x80000000

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_fe

    :cond_9
    if-eqz p0, :cond_8b

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v5, :cond_7f

    if-eqz p4, :cond_1c

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x6

    return v0

    :pswitch_1e
    if-eqz p0, :cond_29

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v5, :cond_28

    const/4 v0, 0x6

    return v0

    :cond_28
    return v4

    :cond_29
    if-ne p2, v1, :cond_5b

    invoke-static {v2, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p4, :cond_3c

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return v2

    :cond_3d
    invoke-static {v3, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz p4, :cond_4e

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v3

    :cond_4f
    if-eqz p4, :cond_5a

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return v5

    :cond_5b
    invoke-static {v3, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6d

    if-eqz p4, :cond_6c

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return v3

    :cond_6d
    invoke-static {v2, p3}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p4, :cond_7e

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return v2

    :cond_7f
    if-eqz p4, :cond_8a

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    return v4

    :cond_8b
    invoke-static {v3, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_9d

    if-eqz p4, :cond_9c

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return v3

    :cond_9d
    invoke-static {v2, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_af

    if-eqz p4, :cond_ae

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    return v2

    :cond_af
    if-ne p2, v1, :cond_e1

    invoke-static {v3, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_c3

    if-eqz p4, :cond_c2

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    return v3

    :cond_c3
    invoke-static {v2, p3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_d5

    if-eqz p4, :cond_d4

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    return v2

    :cond_d5
    if-eqz p4, :cond_e0

    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    return v5

    :cond_e1
    if-eqz p4, :cond_fd

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    return p2

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public static getDefaultVolStreamNoPlayback(I)I
    .registers 2

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    const/4 v0, 0x3

    return v0
.end method

.method private static getIndexForType(Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIndexForType() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/AudioServiceInjector;->mTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getNotificationUri()Ljava/lang/String;
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    sget-boolean v8, Landroid/media/AudioServiceInjector;->mNotificationRandomSound:Z

    if-nez v8, :cond_49

    const/4 v1, 0x1

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_20

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_2c

    :cond_20
    const/4 v1, 0x0

    const/4 v8, 0x0

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    :cond_24
    :goto_24
    if-nez v1, :cond_2b

    const-string/jumbo v2, "normal_notification"

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_2b
    :goto_2b
    return-object v2

    :cond_2c
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_43

    sget-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v8, :cond_24

    const/4 v8, 0x1

    sput-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    const/4 v1, 0x0

    goto :goto_24

    :cond_43
    sget-boolean v8, Landroid/media/AudioServiceInjector;->mHasPlayedNormalNotification:Z

    if-nez v8, :cond_24

    const/4 v1, 0x0

    goto :goto_24

    :cond_49
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_61

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_91

    :cond_61
    const/4 v3, 0x1

    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_65
    :goto_65
    if-eqz v3, :cond_b6

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_2b

    :cond_91
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_b0

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_65

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v4, 0x1

    goto :goto_65

    :cond_b0
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_65

    const/4 v3, 0x1

    goto :goto_65

    :cond_b6
    if-eqz v4, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto/16 :goto_2b
.end method

.method public static getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/media/AudioServiceInjector;->getIndexForType(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioServiceInjector;->playRandomSound(I)Z

    move-result v8

    if-nez v8, :cond_57

    const/4 v1, 0x1

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_26

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_32

    :cond_26
    const/4 v1, 0x0

    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_2a
    :goto_2a
    if-nez v1, :cond_31

    const-string/jumbo v2, "normal_notification"

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    :cond_31
    :goto_31
    return-object v2

    :cond_32
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_51

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_2a

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v1, 0x0

    goto :goto_2a

    :cond_51
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_2a

    const/4 v1, 0x0

    goto :goto_2a

    :cond_57
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6f

    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_9f

    :cond_6f
    const/4 v3, 0x1

    const/4 v8, 0x0

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_73
    :goto_73
    if-eqz v3, :cond_c4

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/media/AudioServiceInjector;->RANDOM_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto :goto_31

    :cond_9f
    sget-wide v8, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    sub-long v8, v6, v8

    sget-object v10, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_be

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    sget-object v9, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_73

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    const/4 v4, 0x1

    goto :goto_73

    :cond_be
    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    if-nez v8, :cond_73

    const/4 v3, 0x1

    goto :goto_73

    :cond_c4
    if-eqz v4, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/media/AudioServiceInjector;->SEQUENCE_SOUND_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ".ogg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-wide v6, Landroid/media/AudioServiceInjector;->mLastNotificationTimeMs:J

    goto/16 :goto_31
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .registers 8

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v1, :cond_7

    return p0

    :cond_7
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_23

    or-int/lit8 p0, p0, 0x26

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mute_music_at_silent"

    const/4 v4, -0x3

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    and-int/lit8 p0, p0, -0x9

    if-ne v0, v5, :cond_34

    const/16 v1, 0x8

    :goto_22
    or-int/2addr p0, v1

    :cond_23
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_33

    const/16 p0, 0x100

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_36

    :goto_31
    or-int/lit16 p0, v2, 0x100

    :cond_33
    return p0

    :cond_34
    move v1, v2

    goto :goto_22

    :cond_36
    const/4 v2, 0x2

    goto :goto_31
.end method

.method public static handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler;->handleAudioStatusChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleModeChanged(Landroid/content/Context;II)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "usage"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Landroid/media/AudioServiceInjector;->handleAudioStatusChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V
    .registers 5

    invoke-static {p0}, Landroid/media/AudioStatusHandler;->getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->handleSetForceUse(IILjava/lang/String;)V

    return-void
.end method

.method public static handleSpeakerChanged(Landroid/content/Context;IZ)V
    .registers 6

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "None thiing for handleSpeakerChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static handleZenModeChangedForMusic(Ljava/lang/Object;Landroid/content/Context;IIII[I)V
    .registers 10

    const/4 v1, 0x1

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_7

    if-ne p3, p2, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_7

    if-ne p3, v1, :cond_39

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    :cond_13
    :goto_13
    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "on change zenmode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    if-ne p2, v1, :cond_13

    invoke-static {p0, p1, p4, p5, p6}, Landroid/media/AudioServiceInjector;->restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V

    goto :goto_13
.end method

.method public static handleZenModeVolumeChanged(Landroid/content/Context;III)V
    .registers 11

    sget-boolean v4, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    if-eq p1, v4, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v2, "volume_music_before_mute"

    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    return-void

    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int/lit8 v5, p3, 0x5

    div-int/lit8 v5, v5, 0xa

    const/4 v6, -0x2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public static isActiveForReal(ZI)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_8

    return p0

    :cond_8
    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    :cond_e
    invoke-static {p1, v1}, Landroid/media/AudioServiceInjector;->wasStreamActiveRecently(II)Z

    move-result v0

    return v0

    :cond_13
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-nez v1, :cond_10

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .registers 3

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isXOptMode()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static needEnableVoiceVolumeBoost(IZIIZ)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p3, :cond_b

    :cond_a
    return v4

    :cond_b
    if-ne p2, v3, :cond_a

    const-string/jumbo v0, "manual"

    const-string/jumbo v1, "ro.vendor.audio.voice.volume.boost"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isMaxVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " streamTypeAlias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " boostEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v3, :cond_6e

    if-eqz p1, :cond_6e

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    return v3

    :cond_6e
    const/4 v0, -0x1

    if-ne p0, v0, :cond_74

    if-eqz p4, :cond_74

    return v3

    :cond_74
    return v4
.end method

.method private static onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 23

    :try_start_0
    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v7

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x0

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_8c

    if-eqz v2, :cond_35

    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v13, v15

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    :cond_35
    :goto_35
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v12, v0, :cond_da

    if-eqz v7, :cond_da

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_da

    move/from16 v9, p4

    if-eqz v8, :cond_7d

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_ad

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const-string/jumbo v13, "AudioService"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    :goto_7d
    add-int/lit8 v12, p4, 0x5

    div-int/lit8 v10, v12, 0xa

    sget v12, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I

    sub-int/2addr v12, v10

    mul-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p6

    invoke-static {v0, v12}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    if-eqz v2, :cond_35

    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_35

    :cond_ad
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_d4} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_d4} :catch_139
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d4} :catch_168
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d4} :catch_16e

    goto :goto_7d

    :catch_d5
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_8b

    :cond_da
    if-eqz v8, :cond_8b

    const/4 v12, 0x1

    :try_start_dd
    invoke-virtual {v8, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_13f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Uid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x4

    aput-object v11, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_137
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_dd .. :try_end_137} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_dd .. :try_end_137} :catch_139
    .catch Ljava/lang/IllegalAccessException; {:try_start_dd .. :try_end_137} :catch_168
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_dd .. :try_end_137} :catch_16e

    goto/16 :goto_8b

    :catch_139
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_8b

    :cond_13f
    const/4 v12, 0x4

    :try_start_140
    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_166
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_140 .. :try_end_166} :catch_d5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_140 .. :try_end_166} :catch_139
    .catch Ljava/lang/IllegalAccessException; {:try_start_140 .. :try_end_166} :catch_168
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_140 .. :try_end_166} :catch_16e

    goto/16 :goto_8b

    :catch_168
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_8b

    :catch_16e
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_8b
.end method

.method private static playRandomSound(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v0, v0, p0

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static restoreAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 16

    const/4 v10, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v5, 0x7ffffff

    const/4 v2, 0x0

    :goto_9
    if-eqz v5, :cond_64

    const-string/jumbo v3, "volume_music"

    const-string/jumbo v4, "volume_music_before_mute"

    const/4 v8, 0x1

    shl-int v1, v8, v2

    and-int v8, v1, v5

    if-nez v8, :cond_1b

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    not-int v8, v1

    and-int/2addr v5, v8

    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_57

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_57
    const/16 v8, 0xa

    invoke-static {v0, v4, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_18

    invoke-static {v0, v3, v7, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_18

    :cond_64
    invoke-static {p0}, Landroid/media/AudioServiceInjector;->updateMusicStreamVolume(Ljava/lang/Object;)V

    return-void
.end method

.method private static saveAllDevicesMusicVolume(Ljava/lang/Object;Landroid/content/Context;II[I)V
    .registers 19

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const v11, 0x7ffffff

    const/4 v8, 0x0

    :goto_8
    if-eqz v11, :cond_6f

    const-string/jumbo v9, "volume_music"

    const-string/jumbo v10, "volume_music_before_mute"

    const/4 v0, 0x1

    shl-int v3, v0, v8

    and-int v0, v3, v11

    if-nez v0, :cond_1a

    :cond_17
    :goto_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_1a
    not-int v0, v3

    and-int/2addr v11, v0

    invoke-static {v3}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_56
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v7, v9, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    const/4 v0, -0x1

    if-eq v13, v0, :cond_17

    const/4 v0, -0x2

    invoke-static {v7, v10, v13, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_17

    :cond_6f
    return-void
.end method

.method public static sendVolumeBoostBroadcast(ZLandroid/content/Context;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.VOLUME_BOOST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "volume_boost_state"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .registers 8

    aget v0, p5, p1

    invoke-static {p6, v0, p3, p2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    invoke-static/range {p0 .. p6}, Landroid/media/AudioServiceInjector;->onSetStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    return-void
.end method

.method public static setVolumeBoost(ZLandroid/content/Context;)Z
    .registers 7

    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice_volume_boost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_47

    const-string/jumbo v2, "false"

    :goto_1a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    xor-int/lit8 v2, p0, 0x1

    invoke-static {v2, p1}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    xor-int/lit8 v2, p0, 0x1

    return v2

    :cond_47
    const-string/jumbo v2, "true"

    goto :goto_1a
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .registers 12

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    if-ne p0, v5, :cond_d

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :cond_d
    return v6

    :cond_e
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v2

    move v3, p3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_21

    if-lez v2, :cond_21

    const/4 v0, 0x1

    :goto_19
    if-ne p1, v4, :cond_23

    if-ne p2, p3, :cond_23

    const/4 v1, 0x1

    :goto_1e
    if-nez v0, :cond_25

    :goto_20
    return v1

    :cond_21
    const/4 v0, 0x0

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    goto :goto_1e

    :cond_25
    move v1, v4

    goto :goto_20
.end method

.method private static updateMusicStreamVolume(Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v6, "reloadMusicVolume"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1b

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1b} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1b} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1b

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1b

    :catch_26
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1b

    :catch_2b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1b
.end method

.method public static updateNotificationMode(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :goto_8
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2b

    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverTypes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "file:///system/media/audio/ui/notice_audition.ogg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aget-boolean v6, v6, v2

    if-eq v4, v6, :cond_28

    sget-object v6, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    aput-boolean v4, v6, v2

    sput v7, Landroid/media/AudioServiceInjector;->mSeqIndex:I

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_2d
    :try_start_2d
    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_69

    sget-object v6, Landroid/media/AudioServiceInjector;->mContentResolverParameters:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v0, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4b

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aget v6, v6, v2

    if-eq v3, v6, :cond_4b

    sget-object v6, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    aput v3, v6, v2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_4e

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :catch_4e
    move-exception v1

    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot get random notification settings provider value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const-string/jumbo v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNotificationMode():\n mRandomSound[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/AudioServiceInjector;->mRandomSound:[Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n mTimeAndSoundNumParameters[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/AudioServiceInjector;->mTimeAndSoundNumParameters:[I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->updateRestriction(Landroid/content/Context;)V

    return-void
.end method

.method private static wasStreamActiveRecently(II)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

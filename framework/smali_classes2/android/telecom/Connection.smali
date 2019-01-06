.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$1;,
        Landroid/telecom/Connection$2;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$VideoProvider;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x2000000

.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_UNUSED_2:I = 0x4000

.field public static final CAPABILITY_UNUSED_3:I = 0x8000

.field public static final CAPABILITY_UNUSED_4:I = 0x10000

.field public static final CAPABILITY_UNUSED_5:I = 0x20000

.field public static final EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_HANDOVER_COMPLETE:Ljava/lang/String; = "android.telecom.event.HANDOVER_COMPLETE"

.field public static final EVENT_HANDOVER_FAILED:Ljava/lang/String; = "android.telecom.event.HANDOVER_FAILED"

.field public static final EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_ASSISTED_DIALING_USED:I = 0x200

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final PROPERTY_IS_RTT:I = 0x100

.field public static final PROPERTY_SELF_MANAGED:I = 0x80

.field public static final PROPERTY_WIFI:I = 0x8

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_PULLING_CALL:I = 0x7

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectElapsedTimeMillis:J

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mSupportedAudioRoutes:I

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Connection;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    iput v3, p0, Landroid/telecom/Connection;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    iput-wide v4, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    iput-wide v4, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    return-void
.end method

.method public static can(II)Z
    .registers 3

    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const-string/jumbo v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_15b

    const-string/jumbo v1, " CAPABILITY_HOLD"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz p1, :cond_160

    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_40

    if-eqz p1, :cond_165

    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_50

    if-eqz p1, :cond_16a

    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz p1, :cond_16f

    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz p1, :cond_174

    const-string/jumbo v1, " CAPABILITY_MUTE"

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_80

    if-eqz p1, :cond_179

    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_90

    if-eqz p1, :cond_17e

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    :goto_8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a0

    if-eqz p1, :cond_183

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    :goto_9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a0
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    if-eqz p1, :cond_188

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    :goto_ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c0

    if-eqz p1, :cond_18d

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    :goto_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c0
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d0

    if-eqz p1, :cond_192

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    :goto_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e0

    if-eqz p1, :cond_197

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    :goto_dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e0
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f0

    if-eqz p1, :cond_19c

    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    :goto_ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f0
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_100

    if-eqz p1, :cond_1a1

    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    :goto_fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_100
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_110

    if-eqz p1, :cond_1a6

    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    :goto_10d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_110
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_120

    if-eqz p1, :cond_1ab

    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    :goto_11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_120
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_130

    if-eqz p1, :cond_1b0

    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    :goto_12d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_130
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_140

    if-eqz p1, :cond_1b5

    const-string/jumbo v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    :goto_13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_140
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_150

    if-eqz p1, :cond_1b9

    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    :goto_14d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_150
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15b
    const-string/jumbo v1, " hld"

    goto/16 :goto_1f

    :cond_160
    const-string/jumbo v1, " sup_hld"

    goto/16 :goto_2e

    :cond_165
    const-string/jumbo v1, " mrg_cnf"

    goto/16 :goto_3d

    :cond_16a
    const-string/jumbo v1, " swp_cnf"

    goto/16 :goto_4d

    :cond_16f
    const-string/jumbo v1, " txt"

    goto/16 :goto_5d

    :cond_174
    const-string/jumbo v1, " mut"

    goto/16 :goto_6d

    :cond_179
    const-string/jumbo v1, " mng_cnf"

    goto/16 :goto_7d

    :cond_17e
    const-string/jumbo v1, " VTlrx"

    goto/16 :goto_8d

    :cond_183
    const-string/jumbo v1, " VTltx"

    goto/16 :goto_9d

    :cond_188
    const-string/jumbo v1, " VTlbi"

    goto/16 :goto_ad

    :cond_18d
    const-string/jumbo v1, " VTrrx"

    goto/16 :goto_bd

    :cond_192
    const-string/jumbo v1, " VTrtx"

    goto/16 :goto_cd

    :cond_197
    const-string/jumbo v1, " VTrbi"

    goto/16 :goto_dd

    :cond_19c
    const-string/jumbo v1, " !v2a"

    goto/16 :goto_ed

    :cond_1a1
    const-string/jumbo v1, " spd_aud"

    goto/16 :goto_fd

    :cond_1a6
    const-string/jumbo v1, " a2v"

    goto/16 :goto_10d

    :cond_1ab
    const-string/jumbo v1, " paus_VT"

    goto/16 :goto_11d

    :cond_1b0
    const-string/jumbo v1, " 1p_cnf"

    goto/16 :goto_12d

    :cond_1b5
    const-string/jumbo v1, " rsp_by_con"

    goto :goto_13d

    :cond_1b9
    const-string/jumbo v1, " pull"

    goto :goto_14d
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final clearConferenceableList()V
    .registers 6

    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1f

    move-object v3, v0

    check-cast v3, Landroid/telecom/Connection;

    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_6

    :cond_1f
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_6

    move-object v2, v0

    check-cast v2, Landroid/telecom/Conference;

    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_6

    :cond_2c
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .registers 3

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .registers 2

    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static propertiesToStringInternal(IZ)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const-string/jumbo v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz p1, :cond_8b

    const-string/jumbo v1, " PROPERTY_SELF_MANAGED"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz p1, :cond_8f

    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz p1, :cond_93

    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_51

    if-eqz p1, :cond_97

    const-string/jumbo v1, " PROPERTY_WIFI"

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz p1, :cond_9b

    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_60
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz p1, :cond_9f

    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_80

    if-eqz p1, :cond_a3

    const-string/jumbo v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8b
    const-string/jumbo v1, " self_mng"

    goto :goto_20

    :cond_8f
    const-string/jumbo v1, " ecbm"

    goto :goto_2f

    :cond_93
    const-string/jumbo v1, " HD"

    goto :goto_3e

    :cond_97
    const-string/jumbo v1, " wifi"

    goto :goto_4e

    :cond_9b
    const-string/jumbo v1, " gen_conf"

    goto :goto_5d

    :cond_9f
    const-string/jumbo v1, " xtrnl"

    goto :goto_6d

    :cond_a3
    const-string/jumbo v1, " priv"

    goto :goto_7d
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setState(I)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_16

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_16

    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_16
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_44

    const-string/jumbo v2, "setState: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mState:I

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_34

    :cond_44
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 6

    packed-switch p0, :pswitch_data_3a

    const-class v0, Landroid/telecom/Connection;

    const-string/jumbo v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "INITIALIZING"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "NEW"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "RINGING"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "DIALING"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "PULLING_CALL"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "HOLDING"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_29
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_6

    const-string/jumbo v3, ""

    return-object v3

    :cond_6
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v3, :cond_b

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_23

    const/16 v3, 0x40

    if-ne v1, v3, :cond_29

    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_23

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addCapability(I)V
    .registers 3

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public can(I)Z
    .registers 3

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .registers 1

    return-void
.end method

.method public final destroy()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectElapsedTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final getConnectTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v2

    return-object v0

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getState()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getSupportedAudioRoutes()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .registers 2

    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_11

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v2

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2

    return-void
.end method

.method public final isRingbackRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method synthetic lambda$-android_telecom_Connection_104063(Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic lambda$-android_telecom_Connection_104672(ILandroid/telecom/Connection$Listener;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method synthetic lambda$-android_telecom_Connection_104986(Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic lambda$-android_telecom_Connection_105297(Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method protected final notifyConferenceMergeFailed()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected notifyConferenceStarted()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected notifyConferenceSupportedChanged(Z)V
    .registers 5

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onAbort()V
    .registers 1

    return-void
.end method

.method public onAnswer()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    return-void
.end method

.method public onAnswer(I)V
    .registers 2

    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2

    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onDisconnect()V
    .registers 1

    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onHold()V
    .registers 1

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .registers 2

    return-void
.end method

.method public onPostDialContinue(Z)V
    .registers 2

    return-void
.end method

.method public onPullExternalCall()V
    .registers 1

    return-void
.end method

.method public onReject()V
    .registers 1

    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSeparate()V
    .registers 1

    return-void
.end method

.method public onShowIncomingCallUi()V
    .registers 1

    return-void
.end method

.method public onSilence()V
    .registers 1

    return-void
.end method

.method public onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onStopDtmfTone()V
    .registers 1

    return-void
.end method

.method public onStopRtt()V
    .registers 1

    return-void
.end method

.method public onUnhold()V
    .registers 1

    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object v4, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_14

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    :cond_14
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_3c

    monitor-exit v4

    iget-object v3, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_27

    :catchall_3c
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3f
    return-void
.end method

.method public removeCapability(I)V
    .registers 4

    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public final removeExtras(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_20

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_b

    :catchall_1d
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_20
    monitor-exit v6

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, p0, v4}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public final resetCdmaConnectionTime()V
    .registers 4

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onCdmaConnectionTimeReset(Landroid/telecom/Connection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final resetConference()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_13
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final sendRemoteRttRequest()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;-><init>(BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttInitiationFailure(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->unsetRttProperty()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$1;

    invoke-direct {v1, p1, p0}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttInitiationSuccess()V
    .registers 4

    invoke-virtual {p0}, Landroid/telecom/Connection;->setRttProperty()V

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;-><init>(BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendRttSessionRemotelyTerminated()V
    .registers 4

    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroid/telecom/-$Lambda$4SVh5muPQdDUeBsBoEG9OejHF-s;-><init>(BLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setActive()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .registers 8

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final setAudioRoute(I)V
    .registers 5

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .registers 8

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1a

    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_29
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2d

    move-object v3, v0

    check-cast v3, Landroid/telecom/Connection;

    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    :cond_27
    :goto_27
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_2d
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_27

    move-object v2, v0

    check-cast v2, Landroid/telecom/Conference;

    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_27

    :cond_3a
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final setConnectElapsedTimeMillis(J)V
    .registers 4

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .registers 4

    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_21

    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method public final setConnectionProperties(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v2, p1, :cond_21

    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_15
.end method

.method public final setDialing()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 7

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    const-string/jumbo v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v3, :cond_38

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_2b

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    :cond_2b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {p0, v2}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    :cond_38
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v3, :cond_43

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    :cond_43
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_53

    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_53
    return-void
.end method

.method public final setInitialized()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setInitializing()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setNextPostDialChar(C)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final setOnHold()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final setPulling()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method public final setRingbackRequested(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_1f

    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final setRinging()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    return-void
.end method

.method setRttProperty()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final setSupportedAudioRoutes(I)V
    .registers 6

    and-int/lit8 v2, p1, 0x9

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v2, p1, :cond_2b

    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    goto :goto_19

    :cond_2b
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 5

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final setVideoState(I)V
    .registers 8

    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    const-string/jumbo v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_1b

    :cond_2d
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 5

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_13

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_12
.end method

.method unsetRttProperty()V
    .registers 2

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v0

    and-int/lit16 v0, v0, -0x101

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    return-void
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

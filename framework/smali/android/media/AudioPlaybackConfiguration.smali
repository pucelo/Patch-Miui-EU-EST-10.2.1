.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$1;,
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final PLAYER_PIID_INVALID:I = -0x1

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_RELEASED:I = 0x0

.field public static final PLAYER_STATE_STARTED:I = 0x2

.field public static final PLAYER_STATE_STOPPED:I = 0x4

.field public static final PLAYER_STATE_UNKNOWN:I = -0x1

.field public static final PLAYER_TYPE_AAUDIO:I = 0xd

.field public static final PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1

.field public static final PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2

.field public static final PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc

.field public static final PLAYER_TYPE_UNKNOWN:I = -0x1

.field public static final PLAYER_UPID_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private mClientPid:I

.field private mClientUid:I

.field private mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private mPlayerAttr:Landroid/media/AudioAttributes;

.field private final mPlayerIId:I

.field private mPlayerState:I

.field private mPlayerType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioPlaybackConfiguration;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-void
.end method

.method public constructor <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_27

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz v0, :cond_27

    new-instance v0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object v1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    :goto_26
    return-void

    :cond_27
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_26
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    if-nez v0, :cond_3a

    move-object v1, v2

    :goto_37
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-void

    :cond_3a
    new-instance v1, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v1, v2, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    goto :goto_37
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iput v3, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    return-object v0
.end method

.method private playerDied()V
    .registers 3

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    :cond_b
    return-void
.end method

.method public static toLogFriendlyPlayerState(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    const-string/jumbo v0, "unknown player state - FIXME"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "released"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "idle"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "started"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "paused"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "stopped"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch -0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method public static toLogFriendlyPlayerType(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_44

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - FIXME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "android.media.AudioTrack"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "android.media.MediaPlayer"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "android.media.SoundPool"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "AAudio"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "hardware source"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "external proxy"

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_1f
        :pswitch_3
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
    .end packed-switch
.end method

.method public static toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_d

    instance-of v3, p1, Landroid/media/AudioPlaybackConfiguration;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    :cond_d
    return v2

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v4, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v3, v4, :cond_2a

    :goto_29
    return v1

    :cond_2a
    move v1, v2

    goto :goto_29

    :cond_2c
    move v1, v2

    goto :goto_29
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientPid()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public getClientUid()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method getIPlayer()Landroid/media/IPlayer;
    .registers 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_8

    monitor-exit p0

    if-nez v0, :cond_b

    :goto_7
    return-object v1

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_b
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    goto :goto_7
.end method

.method public getPlayerInterfaceId()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public getPlayerProxy()Landroid/media/PlayerProxy;
    .registers 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_8

    monitor-exit p0

    if-nez v0, :cond_b

    :goto_7
    return-object v1

    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_b
    new-instance v1, Landroid/media/PlayerProxy;

    invoke-direct {v1, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    goto :goto_7
.end method

.method public getPlayerState()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public getPlayerType()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_a

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    :pswitch_8
    const/4 v0, -0x1

    return v0

    :pswitch_data_a
    .packed-switch 0xd
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .registers 4

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return v0
.end method

.method public handleStateEvent(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v1, p1, :cond_1a

    const/4 v0, 0x1

    :goto_6
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    :cond_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActive()Z
    .registers 2

    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    monitor-enter p0

    :try_start_21
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_2a

    monitor-exit p0

    if-nez v0, :cond_2d

    :goto_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2d
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    goto :goto_26
.end method

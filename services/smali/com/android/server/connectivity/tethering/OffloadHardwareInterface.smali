.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TETHER_OFFLOAD_DISABLED:I = 0x0

.field private static final NO_INTERFACE_NAME:Ljava/lang/String; = ""

.field private static final NO_IPV4_ADDRESS:Ljava/lang/String; = ""

.field private static final NO_IPV4_GATEWAY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final YIELDS:Ljava/lang/String; = " -> "


# instance fields
.field private mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

.field private mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;


# direct methods
.method static synthetic -wrap0(I)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    return-void
.end method

.method private static native configOffload()Z
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_4483(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_5729(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    :goto_6
    iput-wide p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    cmp-long v2, p3, v0

    if-lez v2, :cond_11

    :goto_c
    iput-wide p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    return-void

    :cond_f
    move-wide p1, v0

    goto :goto_6

    :cond_11
    move-wide p3, v0

    goto :goto_c
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_6440(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_7086(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_8155(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_8802(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_9458(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method private static networkProtocolToOsConstant(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_10

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    return v0

    :sswitch_9
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return v0

    :sswitch_c
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x6 -> :sswitch_9
        0x11 -> :sswitch_c
    .end sparse-switch
.end method

.method private record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_21
    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v3, "addDownstreamPrefix(%s, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_16
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_26

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    :catch_26
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6
.end method

.method public getDefaultTetherOffloadDisabled()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .registers 8

    const-string/jumbo v3, "getForwardedStats(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    :try_start_12
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_3a

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-object v2

    :catch_3a
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public initOffloadConfig()Z
    .registers 2

    invoke-static {}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->configOffload()Z

    move-result v0

    return v0
.end method

.method public initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v3, :cond_36

    :try_start_8
    invoke-static {}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1b

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v3, :cond_36

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v4, "tethering IOffloadControl.getService() returned null"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v7

    :catch_1b
    move-exception v0

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tethering offload control not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v7

    :cond_36
    const-string/jumbo v4, "initOffloadControl(%s)"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    if-nez p1, :cond_6b

    const-string/jumbo v3, "null"

    :goto_41
    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-direct {v2, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_59
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v5, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$2;

    invoke-direct {v5, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$2;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_65} :catch_88

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :catch_88
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v7
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadHardwareInterface_4988(ZLjava/lang/String;)V
    .registers 6

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOffload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v3, "removeDownstreamPrefix(%s, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_16
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$3;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_26

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    :catch_26
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6
.end method

.method public setDataLimit(Ljava/lang/String;J)Z
    .registers 12

    const/4 v7, 0x0

    const-string/jumbo v3, "setDataLimit(%s, %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$4;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$4;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, p2, p3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_2a

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    :catch_2a
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v7
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v3, "setLocalPrefixes([%s])"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, ","

    invoke-static {v5, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$5;

    invoke-direct {v4, v2}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$5;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_2a

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v3, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v3

    :catch_2a
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3f

    :goto_4
    if-eqz p2, :cond_43

    :goto_6
    if-eqz p3, :cond_47

    :goto_8
    if-eqz p4, :cond_4b

    :goto_a
    const-string/jumbo v0, "setUpstreamParameters(%s, %s, %s, [%s])"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v9

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, ","

    invoke-static {v2, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    invoke-direct {v8, v4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    :try_start_2b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v5, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$6;

    invoke-direct {v5, v8}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$6;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_51

    invoke-direct {p0, v7, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v0, v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v0

    :cond_3f
    const-string/jumbo p1, ""

    goto :goto_4

    :cond_43
    const-string/jumbo p2, ""

    goto :goto_6

    :cond_47
    const-string/jumbo p3, ""

    goto :goto_8

    :cond_4b
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    :catch_51
    move-exception v6

    invoke-direct {p0, v7, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9
.end method

.method public stopOffloadControl()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v1, :cond_f

    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v2, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$7;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/tethering/-$Lambda$LVMU292iEsklodYmav2xkNUv4MU$7;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_1e

    :cond_f
    :goto_f
    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iput-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "stopOffloadControl()"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :catch_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to stopOffload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_f
.end method

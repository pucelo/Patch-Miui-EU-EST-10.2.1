.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CARRIER_NETWORK_CHANGE:I = 0x10000

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVATION_STATE:I = 0x40000

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_REAL_TIME_INFO:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OEM_HOOK_RAW_EVENT:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_PRECISE_DATA_CONNECTION_STATE:I = 0x1000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100

.field public static final LISTEN_VOICE_ACTIVATION_STATE:I = 0x20000

.field public static final LISTEN_VOLTE_STATE:I = 0x4000

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStateListener"


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field private final mHandler:Landroid/os/Handler;

.field protected mSubId:Ljava/lang/Integer;


# direct methods
.method static synthetic -get0(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iput-object p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0, p2}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "PhoneStateListener"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getSubId()I
    .registers 2

    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .registers 2

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .registers 2

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2

    return-void
.end method

.method public onDataActivationStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onDataActivity(I)V
    .registers 2

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 2

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOemHookRawEvent([B)V
    .registers 2

    return-void
.end method

.method public onOtaspChanged(I)V
    .registers 2

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 2

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .registers 2

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2

    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2

    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .registers 2

    return-void
.end method

.method public onVoiceActivationStateChanged(I)V
    .registers 2

    return-void
.end method

.method public setSubId(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    return-void
.end method

.method public updateSubscription(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    iput-object p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    return-object v0
.end method

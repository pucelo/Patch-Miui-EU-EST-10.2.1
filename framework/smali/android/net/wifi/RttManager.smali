.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$Capabilities;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$ResponderCallback;,
        Landroid/net/wifi/RttManager$ResponderConfig;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$RttClient;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$ServiceHandler;,
        Landroid/net/wifi/RttManager$WifiInformationElement;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_DISABLE_RESPONDER:I = 0x27206

.field public static final CMD_OP_ENABLE_RESPONDER:I = 0x27205

.field public static final CMD_OP_ENALBE_RESPONDER_FAILED:I = 0x27208

.field public static final CMD_OP_ENALBE_RESPONDER_SUCCEEDED:I = 0x27207

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_REG_BINDER:I = 0x27209

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = false

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON:I = -0x6

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mCapabilitiesLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private final mService:Landroid/net/wifi/IRttManager;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V
    .registers 11

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    iput v5, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    const/4 v3, 0x0

    new-array v2, v5, [I

    :try_start_22
    const-string/jumbo v4, "RttManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get the messenger from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v2}, Landroid/net/wifi/IRttManager;->getMessenger(Landroid/os/IBinder;[I)Landroid/os/Messenger;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_48} :catch_54

    move-result-object v3

    if-nez v3, :cond_5a

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "getMessenger() returned null!  This is invalid."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_5a
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v1, Landroid/net/wifi/RttManager$ServiceHandler;

    invoke-direct {v1, p0, p3}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V

    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v5, Landroid/net/wifi/RttManager$RttClient;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/RttManager$RttClient;-><init>(Ljava/lang/String;)V

    const v6, 0x11001

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    aget v5, v2, v5

    const v6, 0x27209

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1a

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    monitor-exit v2

    return v3

    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a

    move-result v1

    monitor-exit v2

    return v1

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_7
    :try_start_7
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    monitor-exit v2

    return v0

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListenerIfAbsent(Ljava/lang/Object;)I
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1e

    move-result v0

    if-eqz v0, :cond_f

    monitor-exit v2

    return v0

    :cond_f
    :try_start_f
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    monitor-exit v2

    return v0

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .registers 5

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_7

    return v0

    :cond_7
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit v2

    return v0

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_4

    const/4 v1, 0x0

    return-object v1

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .registers 8

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "RttManager"

    const-string/jumbo v1, "Can not get RTT capabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RTT chip is not working"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    if-eq v0, v2, :cond_25

    return v3

    :cond_25
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v0, v2, :cond_55

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v0, v1, :cond_55

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal Request Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_55
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v0, v2, :cond_83

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_83

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": One side RTT is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_83
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v0, v1, :cond_b1

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b1

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": two side RTT is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b1
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c7

    :cond_bd
    const-string/jumbo v0, "RttManager"

    const-string/jumbo v1, "No BSSID in params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_c7
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    if-eqz v0, :cond_f3

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal number of burst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    if-lez v0, :cond_fd

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_125

    :cond_fd
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal sample number per burst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_125
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-ltz v0, :cond_12d

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-le v0, v4, :cond_155

    :cond_12d
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal measurement frame retry number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_155
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-ltz v0, :cond_15d

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-le v0, v4, :cond_185

    :cond_15d
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal FTMR frame retry number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_185
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b3

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": LCI is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1b3
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    if-eqz v0, :cond_1e1

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e1

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": LCR is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1e1
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    if-lt v0, v2, :cond_1f1

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_219

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_219

    :cond_1f1
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal burst timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_219
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/2addr v0, v1

    if-nez v0, :cond_24a

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Do not support this preamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_24a
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/2addr v0, v1

    if-nez v0, :cond_27b

    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Do not support this bandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_27b
    return v2
.end method

.method private validateChannel()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public disableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v1, "RttManager"

    const-string/jumbo v2, "responder not enabled yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27206

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public enableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->putListenerIfAbsent(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27205

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 4

    iget-object v2, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v1, :cond_f

    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_13
    .catchall {:try_start_7 .. :try_end_f} :catchall_19

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_19

    monitor-exit v2

    return-object v1

    :catch_13
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    array-length v5, p1

    move v3, v4

    :goto_4
    if-ge v3, v5, :cond_1c

    aget-object v2, p1, v3

    invoke-direct {p0, v2, v0}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    move-result v6

    if-nez v6, :cond_17

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "RTT Request Parameter Illegal"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1c
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    new-instance v1, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    const-string/jumbo v3, "RttManager"

    const-string/jumbo v5, "Send RTT request to RTT Service"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0, p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    move-result v5

    const v6, 0x27200

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .registers 6

    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27201

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

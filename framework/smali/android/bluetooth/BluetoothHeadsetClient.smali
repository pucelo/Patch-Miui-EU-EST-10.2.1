.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClient$1;,
        Landroid/bluetooth/BluetoothHeadsetClient$2;
    }
.end annotation


# static fields
.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final ACTION_RESULT_ERROR:I = 0x1

.field public static final ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final ACTION_RESULT_OK:I = 0x0

.field public static final CALL_ACCEPT_HOLD:I = 0x1

.field public static final CALL_ACCEPT_NONE:I = 0x0

.field public static final CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final CME_INCORRECT_PASSWORD:I = 0x10

.field public static final CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final CME_INVALID_INDEX:I = 0x15

.field public static final CME_MEMORY_FAILURE:I = 0x17

.field public static final CME_MEMORY_FULL:I = 0x14

.field public static final CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final CME_NOT_FOUND:I = 0x16

.field public static final CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final CME_PHONE_FAILURE:I = 0x0

.field public static final CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final CME_SIM_BUSY:I = 0xe

.field public static final CME_SIM_FAILURE:I = 0xd

.field public static final CME_SIM_NOT_INSERTED:I = 0xa

.field public static final CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final CME_SIM_WRONG:I = 0xf

.field public static final CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final DBG:Z = true

.field public static final EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final STATE_AUDIO_CONNECTED:I = 0x2

.field public static final STATE_AUDIO_CONNECTING:I = 0x1

.field public static final STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothHeadsetClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$1;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothHeadsetClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothHeadsetClient$2;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_28

    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2c

    :cond_28
    :goto_28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z

    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "BluetoothHeadsetClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 7

    const-string/jumbo v2, "acceptCall()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method close()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_e

    :try_start_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_23

    :cond_e
    :goto_e
    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_39

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_2e
    .catchall {:try_start_16 .. :try_end_1f} :catchall_39

    :cond_1f
    :goto_1f
    monitor-exit v4

    iput-object v6, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catch_23
    move-exception v0

    const-string/jumbo v3, "BluetoothHeadsetClient"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_2e
    move-exception v2

    :try_start_2f
    const-string/jumbo v3, "BluetoothHeadsetClient"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_1f

    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_45

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_2f
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_45
    if-nez v1, :cond_50

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v4
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v2, "dial()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_17
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-nez v1, :cond_37

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object v4
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_45

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_2f
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_45
    if-nez v1, :cond_50

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v4
.end method

.method public disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_2b
    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth Headset Client Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_46
    const/4 v2, 0x1

    return v2
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 7

    const-string/jumbo v2, "enterPrivateMode()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "explicitCallTransfer()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    return v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_a
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_25
    if-nez v1, :cond_30

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v2, "getCurrentCalls()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_17
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-nez v1, :cond_37

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object v4
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    :try_start_b
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v2

    return-object v2

    :catch_10
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-object v4

    :cond_1c
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "getCurrentCalls()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_17
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-nez v1, :cond_37

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object v4
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_25
    if-nez v1, :cond_30

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "getLastVoiceTagNumber()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "holdCall()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "rejectCall()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 7

    const-string/jumbo v2, "sendDTMF()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_a
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1a
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_57

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p2, :cond_41

    const/16 v2, 0x64

    if-eq p2, v2, :cond_41

    return v4

    :cond_41
    :try_start_41
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_46

    move-result v2

    return v2

    :catch_46
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_57
    if-nez v1, :cond_62

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v4
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "startVoiceRecognition()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    const-string/jumbo v2, "stopVoiceRecognition()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .registers 7

    const-string/jumbo v2, "terminateCall()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_16
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b

    move-result v2

    return v2

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v2, 0x0

    return v2
.end method

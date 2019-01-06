.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "CameraServiceProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/camera/CameraServiceProxy$1;,
        Lcom/android/server/camera/CameraServiceProxy$2;,
        Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    }
.end annotation


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MAX_USAGE_HISTORY:I = 0x64

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraUsageHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/camera/CameraServiceProxy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/camera/CameraServiceProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/camera/CameraServiceProxy;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string/jumbo v2, "CameraService_proxy"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "ro.camera.notify_nfc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_57

    const/4 v0, 0x1

    :cond_57
    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    return-void
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "CAMERA_FACING_BACK"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "CAMERA_FACING_FRONT"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const-string/jumbo v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "CAMERA_STATE_OPEN"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "CAMERA_STATE_IDLE"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "CAMERA_STATE_CLOSED"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    new-instance v0, Landroid/util/ArraySet;

    array-length v3, v2

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_e
    if-ge v3, v4, :cond_1c

    aget v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    return-object v0
.end method

.method private notifyMediaserverLocked(ILjava/util/Set;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v2, :cond_22

    const-string/jumbo v2, "media.camera"

    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_18

    const-string/jumbo v2, "CameraService_proxy"

    const-string/jumbo v3, "Could not notify mediaserver, camera service not available."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_18
    const/4 v2, 0x0

    :try_start_19
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_2d

    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_38

    const/4 v2, 0x1

    return v2

    :catch_2d
    move-exception v1

    const-string/jumbo v2, "CameraService_proxy"

    const-string/jumbo v3, "Could not link to death of native camera service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_38
    move-exception v1

    const-string/jumbo v2, "CameraService_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private notifyNfcService(Z)V
    .registers 9

    const-string/jumbo v4, "nfc"

    invoke-virtual {p0, v4}, Lcom/android/server/camera/CameraServiceProxy;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v4, "CameraService_proxy"

    const-string/jumbo v5, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    invoke-static {v3}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    if-eqz p1, :cond_22

    const/4 v1, 0x0

    :goto_1a
    :try_start_1a
    sget-object v4, Lcom/android/server/camera/CameraServiceProxy;->nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v1, v6}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_25

    :goto_21
    return-void

    :cond_22
    const/16 v1, 0x1000

    goto :goto_1a

    :catch_25
    move-exception v0

    const-string/jumbo v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private notifySwitchWithRetries(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1a

    if-nez v0, :cond_c

    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyMediaserverLocked(ILjava/util/Set;)Z
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    :cond_16
    monitor-exit v1

    if-gtz p1, :cond_1d

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1d
    const-string/jumbo v0, "CameraService_proxy"

    const-string/jumbo v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private switchUserLocked(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    :cond_14
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyMediaserverLocked(ILjava/util/Set;)Z

    :cond_1a
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v5, v4, [I

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    goto :goto_b

    :cond_21
    return-object v5
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;)V
    .registers 14

    iget-object v6, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    packed-switch p2, :pswitch_data_7a

    :cond_c
    :goto_c
    :pswitch_c
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v5, :cond_1b

    if-eq v4, v1, :cond_1b

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_56

    :cond_1b
    monitor-exit v6

    return-void

    :pswitch_1d
    :try_start_1d
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {v2, p3, p4}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v3, :cond_c

    const-string/jumbo v5, "CameraService_proxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " was already marked as active"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_56

    goto :goto_c

    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5

    :pswitch_59
    :try_start_59
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted()V

    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0x64

    if-le v5, v7, :cond_c

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_56

    goto :goto_c

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1d
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-boolean v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v1, :cond_1d

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v2

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dumpUsageEvents()V
    .registers 9

    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    packed-switch v4, :pswitch_data_5a

    goto :goto_e

    :pswitch_21
    const/4 v3, 0x0

    :goto_22
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v6, 0x408

    invoke-direct {v4, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_46

    goto :goto_e

    :catchall_46
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_49
    const/4 v3, 0x1

    goto :goto_22

    :pswitch_4b
    const/4 v3, 0x2

    goto :goto_22

    :cond_4d
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraUsageHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_46

    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_49
        :pswitch_4b
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    const-string/jumbo v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraServiceProxy error, invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    const/4 v0, 0x1

    return v0

    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetries(I)V

    goto :goto_21

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/camera/CameraServiceProxy;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v1, p0}, Lcom/android/server/camera/CameraServiceProxy;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    const/4 v10, 0x0

    :try_start_d
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;I)V

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_50

    move-result-object v8

    :try_start_26
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v9

    if-nez v9, :cond_53

    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string/jumbo v4, "Camera service is currently unavailable"

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_40
    .catch Landroid/os/ServiceSpecificException; {:try_start_26 .. :try_end_40} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_40} :catch_98
    .catchall {:try_start_26 .. :try_end_40} :catchall_50

    :catch_40
    move-exception v13

    :try_start_41
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_ad

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should\'ve gone down the shim path"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v3

    monitor-exit v17

    throw v3

    :cond_53
    :try_start_53
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v9, v8, v0, v3, v1}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_62
    .catch Landroid/os/ServiceSpecificException; {:try_start_53 .. :try_end_62} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_62} :catch_98
    .catchall {:try_start_53 .. :try_end_62} :catchall_50

    move-result-object v10

    :cond_63
    :goto_63
    :try_start_63
    invoke-virtual {v2, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_50

    move-object v11, v2

    monitor-exit v17

    return-object v2

    :cond_69
    :try_start_69
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6c} :catch_7b
    .catch Landroid/os/ServiceSpecificException; {:try_start_69 .. :try_end_6c} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_98
    .catchall {:try_start_69 .. :try_end_6c} :catchall_50

    move-result v15

    :try_start_6d
    const-string/jumbo v3, "CameraManager"

    const-string/jumbo v4, "Using legacy camera HAL."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v15}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-result-object v10

    goto :goto_63

    :catch_7b
    move-exception v14

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_98
    .catch Landroid/os/ServiceSpecificException; {:try_start_6d .. :try_end_98} :catch_40
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_98} :catch_98
    .catchall {:try_start_6d .. :try_end_98} :catchall_50

    :catch_98
    move-exception v12

    :try_start_99
    new-instance v16, Landroid/os/ServiceSpecificException;

    const-string/jumbo v3, "Camera service is currently unavailable"

    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    invoke-static/range {v16 .. v16}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_ad
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_b8

    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c9

    :cond_b8
    invoke-virtual {v2, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_c5

    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_dd

    :cond_c5
    :goto_c5
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_c9
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_b8

    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b8

    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_b8

    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_dd
    iget v3, v13, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_df
    .catchall {:try_start_99 .. :try_end_df} :catchall_50

    const/4 v4, 0x7

    if-ne v3, v4, :cond_63

    goto :goto_c5
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    if-nez v0, :cond_c

    return v3

    :cond_c
    invoke-interface {v0, p1, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result v2

    return v2

    :catch_11
    move-exception v1

    return v3
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_37

    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x3

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_5c

    :pswitch_d
    const/4 v2, 0x3

    :goto_e
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_18
    const/4 v2, 0x2

    goto :goto_e

    :pswitch_1a
    const/4 v2, 0x1

    goto :goto_e

    :pswitch_1c
    const/4 v2, 0x4

    goto :goto_e

    :pswitch_1e
    const/4 v2, 0x5

    goto :goto_e

    :pswitch_20
    const/16 v2, 0x3e8

    goto :goto_e

    :pswitch_23
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_2d
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_37
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_45

    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v4, "Camera service has died unexpectedly"

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_45
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_52
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5a

    move-object v1, p0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_23
        :pswitch_23
        :pswitch_18
        :pswitch_d
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v9, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "No cameras available on device"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_11
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v11, "Camera service is currently unavailable"

    const/4 v12, 0x2

    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_40

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_3d
    .catch Landroid/os/ServiceSpecificException; {:try_start_28 .. :try_end_3d} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3d} :catch_4b
    .catchall {:try_start_28 .. :try_end_3d} :catchall_25

    move-result-object v1

    :goto_3e
    monitor-exit v10

    return-object v1

    :cond_40
    :try_start_40
    invoke-interface {v0, p1}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_49
    .catch Landroid/os/ServiceSpecificException; {:try_start_40 .. :try_end_49} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4b
    .catchall {:try_start_40 .. :try_end_49} :catchall_25

    move-object v1, v2

    goto :goto_3e

    :catch_4b
    move-exception v3

    :try_start_4c
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v11, "Camera service is currently unavailable"

    const/4 v12, 0x2

    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_56
    move-exception v4

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_25

    goto :goto_3e
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-nez p3, :cond_23

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_30

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    :cond_23
    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .registers 6

    if-nez p2, :cond_16

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_16
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .registers 6

    if-nez p2, :cond_16

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_16
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .registers 3

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    return-void
.end method

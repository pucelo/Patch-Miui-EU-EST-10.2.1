.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    :try_start_4
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_b

    move-result v3

    if-eqz v3, :cond_15

    return v1

    :catch_b
    move-exception v0

    const-string/jumbo v3, "DisplayManagerService"

    const-string/jumbo v4, "Unable to query projection service for permissions"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_25

    :goto_24
    return v1

    :cond_25
    move v1, v2

    goto :goto_24
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6

    const/4 v3, 0x1

    if-eqz p1, :cond_14

    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_a

    move-result v1

    if-eqz v1, :cond_14

    return v3

    :catch_a
    move-exception v0

    const-string/jumbo v1, "DisplayManagerService"

    const-string/jumbo v2, "Unable to query projection service for permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    return v3

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    return v1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    if-eqz p2, :cond_24

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    array-length v4, v1

    move v2, v3

    :goto_15
    if-ge v2, v4, :cond_24

    aget-object v0, v1, v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v2, 0x1

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    return v3
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v4, "Permission required to connect to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap7(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 29

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "packageName must match the calling uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    if-nez p1, :cond_22

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appToken must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name must be non-null and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    if-lez p5, :cond_35

    if-gtz p6, :cond_3e

    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    if-lez p7, :cond_35

    if-eqz p8, :cond_51

    invoke-virtual/range {p8 .. p8}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface can\'t be single-buffered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_51
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_64

    or-int/lit8 p9, p9, 0x10

    and-int/lit8 v2, p9, 0x20

    if-eqz v2, :cond_64

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_64
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_6a

    and-int/lit8 p9, p9, -0x11

    :cond_6a
    if-eqz p2, :cond_97

    :try_start_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap2(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_8f

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Invalid media projection"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_85} :catch_85

    :catch_85
    move-exception v14

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "unable to validate media projection or flags"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8f
    :try_start_8f
    move-object/from16 v0, p2

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_96} :catch_85

    move-result p9

    :cond_97
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_b2

    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_b2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_b2

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b2
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_c9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_c9

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-static/range {v2 .. v13}, Lcom/android/server/display/DisplayManagerService;->-wrap6(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_cd .. :try_end_e8} :catchall_ed

    move-result v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_ed
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disconnectWifiDisplay()V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap9(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "DisplayManagerService"

    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_14
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap10(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v4, "Permission required to forget to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap11(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap5(Lcom/android/server/display/DisplayManagerService;I)[I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_12
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap3(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_12
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap0(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap1(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public pauseWifiDisplay()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v4, "Permission required to pause a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap17(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_13
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap19(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->-wrap22(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v4, "Permission required to rename to a wifi display"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap23(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestColorMode(II)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

    const-string/jumbo v4, "Permission required to change the display color mode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap24(Lcom/android/server/display/DisplayManagerService;II)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-wrap26(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeWifiDisplay()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v4, "Permission required to resume a wifi display session"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap27(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 7

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface can\'t be single-buffered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap33(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startWifiDisplayScan()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v5, "Permission required to start wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_17
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap34(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public stopWifiDisplayScan()V
    .registers 7

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string/jumbo v5, "Permission required to stop wifi display scans"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_17
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap35(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_20

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

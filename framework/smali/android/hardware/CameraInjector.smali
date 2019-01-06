.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInjector$CameraExInfo;,
        Landroid/hardware/CameraInjector$CameraOrientationEventListener;,
        Landroid/hardware/CameraInjector$UploadInfoThread;
    }
.end annotation


# static fields
.field private static final ACTION_SAVE_CAMERA_INFO:Ljava/lang/String; = "action_save_camera_info"

.field private static final CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final ENDTTIME:Ljava/lang/String; = "endtime"

.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final FRONTORBACK:Ljava/lang/String; = "frontorback"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final SAVE_CAMERA_INFO_PACKAGE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport"

.field private static final SAVE_CAMERA_INFO_SERVICE_NAME:Ljava/lang/String; = "com.miui.klo.bugreport.service.ReceiveCameraInfoService"

.field private static final STARTTIME:Ljava/lang/String; = "starttime"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "CameraInjector"

.field private static sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/hardware/Camera;",
            "Landroid/hardware/CameraInjector$CameraExInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static createOrientationListener(Landroid/hardware/Camera;)V
    .registers 5

    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {}, Landroid/hardware/CameraInjector;->isInRotateWhiteList()Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "Listener orientation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;-><init>(Landroid/hardware/Camera;Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->enable()V

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    :cond_2c
    return-void
.end method

.method private static destoryOrientationListener(Landroid/hardware/Camera;)V
    .registers 6

    const/4 v4, 0x0

    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_20

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get0(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string/jumbo v2, "CameraInjector"

    const-string/jumbo v3, "release orientation listener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->disable()V

    invoke-static {v0, v4}, Landroid/hardware/CameraInjector$CameraExInfo;->-set0(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    :cond_20
    return-void
.end method

.method private static getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get1(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v2
.end method

.method public static getNumberOfCameras(I)I
    .registers 2

    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    if-le p0, v0, :cond_a

    const/4 p0, 0x2

    :cond_a
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    if-le p0, v0, :cond_14

    const/4 p0, 0x1

    :cond_14
    return p0
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .registers 8

    const-string/jumbo v5, "remove_lower_perview_size_list"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v5, "extra_min_preview_size"

    const v6, 0xe1000

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v0, v5, :cond_24

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_4f

    const-string/jumbo v5, "preview-size-values"

    invoke-static {v1}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_33

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_30

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_38
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .registers 4

    new-instance v0, Landroid/hardware/CameraInjector$CameraExInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(ILandroid/hardware/CameraInjector$CameraExInfo;)V

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public static isExposeAuxCamera()Z
    .registers 1

    const-string/jumbo v0, "camera_aux_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    return v0

    :cond_11
    const-string/jumbo v0, "camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isInRotateWhiteList()Z
    .registers 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "camera_rotate_packagelist"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    return v9

    :cond_c
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "camera.rotate.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_26

    :cond_1f
    const-string/jumbo v5, "vendor.camera.rotate.packagelist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    const-string/jumbo v5, "CameraInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInRotateWhiteList whiteList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " processName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_72

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    return v9

    :cond_72
    return v8
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    array-length v3, v2

    if-lez v3, :cond_27

    array-length v5, v2

    move v3, v4

    :goto_18
    if-ge v3, v5, :cond_27

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v3, 0x1

    return v3

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_27
    return v4
.end method

.method public static limitByCameraId(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private static limitByPackageName(Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_36

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_36

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v0, 0x1

    :cond_36
    return v0
.end method

.method public static limitCamera()Z
    .registers 1

    const-string/jumbo v0, "camera.limit.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static onCameraStateChange(Landroid/hardware/Camera;Z)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-static {}, Lmiui/process/ProcessManager;->boostCameraIfNeed()V

    :cond_5
    const-string/jumbo v0, "chiron"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "lithium"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "polaris"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_26
    if-eqz p1, :cond_2c

    invoke-static {p0}, Landroid/hardware/CameraInjector;->createOrientationListener(Landroid/hardware/Camera;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-static {p0}, Landroid/hardware/CameraInjector;->destoryOrientationListener(Landroid/hardware/Camera;)V

    goto :goto_2b
.end method

.method public static processPreviewFrame(Landroid/hardware/Camera;[B)V
    .registers 4

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->-get3(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p1}, Landroid/hardware/CameraInjector;->reversePreviewFrame([B)V

    :cond_13
    return-void
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->uploadCameraUseInfo(Landroid/hardware/Camera;Z)V

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static reverse([BII)V
    .registers 5

    if-eqz p0, :cond_7

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_8

    :cond_7
    return-void

    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_7

    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    :goto_11
    if-le p2, p1, :cond_20

    aget-byte v0, p0, p2

    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_20
    return-void
.end method

.method private static reversePreviewFrame([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v1, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/hardware/CameraInjector;->reverse([BII)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/hardware/CameraInjector;->reverseUV([BII)V

    return-void
.end method

.method private static reverseUV([BII)V
    .registers 7

    if-eqz p0, :cond_7

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_8

    :cond_7
    return-void

    :cond_8
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-gt p2, v2, :cond_7

    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    :goto_11
    if-le p2, p1, :cond_30

    add-int/lit8 v2, p2, -0x1

    aget-byte v0, p0, v2

    aget-byte v1, p0, p2

    add-int/lit8 v2, p2, -0x1

    aget-byte v3, p0, p1

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v2, p1, 0x1

    aput-byte v1, p0, v2

    add-int/lit8 p2, p2, -0x2

    add-int/lit8 p1, p1, 0x2

    goto :goto_11

    :cond_30
    return-void
.end method

.method private static roundOrientation(II)I
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_10

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_24

    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    return v2

    :cond_10
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_22

    const/4 v0, 0x1

    goto :goto_5

    :cond_22
    const/4 v0, 0x0

    goto :goto_5

    :cond_24
    return p1
.end method

.method public static setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 7

    const/16 v3, 0x2d0

    const-string/jumbo v2, "add_still_beautify_list"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_22

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_2f

    :cond_22
    const-string/jumbo v2, "xiaomi-still-beautify-values"

    const-string/jumbo v3, "extra_still_beautify_value"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string/jumbo v2, "preview-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "picture-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_51
    return-void

    :cond_52
    const-string/jumbo v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParametersEx: Lost camera info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public static setTorchMode(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/hardware/CameraInjector;->limitByCameraId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid cameraId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public static startPreview(Landroid/hardware/Camera;)V
    .registers 7

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "preview-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_18
    return-void

    :cond_19
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPreview: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static takePicture(Landroid/hardware/Camera;)V
    .registers 7

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string/jumbo v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "picture-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_18
    return-void

    :cond_19
    const-string/jumbo v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePicture: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static uploadCameraUseInfo(Landroid/hardware/Camera;Z)V
    .registers 7

    const/4 v4, 0x0

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/hardware/CameraInjector$CameraExInfo;->-set1(Landroid/hardware/CameraInjector$CameraExInfo;J)J

    :cond_14
    new-instance v1, Landroid/hardware/CameraInjector$UploadInfoThread;

    invoke-direct {v1, v0, v4}, Landroid/hardware/CameraInjector$UploadInfoThread;-><init>(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$UploadInfoThread;)V

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$UploadInfoThread;->start()V

    :cond_1c
    return-void
.end method

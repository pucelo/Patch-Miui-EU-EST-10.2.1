.class public Landroid/hardware/camera2/impl/CameraDeviceImplInjector;
.super Ljava/lang/Object;
.source "CameraDeviceImplInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string/jumbo v1, "xiaomi.scaler.availableStreamConfigurations"

    const-class v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    const-class v5, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    return-object v3
.end method

.method private static getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    :cond_53
    return-object v0
.end method

.method private static isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 8

    const/4 v3, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    if-eqz v1, :cond_1a

    array-length v4, v1

    move v2, v3

    :goto_b
    if-ge v2, v4, :cond_1a

    aget v0, v1, v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v5

    if-ne v0, v5, :cond_17

    const/4 v2, 0x1

    return v2

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    return v3
.end method

.method public static isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_29

    :cond_6
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_25

    const-string/jumbo v2, "CameraCharacteristics"

    :goto_19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_25
    const-string/jumbo v2, "InputConfiguration"

    goto :goto_19

    :cond_29
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_52

    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "valid format: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_52
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "invalid format: %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 11

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_2a

    :cond_7
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_26

    const-string/jumbo v2, "CameraCharacteristics"

    :goto_1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_26
    const-string/jumbo v2, "InputConfiguration"

    goto :goto_1a

    :cond_2a
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "valid size: %dx%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5d
    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "invalid size: %dx%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private static isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 9

    const/4 v3, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2c

    array-length v4, v0

    move v2, v3

    :goto_f
    if-ge v2, v4, :cond_2c

    aget-object v1, v0, v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_29

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_29

    const/4 v2, 0x1

    return v2

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2c
    return v3
.end method

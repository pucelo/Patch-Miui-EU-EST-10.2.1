.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

.field private mNewConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mNewDevice:Landroid/hardware/usb/UsbDevice;

.field private mNewEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mNewInterface:Landroid/hardware/usb/UsbInterface;

.field private mNewInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    :cond_3c
    return-void
.end method

.method private addUsbConfiguration(ILjava/lang/String;II)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    new-instance v0, Landroid/hardware/usb/UsbConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUsbEndpoint(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUsbInterface(ILjava/lang/String;IIII)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1e
    new-instance v0, Landroid/hardware/usb/UsbInterface;

    move v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private beginUsbDeviceAdded(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 25

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    const/4 v2, 0x0

    return v2

    :cond_12
    iget-object v13, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_15
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device already on mDevices list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_9a

    const/4 v2, 0x0

    monitor-exit v13

    return v2

    :cond_39
    :try_start_39
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mNewDevice is not null in endUsbDeviceAdded"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_9a

    const/4 v2, 0x0

    monitor-exit v13

    return v2

    :cond_48
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v3, p9, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Landroid/hardware/usb/UsbDevice;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;
    :try_end_97
    .catchall {:try_start_48 .. :try_end_97} :catchall_9a

    monitor-exit v13

    const/4 v2, 0x1

    return v2

    :catchall_9a
    move-exception v2

    monitor-exit v13

    throw v2
.end method

.method private endUsbDeviceAdded()V
    .registers 9

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v4, :cond_19

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v5, v4}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    :cond_19
    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    if-eqz v4, :cond_32

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v5, v4}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    :cond_32
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_35
    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_f3

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v6, v4}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Added device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_e6

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    :goto_85
    new-instance v2, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-direct {v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v0

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v1

    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "---- isHeadset[in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , out: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Landroid/hardware/usb/UsbDevice;ZZ)V

    :goto_d2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;
    :try_end_e4
    .catchall {:try_start_35 .. :try_end_e4} :catchall_f0

    monitor-exit v5

    return-void

    :cond_e6
    :try_start_e6
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v6, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_f0

    goto :goto_85

    :catchall_f0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_f3
    :try_start_f3
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mNewDevice is null in endUsbDeviceAdded"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_f3 .. :try_end_fb} :catchall_f0

    goto :goto_d2
.end method

.method private getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getUsbDeviceConnectionHandler()Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isBlackListed(II)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x3

    if-ne p1, v2, :cond_f

    if-ne p2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    move v0, v1

    goto :goto_c
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v2

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method synthetic -com_android_server_usb_UsbHostManager-mthref-0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 15

    iget-object v11, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    const-string/jumbo v10, "USB Host State:"

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_48

    goto :goto_13

    :catchall_48
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_4b
    :try_start_4b
    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v10, :cond_68

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Default USB Host Connection handler: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_68
    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    if-eqz v10, :cond_f3

    const-string/jumbo v10, "USB Peripheral Descriptors"

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-direct {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>()V

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDevice(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ec

    new-instance v1, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;

    invoke-direct {v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "usb"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v9, v2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v0

    new-instance v10, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    invoke-direct {v10, v0, v8}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v10}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const-string/jumbo v10, "isHeadset[in: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " , out: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "]"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7e

    :cond_ec
    const-string/jumbo v10, "Error Parsing USB Descriptors"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f2
    .catchall {:try_start_4b .. :try_end_f2} :catchall_48

    goto :goto_e4

    :cond_f3
    monitor-exit v11

    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_25

    goto :goto_d

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_28
    monitor-exit v3

    return-void
.end method

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_40

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    invoke-virtual {p2, v0}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_12

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public systemReady()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/android/server/usb/-$Lambda$ATEm4_U2eaRn21cN0eCfdiUt5-k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/usb/-$Lambda$ATEm4_U2eaRn21cN0eCfdiUt5-k;-><init>(BLjava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v3, "UsbService host thread"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v2

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method

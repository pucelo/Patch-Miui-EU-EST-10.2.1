.class public Landroid/companion/BluetoothDeviceFilterUtils;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilterUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothDeviceFilterUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugLogMatchResult(ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V
    .registers 6

    const-string/jumbo v1, "BluetoothDeviceFilterUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_25

    const-string/jumbo v0, " ~ "

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const-string/jumbo v0, " !~ "

    goto :goto_15
.end method

.method private static debugLogMatchResult(ZLandroid/net/wifi/ScanResult;Ljava/lang/Object;)V
    .registers 6

    const-string/jumbo v1, "BluetoothDeviceFilterUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_25

    const-string/jumbo v0, " ~ "

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const-string/jumbo v0, " !~ "

    goto :goto_15
.end method

.method public static getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceDisplayNameInternal(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;
    .registers 4

    instance-of v0, p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    instance-of v0, p0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/net/wifi/ScanResult;

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    return-object v0

    :cond_14
    instance-of v0, p0, Landroid/bluetooth/le/ScanResult;

    if-eqz v0, :cond_23

    check-cast p0, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceMacAddress(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static matches(Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    if-eqz p0, :cond_d

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :goto_3
    return v1

    :cond_4
    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_3

    :cond_17
    const/4 v1, 0x0

    goto :goto_3
.end method

.method static matchesName(Ljava/util/regex/Pattern;Landroid/net/wifi/ScanResult;)Z
    .registers 5

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :goto_3
    return v1

    :cond_4
    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_3

    :cond_15
    const/4 v1, 0x0

    goto :goto_3
.end method

.method static matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    if-eqz p0, :cond_f

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/bluetooth/BluetoothDevice;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-static {v1, v2, p2}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    return v3

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    const/4 v3, 0x1

    return v3
.end method

.method static patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_3
.end method

.method static patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x25

.field static final TRANSACTION_acquireWifiLock:I = 0x20

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x8

.field static final TRANSACTION_addOrUpdatePasspointConfiguration:I = 0x9

.field static final TRANSACTION_deauthenticateNetwork:I = 0xe

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x40

.field static final TRANSACTION_disableNetwork:I = 0x11

.field static final TRANSACTION_disconnect:I = 0x14

.field static final TRANSACTION_enableAggressiveHandover:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x10

.field static final TRANSACTION_enableTdls:I = 0x33

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x34

.field static final TRANSACTION_enableVerboseLogging:I = 0x36

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3e

.field static final TRANSACTION_factoryReset:I = 0x41

.field static final TRANSACTION_getAggressiveHandover:I = 0x39

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectedStations:I = 0x47

.field static final TRANSACTION_getConnectionInfo:I = 0x17

.field static final TRANSACTION_getConnectionStatistics:I = 0x3f

.field static final TRANSACTION_getCountryCode:I = 0x1b

.field static final TRANSACTION_getCurrentNetwork:I = 0x42

.field static final TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x35

.field static final TRANSACTION_getDhcpInfo:I = 0x1e

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3d

.field static final TRANSACTION_getMatchingOsuProviders:I = 0x7

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPasspointConfigurations:I = 0xb

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x13

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x37

.field static final TRANSACTION_getWifiApConfiguration:I = 0x30

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2f

.field static final TRANSACTION_getWifiEnabledState:I = 0x19

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x32

.field static final TRANSACTION_getWifiStaSapConcurrency:I = 0x46

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x23

.field static final TRANSACTION_isDualBandSupported:I = 0x1c

.field static final TRANSACTION_isMulticastEnabled:I = 0x24

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1f

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xd

.field static final TRANSACTION_queryPasspointIcon:I = 0xc

.field static final TRANSACTION_reassociate:I = 0x16

.field static final TRANSACTION_reconnect:I = 0x15

.field static final TRANSACTION_releaseMulticastLock:I = 0x26

.field static final TRANSACTION_releaseWifiLock:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0xf

.field static final TRANSACTION_removePasspointConfiguration:I = 0xa

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_restoreBackupData:I = 0x44

.field static final TRANSACTION_restoreSupplicantBackupData:I = 0x45

.field static final TRANSACTION_retrieveBackupData:I = 0x43

.field static final TRANSACTION_saveConfiguration:I = 0x1d

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_setCountryCode:I = 0x1a

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3c

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApEnabled:I = 0x27

.field static final TRANSACTION_setWifiEnabled:I = 0x18

.field static final TRANSACTION_startLocalOnlyHotspot:I = 0x2b

.field static final TRANSACTION_startScan:I = 0x12

.field static final TRANSACTION_startSoftAp:I = 0x29

.field static final TRANSACTION_startWatchLocalOnlyHotspot:I = 0x2d

.field static final TRANSACTION_stopLocalOnlyHotspot:I = 0x2c

.field static final TRANSACTION_stopSoftAp:I = 0x2a

.field static final TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x2e

.field static final TRANSACTION_updateInterfaceIpState:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x21


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/IWifiManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_a98

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v41

    return v41

    :sswitch_8
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v41, 0x1

    return v41

    :sswitch_15
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_30
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_5a

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_57
    const/16 v41, 0x1

    return v41

    :cond_5a
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :sswitch_64
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_88

    sget-object v41, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ResultReceiver;

    :goto_80
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    const/16 v41, 0x1

    return v41

    :cond_88
    const/4 v13, 0x0

    goto :goto_80

    :sswitch_8a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_b4

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b1
    const/16 v41, 0x1

    return v41

    :cond_b4
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b1

    :sswitch_be
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_e8

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e5
    const/16 v41, 0x1

    return v41

    :cond_e8
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e5

    :sswitch_f2
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_130

    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    :goto_10e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_132

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12d
    const/16 v41, 0x1

    return v41

    :cond_130
    const/4 v5, 0x0

    goto :goto_10e

    :cond_132
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12d

    :sswitch_13c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_16b

    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    :goto_158
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v41, 0x1

    return v41

    :cond_16b
    const/4 v5, 0x0

    goto :goto_158

    :sswitch_16d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_19c

    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_189
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_19c
    const/4 v9, 0x0

    goto :goto_189

    :sswitch_19e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1d1

    sget-object v41, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    :goto_1ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1d3

    const/16 v41, 0x1

    :goto_1c7
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_1d1
    const/4 v10, 0x0

    goto :goto_1ba

    :cond_1d3
    const/16 v41, 0x0

    goto :goto_1c7

    :sswitch_1d6
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->removePasspointConfiguration(Ljava/lang/String;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_1fb

    const/16 v41, 0x1

    :goto_1f1
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_1fb
    const/16 v41, 0x0

    goto :goto_1f1

    :sswitch_1fe
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v41, 0x1

    return v41

    :sswitch_219
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_238
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_259
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_27c

    const/16 v21, 0x1

    :goto_26f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_27c
    const/16 v21, 0x0

    goto :goto_26f

    :sswitch_27f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_2a4

    const/16 v41, 0x1

    :goto_29a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_2a4
    const/16 v41, 0x0

    goto :goto_29a

    :sswitch_2a7
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2d6

    const/16 v21, 0x1

    :goto_2bd
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_2d9

    const/16 v41, 0x1

    :goto_2cc
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_2d6
    const/16 v21, 0x0

    goto :goto_2bd

    :cond_2d9
    const/16 v41, 0x0

    goto :goto_2cc

    :sswitch_2dc
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_301

    const/16 v41, 0x1

    :goto_2f7
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_301
    const/16 v41, 0x0

    goto :goto_2f7

    :sswitch_304
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_345

    sget-object v41, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_347

    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    :goto_332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_345
    const/4 v8, 0x0

    goto :goto_320

    :cond_347
    const/16 v19, 0x0

    goto :goto_332

    :sswitch_34a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v41, 0x1

    return v41

    :sswitch_36b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_37e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_391
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_3a4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_3d4

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3d1
    const/16 v41, 0x1

    return v41

    :cond_3d4
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d1

    :sswitch_3de
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_40d

    const/16 v21, 0x1

    :goto_3f4
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_410

    const/16 v41, 0x1

    :goto_403
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_40d
    const/16 v21, 0x0

    goto :goto_3f4

    :cond_410
    const/16 v41, 0x0

    goto :goto_403

    :sswitch_413
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_42e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_451

    const/16 v21, 0x1

    :goto_444
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_451
    const/16 v21, 0x0

    goto :goto_444

    :sswitch_454
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v41, 0x1

    return v41

    :sswitch_46f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_48e

    const/16 v41, 0x1

    :goto_484
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_48e
    const/16 v41, 0x0

    goto :goto_484

    :sswitch_491
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_4b0

    const/16 v41, 0x1

    :goto_4a6
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_4b0
    const/16 v41, 0x0

    goto :goto_4a6

    :sswitch_4b3
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_4dd

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4da
    const/16 v41, 0x1

    return v41

    :cond_4dd
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4da

    :sswitch_4e7
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_506

    const/16 v41, 0x1

    :goto_4fc
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_506
    const/16 v41, 0x0

    goto :goto_4fc

    :sswitch_509
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_54e

    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/WorkSource;

    :goto_531
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_551

    const/16 v41, 0x1

    :goto_544
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_54e
    const/16 v24, 0x0

    goto :goto_531

    :cond_551
    const/16 v41, 0x0

    goto :goto_544

    :sswitch_554
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_581

    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    :goto_574
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_581
    const/16 v19, 0x0

    goto :goto_574

    :sswitch_584
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_5a9

    const/16 v41, 0x1

    :goto_59f
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_5a9
    const/16 v41, 0x0

    goto :goto_59f

    :sswitch_5ac
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_5bf
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_5de

    const/16 v41, 0x1

    :goto_5d4
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_5de
    const/16 v41, 0x0

    goto :goto_5d4

    :sswitch_5e1
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_600
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_613
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_644

    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_62f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_646

    const/16 v21, 0x1

    :goto_637
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_644
    const/4 v9, 0x0

    goto :goto_62f

    :cond_646
    const/16 v21, 0x0

    goto :goto_637

    :sswitch_649
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateInterfaceIpState(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_668
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_69b

    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_684
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_69d

    const/16 v41, 0x1

    :goto_691
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_69b
    const/4 v9, 0x0

    goto :goto_684

    :cond_69d
    const/16 v41, 0x0

    goto :goto_691

    :sswitch_6a0
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_6bf

    const/16 v41, 0x1

    :goto_6b5
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_6bf
    const/16 v41, 0x0

    goto :goto_6b5

    :sswitch_6c2
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_6fd

    sget-object v41, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    :goto_6de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_6fd
    const/4 v12, 0x0

    goto :goto_6de

    :sswitch_6ff
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopLocalOnlyHotspot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_712
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_73f

    sget-object v41, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    :goto_72e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_73f
    const/4 v12, 0x0

    goto :goto_72e

    :sswitch_741
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWatchLocalOnlyHotspot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_754
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_76f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_799

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_796
    const/16 v41, 0x1

    return v41

    :cond_799
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_796

    :sswitch_7a3
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_7ca

    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_7bf
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_7ca
    const/4 v9, 0x0

    goto :goto_7bf

    :sswitch_7cc
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_7f6

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7f3
    const/16 v41, 0x1

    return v41

    :cond_7f6
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7f3

    :sswitch_800
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_823

    const/16 v21, 0x1

    :goto_816
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_823
    const/16 v21, 0x0

    goto :goto_816

    :sswitch_826
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_849

    const/16 v21, 0x1

    :goto_83c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_849
    const/16 v21, 0x0

    goto :goto_83c

    :sswitch_84c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v41, 0x1

    return v41

    :sswitch_867
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_880
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_89b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_8b4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_8cf
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_8e8
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :sswitch_903
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_92b

    const/4 v15, 0x1

    :goto_914
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_92d

    const/16 v41, 0x1

    :goto_921
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_92b
    const/4 v15, 0x0

    goto :goto_914

    :cond_92d
    const/16 v41, 0x0

    goto :goto_921

    :sswitch_930
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_94f

    const/16 v41, 0x1

    :goto_945
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_94f
    const/16 v41, 0x0

    goto :goto_945

    :sswitch_952
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_96e

    const/4 v15, 0x1

    :goto_963
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :cond_96e
    const/4 v15, 0x0

    goto :goto_963

    :sswitch_970
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_99a

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_997
    const/16 v41, 0x1

    return v41

    :cond_99a
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_997

    :sswitch_9a4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_9bd
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_9d0
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_9fa

    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9f7
    const/16 v41, 0x1

    return v41

    :cond_9fa
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9f7

    :sswitch_a04
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveBackupData()[B

    move-result-object v40

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v41, 0x1

    return v41

    :sswitch_a1f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreBackupData([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_a3a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->restoreSupplicantBackupData([B[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v41, 0x1

    return v41

    :sswitch_a5b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStaSapConcurrency()Z

    move-result v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v39, :cond_a7a

    const/16 v41, 0x1

    :goto_a70
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v41, 0x1

    return v41

    :cond_a7a
    const/16 v41, 0x0

    goto :goto_a70

    :sswitch_a7d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectedStations()Ljava/util/List;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v41, 0x1

    return v41

    :sswitch_data_a98
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_30
        0x3 -> :sswitch_64
        0x4 -> :sswitch_8a
        0x5 -> :sswitch_be
        0x6 -> :sswitch_f2
        0x7 -> :sswitch_13c
        0x8 -> :sswitch_16d
        0x9 -> :sswitch_19e
        0xa -> :sswitch_1d6
        0xb -> :sswitch_1fe
        0xc -> :sswitch_219
        0xd -> :sswitch_238
        0xe -> :sswitch_259
        0xf -> :sswitch_27f
        0x10 -> :sswitch_2a7
        0x11 -> :sswitch_2dc
        0x12 -> :sswitch_304
        0x13 -> :sswitch_34a
        0x14 -> :sswitch_36b
        0x15 -> :sswitch_37e
        0x16 -> :sswitch_391
        0x17 -> :sswitch_3a4
        0x18 -> :sswitch_3de
        0x19 -> :sswitch_413
        0x1a -> :sswitch_42e
        0x1b -> :sswitch_454
        0x1c -> :sswitch_46f
        0x1d -> :sswitch_491
        0x1e -> :sswitch_4b3
        0x1f -> :sswitch_4e7
        0x20 -> :sswitch_509
        0x21 -> :sswitch_554
        0x22 -> :sswitch_584
        0x23 -> :sswitch_5ac
        0x24 -> :sswitch_5bf
        0x25 -> :sswitch_5e1
        0x26 -> :sswitch_600
        0x27 -> :sswitch_613
        0x28 -> :sswitch_649
        0x29 -> :sswitch_668
        0x2a -> :sswitch_6a0
        0x2b -> :sswitch_6c2
        0x2c -> :sswitch_6ff
        0x2d -> :sswitch_712
        0x2e -> :sswitch_741
        0x2f -> :sswitch_754
        0x30 -> :sswitch_76f
        0x31 -> :sswitch_7a3
        0x32 -> :sswitch_7cc
        0x33 -> :sswitch_800
        0x34 -> :sswitch_826
        0x35 -> :sswitch_84c
        0x36 -> :sswitch_867
        0x37 -> :sswitch_880
        0x38 -> :sswitch_89b
        0x39 -> :sswitch_8b4
        0x3a -> :sswitch_8cf
        0x3b -> :sswitch_8e8
        0x3c -> :sswitch_903
        0x3d -> :sswitch_930
        0x3e -> :sswitch_952
        0x3f -> :sswitch_970
        0x40 -> :sswitch_9a4
        0x41 -> :sswitch_9bd
        0x42 -> :sswitch_9d0
        0x43 -> :sswitch_a04
        0x44 -> :sswitch_a1f
        0x45 -> :sswitch_a3a
        0x46 -> :sswitch_a5b
        0x47 -> :sswitch_a7d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

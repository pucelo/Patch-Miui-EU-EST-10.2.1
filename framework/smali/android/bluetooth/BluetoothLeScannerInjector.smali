.class public Landroid/bluetooth/BluetoothLeScannerInjector;
.super Ljava/lang/Object;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLeScannerInjector"

.field private static final sLeScanStatisticsClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanupLeScanStatistics()V
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_9
    return-void
.end method

.method public static isLeScanAllowed()Z
    .registers 5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v0, 0x1

    :try_start_5
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy;->isLeScanAllowed(I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    move-result v0

    :cond_1a
    :goto_1a
    return v0

    :catch_1b
    move-exception v1

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public static startLeScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    new-instance v1, Landroid/bluetooth/BleScanWrapper;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "BleScanWrapper"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "IBinder"

    move-object/from16 v0, p6

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v11

    if-eqz v11, :cond_3e

    invoke-interface {v11}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/miui/whetstone/IPowerKeeperPolicy;->startLeScan(Landroid/os/Bundle;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public static startLeScanStatistics(Landroid/bluetooth/IBluetoothManager;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v5, "startLeScanStatistics()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v5, "startLeScanStatistics: null callback"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_16
    sget-object v5, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v5

    :try_start_19
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_36
    .catchall {:try_start_19 .. :try_end_1c} :catchall_42

    move-result-object v1

    if-nez v1, :cond_21

    monitor-exit v5

    return v7

    :cond_21
    :try_start_21
    new-instance v2, Landroid/bluetooth/BluetoothLeScannerInjector$1;

    invoke-direct {v2, p1}, Landroid/bluetooth/BluetoothLeScannerInjector$1;-><init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    new-instance v3, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    invoke-direct {v3, v1, v2}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->startBleScanStatistics()V

    sget-object v4, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_36
    .catchall {:try_start_21 .. :try_end_33} :catchall_42

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :catch_36
    move-exception v0

    :try_start_37
    const-string/jumbo v4, "BluetoothLeScannerInjector"

    const-string/jumbo v6, ""

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_42

    monitor-exit v5

    return v7

    :catchall_42
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static stopLeScan(ILandroid/os/IBinder;)V
    .registers 13

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    new-instance v0, Landroid/bluetooth/BleScanWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "BleScanWrapper"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "IBinder"

    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v10

    if-eqz v10, :cond_3a

    invoke-interface {v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/miui/whetstone/IPowerKeeperPolicy;->stopLeScan(Landroid/os/Bundle;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method public static stopLeScanStatistics(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 5

    const-string/jumbo v1, "BluetoothLeScannerInjector"

    const-string/jumbo v2, "stopLeScanStatistics()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v2

    :try_start_c
    sget-object v1, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    if-nez v0, :cond_21

    const-string/jumbo v1, "BluetoothLeScannerInjector"

    const-string/jumbo v3, "no ble scan statistics callback found."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_26

    monitor-exit v2

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->stopBleScanStatistics()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    monitor-exit v2

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

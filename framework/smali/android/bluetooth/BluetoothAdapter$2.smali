.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field final synthetic val$serviceUuids:[Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 11

    const/4 v4, 0x1

    if-eq p1, v4, :cond_d

    const-string/jumbo v4, "BluetoothAdapter"

    const-string/jumbo v5, "LE Scan has already started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    if-eqz v4, :cond_48

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$serviceUuids:[Ljava/util/UUID;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_21
    if-ge v4, v6, :cond_30

    aget-object v2, v5, v4

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_30
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_48

    :cond_3e
    const-string/jumbo v4, "BluetoothAdapter"

    const-string/jumbo v5, "uuids does not match"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$2;->val$callback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
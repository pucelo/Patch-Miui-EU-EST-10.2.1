.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
.super Landroid/bluetooth/le/IScannerCallback$Stub;
.source "BluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/BluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanCallbackWrapper"
.end annotation


# static fields
.field private static final REGISTRATION_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mScannerId:I

.field private mSettings:Landroid/bluetooth/le/ScanSettings;

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/os/WorkSource;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/os/WorkSource;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/IScannerCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object p5, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    iput-object p6, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iput-object p7, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method flushPendingBatchResults()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v1, :cond_23

    const-string/jumbo v1, "BluetoothLeScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error state, mLeHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_37

    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->flushPendingBatchResults(I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2c
    .catchall {:try_start_23 .. :try_end_2a} :catchall_37

    :goto_2a
    monitor-exit p0

    return-void

    :catch_2c
    move-exception v0

    :try_start_2d
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v2, "Failed to get pending scan results"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_2a

    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$2;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-gtz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onScanManagerErrorCallback(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-gtz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-gtz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    monitor-exit p0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;-><init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onScannerRegistered(II)V
    .registers 11

    const/4 v6, -0x1

    const-string/jumbo v0, "BluetoothLeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScannerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " scannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mScannerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_a3

    :try_start_36
    invoke-static {}, Landroid/bluetooth/BluetoothLeScannerInjector;->isLeScanAllowed()Z
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_96

    move-result v0

    if-eqz v0, :cond_99

    :try_start_3c
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-ne v0, v6, :cond_63

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v0, p2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_45} :catch_77
    .catchall {:try_start_3c .. :try_end_45} :catchall_96

    :goto_45
    :try_start_45
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-eq v0, v6, :cond_5e

    iget v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Landroid/bluetooth/BluetoothLeScannerInjector;->startLeScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_5e
    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->notifyAll()V
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_96

    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    iput p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    iget-object v4, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_76} :catch_77
    .catchall {:try_start_63 .. :try_end_76} :catchall_96

    goto :goto_45

    :catch_77
    move-exception v7

    :try_start_78
    const-string/jumbo v0, "BluetoothLeScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to start le scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_95
    .catchall {:try_start_78 .. :try_end_95} :catchall_96

    goto :goto_45

    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_99
    :try_start_99
    const-string/jumbo v0, "BluetoothLeScanner"

    const-string/jumbo v1, "start scan is blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_a3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_aa

    const/4 v0, -0x2

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    goto :goto_45

    :cond_aa
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_ad
    .catchall {:try_start_99 .. :try_end_ad} :catchall_96

    goto :goto_45
.end method

.method public startRegistration()V
    .registers 6

    const/4 v2, -0x1

    const/4 v4, -0x2

    monitor-enter p0

    :try_start_3
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-eq v1, v2, :cond_b

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3d

    if-ne v1, v4, :cond_d

    :cond_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, p0, v2}, Landroid/bluetooth/IBluetoothGatt;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->wait(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_19} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_2a
    .catchall {:try_start_d .. :try_end_19} :catchall_3d

    :goto_19
    :try_start_19
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-lez v1, :cond_40

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->-get0(Landroid/bluetooth/le/BluetoothLeScanner;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_3d

    :goto_28
    monitor-exit p0

    return-void

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v2, "application registeration exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3d

    goto :goto_19

    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_40
    :try_start_40
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-nez v1, :cond_47

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    :cond_47
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_3d

    if-ne v1, v4, :cond_4d

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->-wrap0(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_3d

    goto :goto_28
.end method

.method public stopLeScan()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    if-gtz v1, :cond_23

    const-string/jumbo v1, "BluetoothLeScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error state, mLeHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_4a

    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->stopScan(I)V

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterScanner(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_3f
    .catchall {:try_start_23 .. :try_end_31} :catchall_4a

    :goto_31
    :try_start_31
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I

    invoke-virtual {p0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothLeScannerInjector;->stopLeScan(ILandroid/os/IBinder;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->mScannerId:I
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_4a

    monitor-exit p0

    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    const-string/jumbo v1, "BluetoothLeScanner"

    const-string/jumbo v2, "Failed to stop scan and unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_4a

    goto :goto_31

    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

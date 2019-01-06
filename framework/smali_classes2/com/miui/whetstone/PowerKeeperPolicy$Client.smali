.class Lcom/miui/whetstone/PowerKeeperPolicy$Client;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation


# instance fields
.field private mAllowed:Z

.field private mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIBinder:Landroid/os/IBinder;

.field private mScanning:Z

.field private mUid:I

.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I
    .registers 2

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    return v0
.end method

.method public constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V
    .registers 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iput p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return-void
.end method


# virtual methods
.method public clearResource()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public getAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return v0
.end method

.method public getScanning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to link deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public setAllowed(Z)V
    .registers 5

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setAllowed, allowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    return-void
.end method

.method public setScanning(Z)V
    .registers 5

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "PowerKeeperPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setScanning, scanning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void
.end method

.method public startLeScan()V
    .registers 10

    iget-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-eqz v6, :cond_2e

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startLeScan, uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is scanning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "ForceStartLeScan, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    :try_start_4f
    const-string/jumbo v6, "bluetooth_manager"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_9b

    move-result-object v3

    :try_start_60
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BleScanWrapper;->startScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_86
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_9b

    :goto_65
    :try_start_65
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v6

    if-eqz v6, :cond_82

    const-string/jumbo v6, "PowerKeeperPolicy"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_82} :catch_9b

    :cond_82
    :goto_82
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void

    :catch_86
    move-exception v1

    :try_start_87
    const-string/jumbo v6, " e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "startLeScan"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9a} :catch_9b

    goto :goto_65

    :catch_9b
    move-exception v2

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "startLeScan"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82
.end method

.method public stopLeScan()V
    .registers 10

    iget-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    if-nez v6, :cond_2e

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopLeScan, uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not scanning"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void

    :cond_2e
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "ForceStopLeScan, uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    :try_start_4f
    const-string/jumbo v6, "bluetooth_manager"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_ba

    move-result-object v3

    :try_start_60
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BleScanWrapper;->stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_ba

    :goto_65
    :try_start_65
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-get0()Z

    move-result v6

    if-eqz v6, :cond_a1

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ForceStopLeScan, uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " client: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a1} :catch_ba

    :cond_a1
    :goto_a1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    return-void

    :catch_a5
    move-exception v1

    :try_start_a6
    const-string/jumbo v6, " e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "stopLeScan"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b9} :catch_ba

    goto :goto_65

    :catch_ba
    move-exception v2

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "stopLeScan"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mScanning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkToDeath()V
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_f

    :try_start_4
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_f
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to unlink deathRecipient for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->mBleScanWrapper:Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

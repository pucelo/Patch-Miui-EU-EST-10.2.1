.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binder is dead - unregister "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-eqz v1, :cond_25

    return-void

    :cond_25
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Disabling LE only mode after application crash"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2e
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_60

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_60} :catch_6e
    .catchall {:try_start_2e .. :try_end_60} :catchall_86

    :cond_60
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_6d
    return-void

    :catch_6e
    move-exception v0

    :try_start_6f
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to call onBrEdrDown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_86

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_6d

    :catchall_86
    move-exception v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

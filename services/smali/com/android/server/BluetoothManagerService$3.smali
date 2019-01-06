.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-wrap1(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b5

    :cond_17
    :goto_17
    const/16 v1, 0xa

    :try_start_19
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_37} :catch_b8
    .catchall {:try_start_19 .. :try_end_37} :catchall_d1

    move-result v1

    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Airplane Mode change - current state:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;)V
    :try_end_70
    .catchall {:try_start_38 .. :try_end_70} :catchall_b5

    const/16 v2, 0xf

    if-ne v1, v2, :cond_107

    :try_start_74
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_9e} :catch_e0
    .catchall {:try_start_74 .. :try_end_9e} :catchall_f8

    :cond_9e
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_b5

    :cond_ab
    :goto_ab
    monitor-exit p0

    return-void

    :cond_ad
    :try_start_ad
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b5

    goto/16 :goto_17

    :catchall_b5
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_b8
    move-exception v0

    :try_start_b9
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to call getState"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_d1

    :try_start_c2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_cf
    .catchall {:try_start_c2 .. :try_end_cf} :catchall_b5

    monitor-exit p0

    return-void

    :catchall_d1
    move-exception v2

    :try_start_d2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
    :try_end_e0
    .catchall {:try_start_d2 .. :try_end_e0} :catchall_b5

    :catch_e0
    move-exception v0

    :try_start_e1
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to call onBrEdrDown"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_f8

    :try_start_ea
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_ab

    :catchall_f8
    move-exception v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    :cond_107
    const/16 v2, 0xc

    if-ne v1, v2, :cond_114

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const-string/jumbo v3, "airplane mode"

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-wrap17(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    goto :goto_ab

    :cond_114
    const/16 v2, 0xa

    if-ne v1, v2, :cond_ab

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_ab

    :cond_11f
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    const-string/jumbo v4, "airplane mode"

    invoke-static {v2, v3, v4}, Lcom/android/server/BluetoothManagerService;->-wrap18(Lcom/android/server/BluetoothManagerService;ZLjava/lang/String;)V
    :try_end_135
    .catchall {:try_start_ea .. :try_end_135} :catchall_b5

    goto/16 :goto_ab
.end method

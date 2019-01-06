.class Landroid/bluetooth/BluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 8

    const-string/jumbo v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothServiceDown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get0(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get4()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    :cond_51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get5()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get5()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V
    :try_end_5e
    .catchall {:try_start_20 .. :try_end_5e} :catchall_c7

    :cond_5e
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_72
    const-string/jumbo v3, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBluetoothServiceDown: Sending callbacks to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " clients"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_b3
    .catchall {:try_start_72 .. :try_end_b3} :catchall_c4

    if-eqz v0, :cond_d6

    :try_start_b5
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_b9
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_c4

    goto :goto_a7

    :catch_b9
    move-exception v2

    :try_start_ba
    const-string/jumbo v3, "BluetoothAdapter"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_c4

    goto :goto_a7

    :catchall_c4
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_c7
    move-exception v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v4}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3

    :cond_d6
    :try_start_d6
    const-string/jumbo v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceDown: cb is null!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_df} :catch_b9
    .catchall {:try_start_d6 .. :try_end_df} :catchall_c4

    goto :goto_a7

    :cond_e0
    monitor-exit v4

    const-string/jumbo v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceDown: Finished sending callbacks to registered clients"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 8

    const-string/jumbo v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothServiceUp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->-set0(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get3(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_40
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_67

    if-eqz v0, :cond_6a

    :try_start_58
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_67

    goto :goto_4a

    :catch_5c
    move-exception v2

    :try_start_5d
    const-string/jumbo v3, "BluetoothAdapter"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_67

    goto :goto_4a

    :catchall_67
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6a
    :try_start_6a
    const-string/jumbo v3, "BluetoothAdapter"

    const-string/jumbo v5, "onBluetoothServiceUp: cb is null!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_5c
    .catchall {:try_start_6a .. :try_end_73} :catchall_67

    goto :goto_4a

    :cond_74
    monitor-exit v4

    return-void
.end method

.method public onBrEdrDown()V
    .registers 1

    return-void
.end method

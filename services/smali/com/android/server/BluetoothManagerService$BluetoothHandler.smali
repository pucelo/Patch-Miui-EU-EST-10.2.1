.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_d8a

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-nez v20, :cond_e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_e4

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Binding to service to get name and address"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v9, Landroid/content/Intent;

    const-class v20, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v23, 0x41

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v22

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v20

    if-nez v20, :cond_c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_b2
    .catchall {:try_start_13 .. :try_end_b2} :catchall_d1

    :cond_b2
    :goto_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :cond_c5
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_d1

    goto :goto_b2

    :catchall_d1
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v20

    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_d1

    move-result-object v20

    if-eqz v20, :cond_b2

    :try_start_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap19(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_115} :catch_13e
    .catchall {:try_start_f0 .. :try_end_115} :catchall_d1

    :goto_115
    :try_start_115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v20, v0

    if-eqz v20, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    :cond_134
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    goto/16 :goto_b2

    :catch_13e
    move-exception v14

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unable to grab names"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14c
    .catchall {:try_start_115 .. :try_end_14c} :catchall_d1

    goto :goto_115

    :sswitch_14d
    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_ENABLE("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "): mBluetooth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x2a

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_203

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v17

    const/16 v20, 0xf

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_203

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "BT Enable in BLE_ON State, going to ON"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1f0} :catch_252
    .catchall {:try_start_19c .. :try_end_1f0} :catchall_272

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_9

    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_285

    const/16 v20, 0x1

    :goto_22a
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set8(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-nez v20, :cond_288

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_9

    :catch_252
    move-exception v7

    :try_start_253
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_260
    .catchall {:try_start_253 .. :try_end_260} :catchall_272

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_214

    :catchall_272
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v20

    :cond_285
    const/16 v20, 0x0

    goto :goto_22a

    :cond_288
    :try_start_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_295
    .catch Landroid/os/RemoteException; {:try_start_288 .. :try_end_295} :catch_2d8

    move-result v17

    const/16 v20, 0xd

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2a6

    const/16 v20, 0x10

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2b3

    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    :cond_2b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x2a

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const-wide/16 v22, 0x190

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    :catch_2d8
    move-exception v7

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "getState()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :sswitch_2e8
    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_DISABLE: mBluetooth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x2a

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_9

    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_9

    :sswitch_379
    :try_start_379
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-nez v20, :cond_3b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_3b6

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Restore Bluetooth state to disabled"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "restore user setting"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->disable(Ljava/lang/String;Z)Z
    :try_end_3a4
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_3a4} :catch_3a6

    goto/16 :goto_9

    :catch_3a6
    move-exception v7

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unable to change Bluetooth On setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_3b6
    :try_start_3b6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Restore Bluetooth state to enabled"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "restore user setting"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->enable(Ljava/lang/String;)Z
    :try_end_3e7
    .catch Landroid/os/RemoteException; {:try_start_3b6 .. :try_end_3e7} :catch_3a6

    goto/16 :goto_9

    :sswitch_3e9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_9

    :sswitch_400
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_9

    :sswitch_417
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_9

    :sswitch_42e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get16(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_9

    :sswitch_445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v20

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    if-eqz v13, :cond_9

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-static {v13, v12}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    goto/16 :goto_9

    :sswitch_46d
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    if-eqz v13, :cond_9

    invoke-static {v13}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    goto/16 :goto_9

    :sswitch_48b
    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/IBinder;

    :try_start_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V
    :try_end_4ec
    .catchall {:try_start_4b3 .. :try_end_4ec} :catchall_621

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :cond_4ff
    :try_start_4ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-nez v20, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0xc8

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v20, v0
    :try_end_577
    .catchall {:try_start_4ff .. :try_end_577} :catchall_621

    if-eqz v20, :cond_58b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_58b
    :try_start_58b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_5a2
    .catch Landroid/os/RemoteException; {:try_start_58b .. :try_end_5a2} :catch_612
    .catchall {:try_start_58b .. :try_end_5a2} :catchall_621

    :goto_5a2
    :try_start_5a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;)V
    :try_end_5ab
    .catchall {:try_start_5a2 .. :try_end_5ab} :catchall_621

    :try_start_5ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-nez v20, :cond_634

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v20

    if-nez v20, :cond_5d0

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "IBluetooth.enable() returned false"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d0
    .catch Landroid/os/RemoteException; {:try_start_5ab .. :try_end_5d0} :catch_64e
    .catchall {:try_start_5ab .. :try_end_5d0} :catchall_621

    :cond_5d0
    :goto_5d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_9

    :catch_612
    move-exception v14

    :try_start_613
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unable to register BluetoothCallback"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_620
    .catchall {:try_start_613 .. :try_end_620} :catchall_621

    goto :goto_5a2

    :catchall_621
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v20

    :cond_634
    :try_start_634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v20

    if-nez v20, :cond_5d0

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64d
    .catch Landroid/os/RemoteException; {:try_start_634 .. :try_end_64d} :catch_64e
    .catchall {:try_start_634 .. :try_end_64d} :catchall_621

    goto :goto_5d0

    :catch_64e
    move-exception v7

    :try_start_64f
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unable to call enable()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65c
    .catchall {:try_start_64f .. :try_end_65c} :catchall_621

    goto/16 :goto_5d0

    :sswitch_65e
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " > "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v10}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11, v10}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    const/16 v20, 0xe

    move/from16 v0, v20

    if-ne v11, v0, :cond_6d8

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v10, v0, :cond_6d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_6d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_6d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap14(Lcom/android/server/BluetoothManagerService;Z)V

    :cond_6d8
    const/16 v20, 0xb

    move/from16 v0, v20

    if-ne v11, v0, :cond_707

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v10, v0, :cond_707

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_707

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_707

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V

    :cond_707
    const/16 v20, 0xb

    move/from16 v0, v20

    if-ne v11, v0, :cond_736

    const/16 v20, 0xf

    move/from16 v0, v20

    if-ne v10, v0, :cond_736

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_736

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_736

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap14(Lcom/android/server/BluetoothManagerService;Z)V

    :cond_736
    const/16 v20, 0x10

    move/from16 v0, v20

    if-ne v11, v0, :cond_787

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v10, v0, :cond_787

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_787

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x2a

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const-wide/16 v22, 0x190

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_787
    const/16 v20, 0xc

    move/from16 v0, v20

    if-eq v10, v0, :cond_793

    const/16 v20, 0xf

    move/from16 v0, v20

    if-ne v10, v0, :cond_9

    :cond_793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    if-eqz v20, :cond_9

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "bluetooth is recovered from error"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_9

    :sswitch_7b5
    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_94c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_804
    .catchall {:try_start_7dc .. :try_end_804} :catchall_994

    move-result-object v20

    if-nez v20, :cond_81a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :cond_81a
    :try_start_81a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_825
    .catchall {:try_start_81a .. :try_end_825} :catchall_994

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "unexpected crash"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Z)V

    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mEnable: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", mIBluetoothConnectedMsgQueued: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_8cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    if-nez v20, :cond_8cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x2a

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_911

    :cond_8f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    const/16 v22, 0xd

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    :cond_911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_930

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    const/16 v22, 0xa

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    :cond_930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_9

    :cond_94c
    :try_start_94c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_978

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_965
    .catchall {:try_start_94c .. :try_end_965} :catchall_994

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :cond_978
    :try_start_978
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unknown argument for service disconnect!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_981
    .catchall {:try_start_978 .. :try_end_981} :catchall_994

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :catchall_994
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v20

    :sswitch_9a7
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_RESTART_BLUETOOTH_SERVICE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "automatic restart"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_9

    :sswitch_9de
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :sswitch_a16
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set10(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_9

    :sswitch_a4e
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x12c

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_cc0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v20

    if-eqz v20, :cond_cc0

    :try_start_a7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_ab2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_ab2
    .catch Landroid/os/RemoteException; {:try_start_a7e .. :try_end_ab2} :catch_c72
    .catchall {:try_start_a7e .. :try_end_ab2} :catchall_c93

    :cond_ab2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_ac3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_af5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xa

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    :cond_af5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xb

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    :cond_b27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v20

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xc

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    :cond_b5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap20(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    const/16 v22, 0xd

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-result v20

    xor-int/lit8 v6, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    const/16 v22, 0xa

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;)V

    if-nez v6, :cond_c14

    :try_start_bb9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_bf8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_bf8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_c03
    .catchall {:try_start_bb9 .. :try_end_c03} :catchall_ca6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_c14
    if-eqz v6, :cond_cb9

    const-wide/16 v20, 0xbb8

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x29

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    :goto_c2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const-string/jumbo v21, "user switch"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_9

    :catch_c72
    move-exception v14

    :try_start_c73
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Unable to unregister"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c80
    .catchall {:try_start_c73 .. :try_end_c80} :catchall_c93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_ac3

    :catchall_c93
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v20

    :catchall_ca6
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v20

    :cond_cb9
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_c2a

    :cond_cc0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-nez v20, :cond_cd8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-eqz v20, :cond_9

    :cond_cd8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x12c

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v20, "BluetoothManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :sswitch_d2d
    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "MESSAGE_USER_UNLOCKED"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v20

    const/16 v21, 0x12c

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v20

    if-nez v20, :cond_9

    const-string/jumbo v20, "BluetoothManagerService"

    const-string/jumbo v21, "Enabled but not bound; retrying after unlock"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_9

    nop

    :sswitch_data_d8a
    .sparse-switch
        0x1 -> :sswitch_14d
        0x2 -> :sswitch_2e8
        0x14 -> :sswitch_3e9
        0x15 -> :sswitch_400
        0x1e -> :sswitch_417
        0x1f -> :sswitch_42e
        0x28 -> :sswitch_48b
        0x29 -> :sswitch_7b5
        0x2a -> :sswitch_9a7
        0x3c -> :sswitch_65e
        0x64 -> :sswitch_9de
        0x65 -> :sswitch_a16
        0xc8 -> :sswitch_a
        0x12c -> :sswitch_a4e
        0x12d -> :sswitch_d2d
        0x190 -> :sswitch_445
        0x191 -> :sswitch_46d
        0x1f4 -> :sswitch_379
    .end sparse-switch
.end method

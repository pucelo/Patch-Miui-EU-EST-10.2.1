.class Landroid/bluetooth/BluetoothDun$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothDun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 8

    const-string/jumbo v3, "BluetoothDun"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothStateChange on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_49

    :try_start_1c
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDun;->-get2(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v3

    if-nez v3, :cond_32

    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "onBluetoothStateChange call bindService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDun;->doBind()Z
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_32} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v1

    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_3e
    move-exception v0

    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :cond_49
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDun;->-get0(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    :try_start_50
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDun;->-get2(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_7a

    move-result-object v3

    if-eqz v3, :cond_6d

    :try_start_58
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothDun;->-set0(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v3}, Landroid/bluetooth/BluetoothDun;->-get1(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v5}, Landroid/bluetooth/BluetoothDun;->-get0(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6d} :catch_6f
    .catchall {:try_start_58 .. :try_end_6d} :catchall_7a

    :cond_6d
    :goto_6d
    monitor-exit v4

    goto :goto_32

    :catch_6f
    move-exception v2

    :try_start_70
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_7a

    goto :goto_6d

    :catchall_7a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.class Landroid/bluetooth/BluetoothMapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothMapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMapClient;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6

    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->-get0()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "BluetoothMapClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-nez p1, :cond_5d

    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->-get1()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "BluetoothMapClient"

    const-string/jumbo v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->-get2(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_38
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothMapClient;->-set0(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->-get3(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v3}, Landroid/bluetooth/BluetoothMapClient;->-get2(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4d} :catch_4f
    .catchall {:try_start_38 .. :try_end_4d} :catchall_5a

    :cond_4d
    :goto_4d
    monitor-exit v2

    return-void

    :catch_4f
    move-exception v0

    :try_start_50
    const-string/jumbo v1, "BluetoothMapClient"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5a

    goto :goto_4d

    :catchall_5a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_5d
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->-get2(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_64
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothMapClient;->-get4(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v1

    if-nez v1, :cond_4d

    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->-get1()Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string/jumbo v1, "BluetoothMapClient"

    const-string/jumbo v3, "Binding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$1;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMapClient;->doBind()Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_80} :catch_81
    .catchall {:try_start_64 .. :try_end_80} :catchall_8c

    goto :goto_4d

    :catch_81
    move-exception v0

    :try_start_82
    const-string/jumbo v1, "BluetoothMapClient"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_8c

    goto :goto_4d

    :catchall_8c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

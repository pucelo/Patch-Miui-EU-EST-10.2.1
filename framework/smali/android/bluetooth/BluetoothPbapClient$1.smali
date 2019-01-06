.class Landroid/bluetooth/BluetoothPbapClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbapClient;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6

    if-nez p1, :cond_2e

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get1(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v3}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_20
    .catchall {:try_start_9 .. :try_end_1e} :catchall_2b

    :cond_1e
    :goto_1e
    monitor-exit v2

    return-void

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v1, "BluetoothPbapClient"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2e
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-get2(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$1;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->-wrap0(Landroid/bluetooth/BluetoothPbapClient;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_42} :catch_43
    .catchall {:try_start_35 .. :try_end_42} :catchall_4e

    goto :goto_1e

    :catch_43
    move-exception v0

    :try_start_44
    const-string/jumbo v1, "BluetoothPbapClient"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    goto :goto_1e

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

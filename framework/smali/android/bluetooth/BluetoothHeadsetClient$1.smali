.class Landroid/bluetooth/BluetoothHeadsetClient$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHeadsetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7

    const-string/jumbo v2, "BluetoothHeadsetClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_48

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get1(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v4}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_3a
    .catchall {:try_start_23 .. :try_end_38} :catchall_45

    :cond_38
    :goto_38
    monitor-exit v3

    return-void

    :catch_3a
    move-exception v1

    :try_start_3b
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_38

    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_48
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get0(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;

    move-result-object v3

    monitor-enter v3

    :try_start_4f
    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-get2(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v2

    if-nez v2, :cond_38

    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothHeadsetClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient$1;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_67} :catch_68
    .catchall {:try_start_4f .. :try_end_67} :catchall_73

    goto :goto_38

    :catch_68
    move-exception v1

    :try_start_69
    const-string/jumbo v2, "BluetoothHeadsetClient"

    const-string/jumbo v4, ""

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_38

    :catchall_73
    move-exception v2

    monitor-exit v3

    throw v2
.end method

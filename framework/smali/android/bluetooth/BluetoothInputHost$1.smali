.class Landroid/bluetooth/BluetoothInputHost$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothInputHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputHost;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputHost;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 8

    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothStateChange: up="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    if-nez p1, :cond_5c

    :try_start_24
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Unbinding service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_59

    :try_start_3c
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get2(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v5}, Landroid/bluetooth/BluetoothInputHost;->-get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_4b} :catch_4d
    .catchall {:try_start_3c .. :try_end_4b} :catchall_59

    :cond_4b
    :goto_4b
    monitor-exit v4

    return-void

    :catch_4d
    move-exception v0

    :try_start_4e
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not unbind service:"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_59

    goto :goto_4b

    :catchall_59
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_5c
    :try_start_5c
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v3

    if-nez v3, :cond_4b

    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Binding HID Device service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputHost;->doBind()Z
    :try_end_73
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_73} :catch_74
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_73} :catch_80
    .catchall {:try_start_5c .. :try_end_73} :catchall_59

    goto :goto_4b

    :catch_74
    move-exception v1

    :try_start_75
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :catch_80
    move-exception v2

    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_59

    goto :goto_4b
.end method

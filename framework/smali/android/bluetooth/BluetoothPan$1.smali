.class Landroid/bluetooth/BluetoothPan$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 8

    const-string/jumbo v3, "BluetoothPan"

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

    if-eqz p1, :cond_40

    :try_start_1c
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get2(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v3

    if-nez v3, :cond_29

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->doBind()Z
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_29} :catch_35
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v1

    const-string/jumbo v3, "BluetoothPan"

    const-string/jumbo v4, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_35
    move-exception v0

    const-string/jumbo v3, "BluetoothPan"

    const-string/jumbo v4, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_40
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    :try_start_47
    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothPan;->-set0(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v3}, Landroid/bluetooth/BluetoothPan;->-get1(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v5}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5c} :catch_5e
    .catchall {:try_start_47 .. :try_end_5c} :catchall_69

    :goto_5c
    monitor-exit v4

    goto :goto_29

    :catch_5e
    move-exception v2

    :try_start_5f
    const-string/jumbo v3, "BluetoothPan"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    goto :goto_5c

    :catchall_69
    move-exception v3

    monitor-exit v4

    throw v3
.end method

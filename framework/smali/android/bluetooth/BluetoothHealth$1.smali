.class Landroid/bluetooth/BluetoothHealth$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHealth;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHealth;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6

    const-string/jumbo v1, "BluetoothHealth"

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

    if-nez p1, :cond_48

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->-get0(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothHealth;->-set0(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->-get1(Landroid/bluetooth/BluetoothHealth;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHealth;->-get0(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_3a
    .catchall {:try_start_23 .. :try_end_38} :catchall_45

    :cond_38
    :goto_38
    monitor-exit v2

    return-void

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_38

    :catchall_45
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_48
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->-get0(Landroid/bluetooth/BluetoothHealth;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_4f
    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHealth;->-get2(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    move-result-object v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$1;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHealth;->doBind()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_5d
    .catchall {:try_start_4f .. :try_end_5c} :catchall_68

    goto :goto_38

    :catch_5d
    move-exception v0

    :try_start_5e
    const-string/jumbo v1, "BluetoothHealth"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_68

    goto :goto_38

    :catchall_68
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.class Landroid/bluetooth/BluetoothInputHost$2;
.super Ljava/lang/Object;
.source "BluetoothInputHost.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    const/16 v2, 0x13

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_23
    return-void
.end method

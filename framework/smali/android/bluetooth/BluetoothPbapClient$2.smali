.class Landroid/bluetooth/BluetoothPbapClient$2;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothPbapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbapClient;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    const/16 v2, 0x11

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_22
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_19
    return-void
.end method

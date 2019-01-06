.class Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.source "BluetoothInputHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHidDeviceCallback;)V
    .registers 2

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V

    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method public onIntrData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onIntrData(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDeviceCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDeviceCallback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

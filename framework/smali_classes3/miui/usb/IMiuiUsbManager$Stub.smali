.class public abstract Lmiui/usb/IMiuiUsbManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiUsbManager.java"

# interfaces
.implements Lmiui/usb/IMiuiUsbManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/usb/IMiuiUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/usb/IMiuiUsbManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.usb.IMiuiUsbManager"

.field static final TRANSACTION_acceptMdbRestore:I = 0x1

.field static final TRANSACTION_allowUsbDebugging:I = 0x3

.field static final TRANSACTION_cancelMdbRestore:I = 0x2

.field static final TRANSACTION_denyUsbDebugging:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p0, p0, v0}, Lmiui/usb/IMiuiUsbManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/usb/IMiuiUsbManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.usb.IMiuiUsbManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/usb/IMiuiUsbManager;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/usb/IMiuiUsbManager;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/usb/IMiuiUsbManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_52

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->acceptMdbRestore()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_1d
    const-string/jumbo v2, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->cancelMdbRestore()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_2a
    const-string/jumbo v2, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmiui/usb/IMiuiUsbManager$Stub;->allowUsbDebugging(ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_42
    const/4 v0, 0x0

    goto :goto_37

    :sswitch_44
    const-string/jumbo v2, "miui.usb.IMiuiUsbManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/usb/IMiuiUsbManager$Stub;->denyUsbDebugging()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    nop

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_44
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

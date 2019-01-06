.class public abstract Lmiui/mms/IMxNetworkSMS$Stub;
.super Landroid/os/Binder;
.source "IMxNetworkSMS.java"

# interfaces
.implements Lmiui/mms/IMxNetworkSMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mms/IMxNetworkSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mms/IMxNetworkSMS$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mms.IMxNetworkSMS"

.field static final TRANSACTION_isMxOnline:I = 0x1

.field static final TRANSACTION_sendNetwokSMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p0, p0, v0}, Lmiui/mms/IMxNetworkSMS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mms/IMxNetworkSMS;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.mms.IMxNetworkSMS"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mms/IMxNetworkSMS;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/mms/IMxNetworkSMS;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_54

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_a
    const-string/jumbo v1, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_11
    const-string/jumbo v10, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/mms/IMxNetworkSMS$Stub;->isMxOnline(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_25

    move v1, v9

    :cond_25
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_29
    const-string/jumbo v1, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52

    const/4 v6, 0x1

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lmiui/mms/IMxNetworkSMS$Stub;->sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v9

    :cond_52
    const/4 v6, 0x0

    goto :goto_42

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_29
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

.class public abstract Landroid/os/storage/IStorageEventListener$Stub;
.super Landroid/os/Binder;
.source "IStorageEventListener.java"

# interfaces
.implements Landroid/os/storage/IStorageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageEventListener"

.field static final TRANSACTION_onDiskDestroyed:I = 0x7

.field static final TRANSACTION_onDiskScanned:I = 0x6

.field static final TRANSACTION_onStorageStateChanged:I = 0x2

.field static final TRANSACTION_onUsbMassStorageConnectionChanged:I = 0x1

.field static final TRANSACTION_onVolumeForgotten:I = 0x5

.field static final TRANSACTION_onVolumeRecordChanged:I = 0x4

.field static final TRANSACTION_onVolumeStateChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.storage.IStorageEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.storage.IStorageEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IStorageEventListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/storage/IStorageEventListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/storage/IStorageEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_bc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_9
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_10
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    const/4 v4, 0x1

    :goto_1d
    invoke-virtual {p0, v4}, Landroid/os/storage/IStorageEventListener$Stub;->onUsbMassStorageConnectionChanged(Z)V

    return v10

    :cond_21
    const/4 v4, 0x0

    goto :goto_1d

    :sswitch_23
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v6, v8}, Landroid/os/storage/IStorageEventListener$Stub;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :sswitch_39
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_59

    sget-object v9, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v5, v7}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return v10

    :cond_59
    const/4 v1, 0x0

    goto :goto_4d

    :sswitch_5b
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_73

    sget-object v9, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    :goto_6f
    invoke-virtual {p0, v2}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return v10

    :cond_73
    const/4 v2, 0x0

    goto :goto_6f

    :sswitch_75
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeForgotten(Ljava/lang/String;)V

    return v10

    :sswitch_83
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9f

    sget-object v9, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    :goto_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return v10

    :cond_9f
    const/4 v0, 0x0

    goto :goto_97

    :sswitch_a1
    const-string/jumbo v9, "android.os.storage.IStorageEventListener"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b9

    sget-object v9, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    :goto_b5
    invoke-virtual {p0, v0}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return v10

    :cond_b9
    const/4 v0, 0x0

    goto :goto_b5

    nop

    :sswitch_data_bc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_39
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_75
        0x6 -> :sswitch_83
        0x7 -> :sswitch_a1
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

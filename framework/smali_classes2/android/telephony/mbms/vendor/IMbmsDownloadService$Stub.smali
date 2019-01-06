.class public abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.super Landroid/os/Binder;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsDownloadService"

.field static final TRANSACTION_cancelDownload:I = 0x8

.field static final TRANSACTION_dispose:I = 0xb

.field static final TRANSACTION_download:I = 0x4

.field static final TRANSACTION_getDownloadStatus:I = 0x9

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_listPendingDownloads:I = 0x7

.field static final TRANSACTION_registerStateCallback:I = 0x5

.field static final TRANSACTION_requestUpdateFileServices:I = 0x2

.field static final TRANSACTION_resetDownloadKnowledge:I = 0xa

.field static final TRANSACTION_setTempFileRootDirectory:I = 0x3

.field static final TRANSACTION_unregisterStateCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_17a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_2e
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_48
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_62
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_82

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_76
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_82
    const/4 v1, 0x0

    goto :goto_76

    :sswitch_84
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b0

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStateCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v3, v7}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_b0
    const/4 v1, 0x0

    goto :goto_98

    :sswitch_b2
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_da

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStateCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_da
    const/4 v1, 0x0

    goto :goto_c6

    :sswitch_dc
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_f2
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_112

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_106
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_112
    const/4 v1, 0x0

    goto :goto_106

    :sswitch_114
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_142

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_144

    sget-object v10, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/FileInfo;

    :goto_136
    invoke-virtual {p0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_142
    const/4 v1, 0x0

    goto :goto_128

    :cond_144
    const/4 v2, 0x0

    goto :goto_136

    :sswitch_146
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_166

    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    :goto_15a
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_166
    const/4 v1, 0x0

    goto :goto_15a

    :sswitch_168
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->dispose(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_data_17a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_48
        0x4 -> :sswitch_62
        0x5 -> :sswitch_84
        0x6 -> :sswitch_b2
        0x7 -> :sswitch_dc
        0x8 -> :sswitch_f2
        0x9 -> :sswitch_114
        0xa -> :sswitch_146
        0xb -> :sswitch_168
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

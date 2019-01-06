.class public abstract Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.super Landroid/os/Binder;
.source "IMbmsStreamingService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsStreamingService"

.field static final TRANSACTION_dispose:I = 0x6

.field static final TRANSACTION_getPlaybackUri:I = 0x4

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_requestUpdateStreamingServices:I = 0x2

.field static final TRANSACTION_startStreaming:I = 0x3

.field static final TRANSACTION_stopStreaming:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_b0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_2d
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_46
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IStreamingServiceCallback;

    move-result-object v5

    invoke-virtual {p0, v0, v3, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_67
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_85

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v9}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_84
    return v9

    :cond_85
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    :sswitch_8a
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->stopStreaming(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_9f
    const-string/jumbo v8, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->dispose(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_46
        0x4 -> :sswitch_67
        0x5 -> :sswitch_8a
        0x6 -> :sswitch_9f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

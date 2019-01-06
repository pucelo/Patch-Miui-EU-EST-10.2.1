.class public abstract Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x5

.field static final TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_changeVideoQuality:I = 0x7

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallCallback;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_28

    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    :goto_24
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return v9

    :cond_28
    const/4 v4, 0x0

    goto :goto_24

    :sswitch_2a
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_54

    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/VideoProfile;

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_56

    sget-object v8, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/VideoProfile;

    :goto_50
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return v9

    :cond_54
    const/4 v6, 0x0

    goto :goto_42

    :cond_56
    const/4 v7, 0x0

    goto :goto_50

    :sswitch_58
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->handleCallSessionEvent(I)V

    return v9

    :sswitch_66
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changePeerDimensions(II)V

    return v9

    :sswitch_78
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCallDataUsage(J)V

    return v9

    :sswitch_86
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9e

    sget-object v8, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    :goto_9a
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return v9

    :cond_9e
    const/4 v1, 0x0

    goto :goto_9a

    :sswitch_a0
    const-string/jumbo v8, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeVideoQuality(I)V

    return v9

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_58
        0x4 -> :sswitch_66
        0x5 -> :sswitch_78
        0x6 -> :sswitch_86
        0x7 -> :sswitch_a0
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

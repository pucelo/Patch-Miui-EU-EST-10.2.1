.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final TRANSACTION_requestCallDataUsage:I = 0xa

.field static final TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setCamera:I = 0x2

.field static final TRANSACTION_setDeviceOrientation:I = 0x5

.field static final TRANSACTION_setDisplaySurface:I = 0x4

.field static final TRANSACTION_setPauseImage:I = 0xb

.field static final TRANSACTION_setPreviewSurface:I = 0x3

.field static final TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_f6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_9
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_10
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    return v10

    :sswitch_22
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;I)V

    return v10

    :sswitch_34
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4c

    sget-object v9, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    :goto_48
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    return v10

    :cond_4c
    const/4 v4, 0x0

    goto :goto_48

    :sswitch_4e
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_66

    sget-object v9, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    :goto_62
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    return v10

    :cond_66
    const/4 v4, 0x0

    goto :goto_62

    :sswitch_68
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    return v10

    :sswitch_76
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    return v10

    :sswitch_84
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_aa

    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    :goto_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_ac

    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/VideoProfile;

    :goto_a6
    invoke-virtual {p0, v3, v8}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return v10

    :cond_aa
    const/4 v3, 0x0

    goto :goto_98

    :cond_ac
    const/4 v8, 0x0

    goto :goto_a6

    :sswitch_ae
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c6

    sget-object v9, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    :goto_c2
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    return v10

    :cond_c6
    const/4 v3, 0x0

    goto :goto_c2

    :sswitch_c8
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    return v10

    :sswitch_d2
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    return v10

    :sswitch_dc
    const-string/jumbo v9, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f4

    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_f0
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    return v10

    :cond_f4
    const/4 v2, 0x0

    goto :goto_f0

    :sswitch_data_f6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_34
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_68
        0x6 -> :sswitch_76
        0x7 -> :sswitch_84
        0x8 -> :sswitch_ae
        0x9 -> :sswitch_c8
        0xa -> :sswitch_d2
        0xb -> :sswitch_dc
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

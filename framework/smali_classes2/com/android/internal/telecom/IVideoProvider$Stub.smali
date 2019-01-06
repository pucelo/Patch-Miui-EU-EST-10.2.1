.class public abstract Lcom/android/internal/telecom/IVideoProvider$Stub;
.super Landroid/os/Binder;
.source "IVideoProvider.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IVideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IVideoProvider"

.field static final TRANSACTION_addVideoCallback:I = 0x1

.field static final TRANSACTION_removeVideoCallback:I = 0x2

.field static final TRANSACTION_requestCallDataUsage:I = 0xb

.field static final TRANSACTION_requestCameraCapabilities:I = 0xa

.field static final TRANSACTION_sendSessionModifyRequest:I = 0x8

.field static final TRANSACTION_sendSessionModifyResponse:I = 0x9

.field static final TRANSACTION_setCamera:I = 0x3

.field static final TRANSACTION_setDeviceOrientation:I = 0x6

.field static final TRANSACTION_setDisplaySurface:I = 0x5

.field static final TRANSACTION_setPauseImage:I = 0xc

.field static final TRANSACTION_setPreviewSurface:I = 0x4

.field static final TRANSACTION_setZoom:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telecom.IVideoProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telecom/IVideoProvider;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IVideoProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_110

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->addVideoCallback(Landroid/os/IBinder;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1f
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->removeVideoCallback(Landroid/os/IBinder;)V

    const/4 v10, 0x1

    return v10

    :sswitch_2e
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setCamera(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v10, 0x1

    return v10

    :sswitch_45
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5e

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    :goto_59
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    const/4 v10, 0x1

    return v10

    :cond_5e
    const/4 v5, 0x0

    goto :goto_59

    :sswitch_60
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_79

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    :goto_74
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    const/4 v10, 0x1

    return v10

    :cond_79
    const/4 v5, 0x0

    goto :goto_74

    :sswitch_7b
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setDeviceOrientation(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_8a
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setZoom(F)V

    const/4 v10, 0x1

    return v10

    :sswitch_99
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c0

    sget-object v10, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    :goto_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c2

    sget-object v10, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/VideoProfile;

    :goto_bb
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    const/4 v10, 0x1

    return v10

    :cond_c0
    const/4 v4, 0x0

    goto :goto_ad

    :cond_c2
    const/4 v7, 0x0

    goto :goto_bb

    :sswitch_c4
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_dd

    sget-object v10, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    :goto_d8
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IVideoProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    const/4 v10, 0x1

    return v10

    :cond_dd
    const/4 v4, 0x0

    goto :goto_d8

    :sswitch_df
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCameraCapabilities()V

    const/4 v10, 0x1

    return v10

    :sswitch_ea
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;->requestCallDataUsage()V

    const/4 v10, 0x1

    return v10

    :sswitch_f5
    const-string/jumbo v10, "com.android.internal.telecom.IVideoProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10e

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_109
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    const/4 v10, 0x1

    return v10

    :cond_10e
    const/4 v2, 0x0

    goto :goto_109

    :sswitch_data_110
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_45
        0x5 -> :sswitch_60
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_99
        0x9 -> :sswitch_c4
        0xa -> :sswitch_df
        0xb -> :sswitch_ea
        0xc -> :sswitch_f5
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

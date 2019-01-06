.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final TRANSACTION_dispatchKeyEventToHdmi:I = 0x3

.field static final TRANSACTION_overrideAudioSink:I = 0x4

.field static final TRANSACTION_setStreamVolume:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.tv.ITvInputHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/tv/ITvInputHardware;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_a4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/tv/TvStreamConfig;

    :goto_32
    invoke-virtual {p0, v8, v9}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_45

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_41
    const/4 v8, 0x0

    goto :goto_24

    :cond_43
    const/4 v9, 0x0

    goto :goto_32

    :cond_45
    const/4 v0, 0x0

    goto :goto_3c

    :sswitch_47
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_59
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/KeyEvent;

    :goto_6d
    invoke-virtual {p0, v7}, Landroid/media/tv/ITvInputHardware$Stub;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_7e

    const/4 v0, 0x1

    :goto_77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_7c
    const/4 v7, 0x0

    goto :goto_6d

    :cond_7e
    const/4 v0, 0x0

    goto :goto_77

    :sswitch_80
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_47
        0x3 -> :sswitch_59
        0x4 -> :sswitch_80
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

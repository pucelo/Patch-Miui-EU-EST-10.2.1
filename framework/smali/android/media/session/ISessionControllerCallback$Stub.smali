.class public abstract Landroid/media/session/ISessionControllerCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionControllerCallback.java"

# interfaces
.implements Landroid/media/session/ISessionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.session.ISessionControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionControllerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/session/ISessionControllerCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_d4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2c

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_28
    invoke-virtual {p0, v6, v7}, Landroid/media/session/ISessionControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return v9

    :cond_2c
    const/4 v7, 0x0

    goto :goto_28

    :sswitch_2e
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onSessionDestroyed()V

    return v9

    :sswitch_38
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_50

    sget-object v8, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState;

    :goto_4c
    invoke-virtual {p0, v3}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    return v9

    :cond_50
    const/4 v3, 0x0

    goto :goto_4c

    :sswitch_52
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6a

    sget-object v8, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaMetadata;

    :goto_66
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionControllerCallback$Stub;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    return v9

    :cond_6a
    const/4 v1, 0x0

    goto :goto_66

    :sswitch_6c
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_84

    sget-object v8, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    :goto_80
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    return v9

    :cond_84
    const/4 v0, 0x0

    goto :goto_80

    :sswitch_86
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9e

    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    :goto_9a
    invoke-virtual {p0, v5}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    return v9

    :cond_9e
    const/4 v5, 0x0

    goto :goto_9a

    :sswitch_a0
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b8

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_b4
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    return v9

    :cond_b8
    const/4 v4, 0x0

    goto :goto_b4

    :sswitch_ba
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d2

    sget-object v8, Landroid/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ParcelableVolumeInfo;

    :goto_ce
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V

    return v9

    :cond_d2
    const/4 v2, 0x0

    goto :goto_ce

    :sswitch_data_d4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_38
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_86
        0x7 -> :sswitch_a0
        0x8 -> :sswitch_ba
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

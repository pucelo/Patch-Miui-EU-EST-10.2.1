.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_onAdjustVolume:I = 0x15

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x14

.field static final TRANSACTION_onFastForward:I = 0x10

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0xe

.field static final TRANSACTION_onPause:I = 0xc

.field static final TRANSACTION_onPlay:I = 0x7

.field static final TRANSACTION_onPlayFromMediaId:I = 0x8

.field static final TRANSACTION_onPlayFromSearch:I = 0x9

.field static final TRANSACTION_onPlayFromUri:I = 0xa

.field static final TRANSACTION_onPrepare:I = 0x3

.field static final TRANSACTION_onPrepareFromMediaId:I = 0x4

.field static final TRANSACTION_onPrepareFromSearch:I = 0x5

.field static final TRANSACTION_onPrepareFromUri:I = 0x6

.field static final TRANSACTION_onPrevious:I = 0xf

.field static final TRANSACTION_onRate:I = 0x13

.field static final TRANSACTION_onRewind:I = 0x11

.field static final TRANSACTION_onSeekTo:I = 0x12

.field static final TRANSACTION_onSetVolumeTo:I = 0x16

.field static final TRANSACTION_onSkipToTrack:I = 0xb

.field static final TRANSACTION_onStop:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/session/ISessionCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/session/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_20e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3d

    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    :goto_36
    invoke-virtual {p0, v6, v8, v9}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const/4 v10, 0x1

    return v10

    :cond_3b
    const/4 v8, 0x0

    goto :goto_28

    :cond_3d
    const/4 v9, 0x0

    goto :goto_36

    :sswitch_3f
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6a

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6c

    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    :goto_65
    invoke-virtual {p0, v1, v7, v9}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    const/4 v10, 0x1

    return v10

    :cond_6a
    const/4 v1, 0x0

    goto :goto_53

    :cond_6c
    const/4 v9, 0x0

    goto :goto_65

    :sswitch_6e
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrepare()V

    const/4 v10, 0x1

    return v10

    :sswitch_79
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_96

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_91
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_96
    const/4 v8, 0x0

    goto :goto_91

    :sswitch_98
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b5

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_b0
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_b5
    const/4 v8, 0x0

    goto :goto_b0

    :sswitch_b7
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_de

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :goto_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e0

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_d9
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_de
    const/4 v5, 0x0

    goto :goto_cb

    :cond_e0
    const/4 v8, 0x0

    goto :goto_d9

    :sswitch_e2
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    const/4 v10, 0x1

    return v10

    :sswitch_ed
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10a

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_105
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_10a
    const/4 v8, 0x0

    goto :goto_105

    :sswitch_10c
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_129

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_124
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_129
    const/4 v8, 0x0

    goto :goto_124

    :sswitch_12b
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_152

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :goto_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_154

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_14d
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_152
    const/4 v5, 0x0

    goto :goto_13f

    :cond_154
    const/4 v8, 0x0

    goto :goto_14d

    :sswitch_156
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    const/4 v10, 0x1

    return v10

    :sswitch_165
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    const/4 v10, 0x1

    return v10

    :sswitch_170
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    const/4 v10, 0x1

    return v10

    :sswitch_17b
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    const/4 v10, 0x1

    return v10

    :sswitch_186
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    const/4 v10, 0x1

    return v10

    :sswitch_191
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    const/4 v10, 0x1

    return v10

    :sswitch_19c
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    const/4 v10, 0x1

    return v10

    :sswitch_1a7
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    const/4 v10, 0x1

    return v10

    :sswitch_1b6
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1cf

    sget-object v10, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Rating;

    :goto_1ca
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    const/4 v10, 0x1

    return v10

    :cond_1cf
    const/4 v4, 0x0

    goto :goto_1ca

    :sswitch_1d1
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1ee

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_1e9
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_1ee
    const/4 v8, 0x0

    goto :goto_1e9

    :sswitch_1f0
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_1ff
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_data_20e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_6e
        0x4 -> :sswitch_79
        0x5 -> :sswitch_98
        0x6 -> :sswitch_b7
        0x7 -> :sswitch_e2
        0x8 -> :sswitch_ed
        0x9 -> :sswitch_10c
        0xa -> :sswitch_12b
        0xb -> :sswitch_156
        0xc -> :sswitch_165
        0xd -> :sswitch_170
        0xe -> :sswitch_17b
        0xf -> :sswitch_186
        0x10 -> :sswitch_191
        0x11 -> :sswitch_19c
        0x12 -> :sswitch_1a7
        0x13 -> :sswitch_1b6
        0x14 -> :sswitch_1d1
        0x15 -> :sswitch_1f0
        0x16 -> :sswitch_1ff
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

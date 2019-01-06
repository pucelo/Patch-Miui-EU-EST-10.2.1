.class public abstract Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioPolicyCallback"

.field static final TRANSACTION_notifyAudioFocusAbandon:I = 0x4

.field static final TRANSACTION_notifyAudioFocusGrant:I = 0x1

.field static final TRANSACTION_notifyAudioFocusLoss:I = 0x2

.field static final TRANSACTION_notifyAudioFocusRequest:I = 0x3

.field static final TRANSACTION_notifyMixStateUpdate:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_9c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    return v5

    :cond_2c
    const/4 v0, 0x0

    goto :goto_24

    :sswitch_2e
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v3, 0x1

    :goto_49
    invoke-virtual {p0, v0, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    return v5

    :cond_4d
    const/4 v0, 0x0

    goto :goto_42

    :cond_4f
    const/4 v3, 0x0

    goto :goto_49

    :sswitch_51
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    :goto_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    return v5

    :cond_6d
    const/4 v0, 0x0

    goto :goto_65

    :sswitch_6f
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_87

    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    :goto_83
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    return v5

    :cond_87
    const/4 v0, 0x0

    goto :goto_83

    :sswitch_89
    const-string/jumbo v4, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyMixStateUpdate(Ljava/lang/String;I)V

    return v5

    nop

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_51
        0x4 -> :sswitch_6f
        0x5 -> :sswitch_89
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

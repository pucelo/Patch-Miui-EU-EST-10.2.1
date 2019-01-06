.class public abstract Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IRecognitionStatusCallback.java"

# interfaces
.implements Landroid/hardware/soundtrigger/IRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.soundtrigger.IRecognitionStatusCallback"

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onGenericSoundTriggerDetected:I = 0x2

.field static final TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final TRANSACTION_onRecognitionPaused:I = 0x4

.field static final TRANSACTION_onRecognitionResumed:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_66

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    :goto_24
    invoke-virtual {p0, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V

    return v4

    :cond_28
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_2a
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    :goto_3e
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return v4

    :cond_42
    const/4 v1, 0x0

    goto :goto_3e

    :sswitch_44
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onError(I)V

    return v4

    :sswitch_52
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    return v4

    :sswitch_5c
    const-string/jumbo v3, "android.hardware.soundtrigger.IRecognitionStatusCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    return v4

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_44
        0x4 -> :sswitch_52
        0x5 -> :sswitch_5c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

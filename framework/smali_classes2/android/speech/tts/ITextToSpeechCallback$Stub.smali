.class public abstract Landroid/speech/tts/ITextToSpeechCallback$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechCallback.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechCallback"

.field static final TRANSACTION_onAudioAvailable:I = 0x6

.field static final TRANSACTION_onBeginSynthesis:I = 0x5

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onRangeStart:I = 0x7

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.speech.tts.ITextToSpeechCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_9c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_9
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_10
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStart(Ljava/lang/String;)V

    return v7

    :sswitch_1e
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onSuccess(Ljava/lang/String;)V

    return v7

    :sswitch_2c
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/4 v2, 0x1

    :goto_3d
    invoke-virtual {p0, v0, v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStop(Ljava/lang/String;Z)V

    return v7

    :cond_41
    const/4 v2, 0x0

    goto :goto_3d

    :sswitch_43
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onError(Ljava/lang/String;I)V

    return v7

    :sswitch_55
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onBeginSynthesis(Ljava/lang/String;III)V

    return v7

    :sswitch_6f
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onAudioAvailable(Ljava/lang/String;[B)V

    return v7

    :sswitch_81
    const-string/jumbo v6, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onRangeStart(Ljava/lang/String;III)V

    return v7

    nop

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_43
        0x5 -> :sswitch_55
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_81
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

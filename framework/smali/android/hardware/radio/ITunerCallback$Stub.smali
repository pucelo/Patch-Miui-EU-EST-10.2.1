.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final TRANSACTION_onAntennaState:I = 0x6

.field static final TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x7

.field static final TRANSACTION_onBackgroundScanComplete:I = 0x8

.field static final TRANSACTION_onConfigurationChanged:I = 0x2

.field static final TRANSACTION_onCurrentProgramInfoChanged:I = 0x3

.field static final TRANSACTION_onEmergencyAnnouncement:I = 0x5

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onProgramListChanged:I = 0x9

.field static final TRANSACTION_onTrafficAnnouncement:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/radio/ITunerCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_b2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    return v5

    :sswitch_1e
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    :goto_32
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return v5

    :cond_36
    const/4 v1, 0x0

    goto :goto_32

    :sswitch_38
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    sget-object v4, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    :goto_4c
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return v5

    :cond_50
    const/4 v2, 0x0

    goto :goto_4c

    :sswitch_52
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    const/4 v3, 0x1

    :goto_5f
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    return v5

    :cond_63
    const/4 v3, 0x0

    goto :goto_5f

    :sswitch_65
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    const/4 v3, 0x1

    :goto_72
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    return v5

    :cond_76
    const/4 v3, 0x0

    goto :goto_72

    :sswitch_78
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    const/4 v3, 0x1

    :goto_85
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    return v5

    :cond_89
    const/4 v3, 0x0

    goto :goto_85

    :sswitch_8b
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    const/4 v3, 0x1

    :goto_98
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    return v5

    :cond_9c
    const/4 v3, 0x0

    goto :goto_98

    :sswitch_9e
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    return v5

    :sswitch_a8
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    return v5

    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_38
        0x4 -> :sswitch_52
        0x5 -> :sswitch_65
        0x6 -> :sswitch_78
        0x7 -> :sswitch_8b
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_a8
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

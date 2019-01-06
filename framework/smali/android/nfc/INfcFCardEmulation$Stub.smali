.class public abstract Landroid/nfc/INfcFCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcFCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcFCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcFCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcFCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcFCardEmulation"

.field static final TRANSACTION_disableNfcFForegroundService:I = 0x7

.field static final TRANSACTION_enableNfcFForegroundService:I = 0x6

.field static final TRANSACTION_getMaxNumOfRegisterableSystemCodes:I = 0x9

.field static final TRANSACTION_getNfcFServices:I = 0x8

.field static final TRANSACTION_getNfcid2ForService:I = 0x4

.field static final TRANSACTION_getSystemCodeForService:I = 0x1

.field static final TRANSACTION_registerSystemCodeForService:I = 0x2

.field static final TRANSACTION_removeSystemCodeForService:I = 0x3

.field static final TRANSACTION_setNfcid2ForService:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcFCardEmulation;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.nfc.INfcFCardEmulation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcFCardEmulation;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/nfc/INfcFCardEmulation;

    return-object v0

    :cond_14
    new-instance v1, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_13a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_a
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_11
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_34

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_29
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_34
    const/4 v2, 0x0

    goto :goto_29

    :sswitch_36
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_60

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5c

    move v8, v9

    :cond_5c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_60
    const/4 v2, 0x0

    goto :goto_4e

    :sswitch_62
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_88

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_7a
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_84

    move v8, v9

    :cond_84
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_88
    const/4 v2, 0x0

    goto :goto_7a

    :sswitch_8a
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_ad

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_a2
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_ad
    const/4 v2, 0x0

    goto :goto_a2

    :sswitch_af
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d9

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    :goto_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d5

    move v8, v9

    :cond_d5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_d9
    const/4 v2, 0x0

    goto :goto_c7

    :sswitch_db
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_fd

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_ef
    invoke-virtual {p0, v1}, Landroid/nfc/INfcFCardEmulation$Stub;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f9

    move v8, v9

    :cond_f9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_fd
    const/4 v1, 0x0

    goto :goto_ef

    :sswitch_ff
    const-string/jumbo v10, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->disableNfcFForegroundService()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10f

    move v8, v9

    :cond_10f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_113
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcFServices(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :sswitch_128
    const-string/jumbo v8, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->getMaxNumOfRegisterableSystemCodes()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    nop

    :sswitch_data_13a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_36
        0x3 -> :sswitch_62
        0x4 -> :sswitch_8a
        0x5 -> :sswitch_af
        0x6 -> :sswitch_db
        0x7 -> :sswitch_ff
        0x8 -> :sswitch_113
        0x9 -> :sswitch_128
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

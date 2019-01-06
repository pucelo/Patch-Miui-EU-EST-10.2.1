.class public abstract Landroid/nfc/INfcTag$Stub;
.super Landroid/os/Binder;
.source "INfcTag.java"

# interfaces
.implements Landroid/nfc/INfcTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcTag"

.field static final TRANSACTION_canMakeReadOnly:I = 0x10

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_formatNdef:I = 0xb

.field static final TRANSACTION_getExtendedLengthApdusSupported:I = 0x12

.field static final TRANSACTION_getMaxTransceiveLength:I = 0x11

.field static final TRANSACTION_getTechList:I = 0x3

.field static final TRANSACTION_getTimeout:I = 0xe

.field static final TRANSACTION_isNdef:I = 0x4

.field static final TRANSACTION_isPresent:I = 0x5

.field static final TRANSACTION_ndefIsWritable:I = 0xa

.field static final TRANSACTION_ndefMakeReadOnly:I = 0x9

.field static final TRANSACTION_ndefRead:I = 0x7

.field static final TRANSACTION_ndefWrite:I = 0x8

.field static final TRANSACTION_reconnect:I = 0x2

.field static final TRANSACTION_rediscover:I = 0xc

.field static final TRANSACTION_resetTimeouts:I = 0xf

.field static final TRANSACTION_setTimeout:I = 0xd

.field static final TRANSACTION_transceive:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.nfc.INfcTag"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcTag$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.nfc.INfcTag"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcTag;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/nfc/INfcTag;

    return-object v0

    :cond_14
    new-instance v1, Landroid/nfc/INfcTag$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcTag$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1f6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->connect(II)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_2a
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->reconnect(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_40
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTechList(I)[I

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v11, 0x1

    return v11

    :sswitch_56
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isNdef(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_6f

    const/4 v11, 0x1

    :goto_6a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_6f
    const/4 v11, 0x0

    goto :goto_6a

    :sswitch_71
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->isPresent(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_8a

    const/4 v11, 0x1

    :goto_85
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_8a
    const/4 v11, 0x0

    goto :goto_85

    :sswitch_8c
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b4

    const/4 v4, 0x1

    :goto_a1
    invoke-virtual {p0, v0, v3, v4}, Landroid/nfc/INfcTag$Stub;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_b6

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/nfc/TransceiveResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b2
    const/4 v11, 0x1

    return v11

    :cond_b4
    const/4 v4, 0x0

    goto :goto_a1

    :cond_b6
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b2

    :sswitch_bb
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d8

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v6, p3, v11}, Landroid/nfc/NdefMessage;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d6
    const/4 v11, 0x1

    return v11

    :cond_d8
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d6

    :sswitch_dd
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_101

    sget-object v11, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    :goto_f5
    invoke-virtual {p0, v0, v2}, Landroid/nfc/INfcTag$Stub;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_101
    const/4 v2, 0x0

    goto :goto_f5

    :sswitch_103
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefMakeReadOnly(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_119
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->ndefIsWritable(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_132

    const/4 v11, 0x1

    :goto_12d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_132
    const/4 v11, 0x0

    goto :goto_12d

    :sswitch_134
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/nfc/INfcTag$Stub;->formatNdef(I[B)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_14e
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_16b

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_169
    const/4 v11, 0x1

    return v11

    :cond_16b
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_169

    :sswitch_170
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcTag$Stub;->setTimeout(II)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_18a
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getTimeout(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_1a0
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->resetTimeouts()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1ae
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->canMakeReadOnly(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1c7

    const/4 v11, 0x1

    :goto_1c2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_1c7
    const/4 v11, 0x0

    goto :goto_1c2

    :sswitch_1c9
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/nfc/INfcTag$Stub;->getMaxTransceiveLength(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_1df
    const-string/jumbo v11, "android.nfc.INfcTag"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/INfcTag$Stub;->getExtendedLengthApdusSupported()Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1f4

    const/4 v11, 0x1

    :goto_1ef
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_1f4
    const/4 v11, 0x0

    goto :goto_1ef

    :sswitch_data_1f6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_40
        0x4 -> :sswitch_56
        0x5 -> :sswitch_71
        0x6 -> :sswitch_8c
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_dd
        0x9 -> :sswitch_103
        0xa -> :sswitch_119
        0xb -> :sswitch_134
        0xc -> :sswitch_14e
        0xd -> :sswitch_170
        0xe -> :sswitch_18a
        0xf -> :sswitch_1a0
        0x10 -> :sswitch_1ae
        0x11 -> :sswitch_1c9
        0x12 -> :sswitch_1df
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

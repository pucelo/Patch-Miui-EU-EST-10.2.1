.class public abstract Lcom/miui/enterprise/IDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/miui/enterprise/IDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IDeviceManager"

.field static final TRANSACTION_captureScreen:I = 0x16

.field static final TRANSACTION_deviceReboot:I = 0x3

.field static final TRANSACTION_deviceShutDown:I = 0x2

.field static final TRANSACTION_enableUsbDebug:I = 0x1c

.field static final TRANSACTION_formatSdCard:I = 0x4

.field static final TRANSACTION_getIpBlackList:I = 0x1b

.field static final TRANSACTION_getIpWhiteList:I = 0x1a

.field static final TRANSACTION_getUrlBlackList:I = 0x8

.field static final TRANSACTION_getUrlWhiteList:I = 0x7

.field static final TRANSACTION_getWifiApBssidBlackList:I = 0x13

.field static final TRANSACTION_getWifiApBssidWhiteList:I = 0x11

.field static final TRANSACTION_getWifiApSsidBlackList:I = 0x12

.field static final TRANSACTION_getWifiApSsidWhiteList:I = 0x10

.field static final TRANSACTION_getWifiConnRestriction:I = 0xb

.field static final TRANSACTION_isDeviceRoot:I = 0x1

.field static final TRANSACTION_recoveryFactory:I = 0x9

.field static final TRANSACTION_setBootAnimation:I = 0x1d

.field static final TRANSACTION_setBrowserRestriction:I = 0x15

.field static final TRANSACTION_setIpBlackList:I = 0x19

.field static final TRANSACTION_setIpRestriction:I = 0x17

.field static final TRANSACTION_setIpWhiteList:I = 0x18

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setUrlBlackList:I = 0x6

.field static final TRANSACTION_setUrlWhiteList:I = 0x5

.field static final TRANSACTION_setWifiApBssidBlackList:I = 0xf

.field static final TRANSACTION_setWifiApBssidWhiteList:I = 0xd

.field static final TRANSACTION_setWifiApSsidBlackList:I = 0xe

.field static final TRANSACTION_setWifiApSsidWhiteList:I = 0xc

.field static final TRANSACTION_setWifiConnRestriction:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IDeviceManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.enterprise.IDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IDeviceManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/enterprise/IDeviceManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_28e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_8
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_10
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->isDeviceRoot()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_25

    const/4 v9, 0x1

    :goto_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_25
    const/4 v9, 0x0

    goto :goto_20

    :sswitch_27
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceShutDown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_35
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->deviceReboot()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_43
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->formatSdCard()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_51
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_67
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setUrlBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_7d
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlWhiteList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_93
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_a9
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_be

    const/4 v3, 0x1

    :goto_b6
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->recoveryFactory(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_be
    const/4 v3, 0x0

    goto :goto_b6

    :sswitch_c0
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiConnRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_d6
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiConnRestriction(I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_ec
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_102
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_118
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApSsidBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_12e
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setWifiApBssidBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_144
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidWhiteList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_15a
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidWhiteList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_170
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApSsidBlackList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_186
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getWifiApBssidBlackList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_19c
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->setRingerMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_1ae
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBrowserRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_1c4
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;->captureScreen()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1dd

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1db
    const/4 v9, 0x1

    return v9

    :cond_1dd
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1db

    :sswitch_1e2
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_1f8
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_20e
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IDeviceManager$Stub;->setIpBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_224
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpWhiteList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_23a
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IDeviceManager$Stub;->getIpBlackList(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_250
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_265

    const/4 v3, 0x1

    :goto_25d
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IDeviceManager$Stub;->enableUsbDebug(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_265
    const/4 v3, 0x0

    goto :goto_25d

    :sswitch_267
    const-string/jumbo v9, "com.miui.enterprise.IDeviceManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_28a

    sget-object v9, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    :goto_27b
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IDeviceManager$Stub;->setBootAnimation(Landroid/os/ParcelFileDescriptor;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_28c

    const/4 v9, 0x1

    :goto_285
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_28a
    const/4 v1, 0x0

    goto :goto_27b

    :cond_28c
    const/4 v9, 0x0

    goto :goto_285

    :sswitch_data_28e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_35
        0x4 -> :sswitch_43
        0x5 -> :sswitch_51
        0x6 -> :sswitch_67
        0x7 -> :sswitch_7d
        0x8 -> :sswitch_93
        0x9 -> :sswitch_a9
        0xa -> :sswitch_c0
        0xb -> :sswitch_d6
        0xc -> :sswitch_ec
        0xd -> :sswitch_102
        0xe -> :sswitch_118
        0xf -> :sswitch_12e
        0x10 -> :sswitch_144
        0x11 -> :sswitch_15a
        0x12 -> :sswitch_170
        0x13 -> :sswitch_186
        0x14 -> :sswitch_19c
        0x15 -> :sswitch_1ae
        0x16 -> :sswitch_1c4
        0x17 -> :sswitch_1e2
        0x18 -> :sswitch_1f8
        0x19 -> :sswitch_20e
        0x1a -> :sswitch_224
        0x1b -> :sswitch_23a
        0x1c -> :sswitch_250
        0x1d -> :sswitch_267
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

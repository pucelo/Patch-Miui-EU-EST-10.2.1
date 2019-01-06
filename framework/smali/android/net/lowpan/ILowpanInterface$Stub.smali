.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterface"

.field static final TRANSACTION_addExternalRoute:I = 0x27

.field static final TRANSACTION_addListener:I = 0x1f

.field static final TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final TRANSACTION_attach:I = 0x16

.field static final TRANSACTION_beginLowPower:I = 0x1c

.field static final TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final TRANSACTION_form:I = 0x15

.field static final TRANSACTION_getDriverVersion:I = 0x3

.field static final TRANSACTION_getExtendedAddress:I = 0xf

.field static final TRANSACTION_getLinkAddresses:I = 0x12

.field static final TRANSACTION_getLinkNetworks:I = 0x13

.field static final TRANSACTION_getLowpanCredential:I = 0x11

.field static final TRANSACTION_getLowpanIdentity:I = 0x10

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getNcpVersion:I = 0x2

.field static final TRANSACTION_getPartitionId:I = 0xe

.field static final TRANSACTION_getRole:I = 0xd

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getSupportedChannels:I = 0x4

.field static final TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final TRANSACTION_isCommissioned:I = 0xa

.field static final TRANSACTION_isConnected:I = 0xb

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isUp:I = 0x9

.field static final TRANSACTION_join:I = 0x14

.field static final TRANSACTION_leave:I = 0x17

.field static final TRANSACTION_onHostWake:I = 0x1e

.field static final TRANSACTION_pollForData:I = 0x1d

.field static final TRANSACTION_removeExternalRoute:I = 0x28

.field static final TRANSACTION_removeListener:I = 0x20

.field static final TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final TRANSACTION_reset:I = 0x18

.field static final TRANSACTION_sendToCommissioner:I = 0x1b

.field static final TRANSACTION_setEnabled:I = 0x8

.field static final TRANSACTION_startCommissioningSession:I = 0x19

.field static final TRANSACTION_startEnergyScan:I = 0x23

.field static final TRANSACTION_startNetScan:I = 0x21

.field static final TRANSACTION_stopEnergyScan:I = 0x24

.field static final TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.lowpan.ILowpanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.lowpan.ILowpanInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/lowpan/ILowpanInterface;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_4dc

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    :sswitch_8
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_15
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_2e
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getNcpVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_47
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDriverVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_60
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v22, 0x1

    return v22

    :sswitch_7f
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_9a
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getMacAddress()[B

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v22, 0x1

    return v22

    :sswitch_b5
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isEnabled()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_d4

    const/16 v22, 0x1

    :goto_ca
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_d4
    const/16 v22, 0x0

    goto :goto_ca

    :sswitch_d7
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_f3

    const/4 v8, 0x1

    :goto_e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/lowpan/ILowpanInterface$Stub;->setEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_f3
    const/4 v8, 0x0

    goto :goto_e8

    :sswitch_f5
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isUp()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_114

    const/16 v22, 0x1

    :goto_10a
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_114
    const/16 v22, 0x0

    goto :goto_10a

    :sswitch_117
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isCommissioned()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_136

    const/16 v22, 0x1

    :goto_12c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_136
    const/16 v22, 0x0

    goto :goto_12c

    :sswitch_139
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isConnected()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_158

    const/16 v22, 0x1

    :goto_14e
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_158
    const/16 v22, 0x0

    goto :goto_14e

    :sswitch_15b
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getState()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_174
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getRole()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_18d
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getPartitionId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_1a6
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getExtendedAddress()[B

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v22, 0x1

    return v22

    :sswitch_1c1
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1e9

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1e6
    const/16 v22, 0x1

    return v22

    :cond_1e9
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e6

    :sswitch_1f3
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_21b

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/net/lowpan/LowpanCredential;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_218
    const/16 v22, 0x1

    return v22

    :cond_21b
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_218

    :sswitch_225
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_240
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v22, 0x1

    return v22

    :sswitch_25f
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_286

    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    :goto_27b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->join(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_286
    const/4 v6, 0x0

    goto :goto_27b

    :sswitch_288
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2af

    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    :goto_2a4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->form(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_2af
    const/4 v6, 0x0

    goto :goto_2a4

    :sswitch_2b1
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2d8

    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    :goto_2cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->attach(Landroid/net/lowpan/LowpanProvision;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_2d8
    const/4 v6, 0x0

    goto :goto_2cd

    :sswitch_2da
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->leave()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_2ed
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->reset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_300
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_327

    sget-object v22, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/lowpan/LowpanBeaconInfo;

    :goto_31c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_327
    const/4 v5, 0x0

    goto :goto_31c

    :sswitch_329
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->closeCommissioningSession()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_33c
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/lowpan/ILowpanInterface$Stub;->sendToCommissioner([B)V

    const/16 v22, 0x1

    return v22

    :sswitch_352
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->beginLowPower()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_365
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->pollForData()V

    const/16 v22, 0x1

    return v22

    :sswitch_375
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->onHostWake()V

    const/16 v22, 0x1

    return v22

    :sswitch_385
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_3a2
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    const/16 v22, 0x1

    return v22

    :sswitch_3bc
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Landroid/net/lowpan/ILowpanInterface$Stub;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_3e9
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopNetScan()V

    const/16 v22, 0x1

    return v22

    :sswitch_3f9
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/net/lowpan/ILowpanInterface$Stub;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_426
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopEnergyScan()V

    const/16 v22, 0x1

    return v22

    :sswitch_436
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_461

    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    :goto_452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/lowpan/ILowpanInterface$Stub;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_461
    const/4 v3, 0x0

    goto :goto_452

    :sswitch_463
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_487

    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    :goto_47f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    const/16 v22, 0x1

    return v22

    :cond_487
    const/4 v3, 0x0

    goto :goto_47f

    :sswitch_489
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4b4

    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    :goto_4a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/lowpan/ILowpanInterface$Stub;->addExternalRoute(Landroid/net/IpPrefix;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :cond_4b4
    const/4 v3, 0x0

    goto :goto_4a5

    :sswitch_4b6
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4da

    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    :goto_4d2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeExternalRoute(Landroid/net/IpPrefix;)V

    const/16 v22, 0x1

    return v22

    :cond_4da
    const/4 v3, 0x0

    goto :goto_4d2

    :sswitch_data_4dc
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_47
        0x4 -> :sswitch_60
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_d7
        0x9 -> :sswitch_f5
        0xa -> :sswitch_117
        0xb -> :sswitch_139
        0xc -> :sswitch_15b
        0xd -> :sswitch_174
        0xe -> :sswitch_18d
        0xf -> :sswitch_1a6
        0x10 -> :sswitch_1c1
        0x11 -> :sswitch_1f3
        0x12 -> :sswitch_225
        0x13 -> :sswitch_240
        0x14 -> :sswitch_25f
        0x15 -> :sswitch_288
        0x16 -> :sswitch_2b1
        0x17 -> :sswitch_2da
        0x18 -> :sswitch_2ed
        0x19 -> :sswitch_300
        0x1a -> :sswitch_329
        0x1b -> :sswitch_33c
        0x1c -> :sswitch_352
        0x1d -> :sswitch_365
        0x1e -> :sswitch_375
        0x1f -> :sswitch_385
        0x20 -> :sswitch_3a2
        0x21 -> :sswitch_3bc
        0x22 -> :sswitch_3e9
        0x23 -> :sswitch_3f9
        0x24 -> :sswitch_426
        0x25 -> :sswitch_436
        0x26 -> :sswitch_463
        0x27 -> :sswitch_489
        0x28 -> :sswitch_4b6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

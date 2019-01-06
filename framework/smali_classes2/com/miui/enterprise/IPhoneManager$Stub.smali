.class public abstract Lcom/miui/enterprise/IPhoneManager$Stub;
.super Landroid/os/Binder;
.source "IPhoneManager.java"

# interfaces
.implements Lcom/miui/enterprise/IPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IPhoneManager"

.field static final TRANSACTION_controlCellular:I = 0x3

.field static final TRANSACTION_controlPhoneCall:I = 0x2

.field static final TRANSACTION_controlSMS:I = 0x1

.field static final TRANSACTION_disableCallForward:I = 0x18

.field static final TRANSACTION_disableCallLog:I = 0x19

.field static final TRANSACTION_endCall:I = 0x17

.field static final TRANSACTION_getAreaCode:I = 0x1a

.field static final TRANSACTION_getCallBlackList:I = 0x13

.field static final TRANSACTION_getCallContactRestriction:I = 0x16

.field static final TRANSACTION_getCallWhiteList:I = 0x14

.field static final TRANSACTION_getCellularStatus:I = 0x6

.field static final TRANSACTION_getIMEI:I = 0x7

.field static final TRANSACTION_getMeid:I = 0x1b

.field static final TRANSACTION_getPhoneCallStatus:I = 0x5

.field static final TRANSACTION_getSMSBlackList:I = 0xd

.field static final TRANSACTION_getSMSContactRestriction:I = 0x10

.field static final TRANSACTION_getSMSStatus:I = 0x4

.field static final TRANSACTION_getSMSWhiteList:I = 0xe

.field static final TRANSACTION_isAutoRecordPhoneCall:I = 0xa

.field static final TRANSACTION_setCallBlackList:I = 0x11

.field static final TRANSACTION_setCallContactRestriction:I = 0x15

.field static final TRANSACTION_setCallWhiteList:I = 0x12

.field static final TRANSACTION_setIccCardActivate:I = 0x1c

.field static final TRANSACTION_setPhoneCallAutoRecord:I = 0x8

.field static final TRANSACTION_setPhoneCallAutoRecordDir:I = 0x9

.field static final TRANSACTION_setSMSBlackList:I = 0xb

.field static final TRANSACTION_setSMSContactRestriction:I = 0xf

.field static final TRANSACTION_setSMSWhiteList:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.enterprise.IPhoneManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IPhoneManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/enterprise/IPhoneManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_27e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlSMS(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_26
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlPhoneCall(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_3c
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlCellular(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_52
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSStatus(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_68
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getPhoneCallStatus(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_7e
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCellularStatus(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_94
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getIMEI(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_aa
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c3

    const/4 v3, 0x1

    :goto_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecord(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_c3
    const/4 v3, 0x0

    goto :goto_b7

    :sswitch_c5
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_d7
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->isAutoRecordPhoneCall(I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_f0

    const/4 v10, 0x1

    :goto_eb
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_f0
    const/4 v10, 0x0

    goto :goto_eb

    :sswitch_f2
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_108
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_11e
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_134
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_14a
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSContactRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_160
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSContactRestriction(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_176
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallBlackList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_18c
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallWhiteList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_1a2
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallBlackList(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1b8
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1ce
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallContactRestriction(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_1e4
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallContactRestriction(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_1fa
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;->endCall()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_208
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21d

    const/4 v3, 0x1

    :goto_215
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallForward(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_21d
    const/4 v3, 0x0

    goto :goto_215

    :sswitch_21f
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_234

    const/4 v3, 0x1

    :goto_22c
    invoke-virtual {p0, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallLog(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_234
    const/4 v3, 0x0

    goto :goto_22c

    :sswitch_236
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IPhoneManager$Stub;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_24c
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->getMeid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_262
    const-string/jumbo v10, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27b

    const/4 v5, 0x1

    :goto_273
    invoke-virtual {p0, v0, v5}, Lcom/miui/enterprise/IPhoneManager$Stub;->setIccCardActivate(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_27b
    const/4 v5, 0x0

    goto :goto_273

    nop

    :sswitch_data_27e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_52
        0x5 -> :sswitch_68
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_94
        0x8 -> :sswitch_aa
        0x9 -> :sswitch_c5
        0xa -> :sswitch_d7
        0xb -> :sswitch_f2
        0xc -> :sswitch_108
        0xd -> :sswitch_11e
        0xe -> :sswitch_134
        0xf -> :sswitch_14a
        0x10 -> :sswitch_160
        0x11 -> :sswitch_176
        0x12 -> :sswitch_18c
        0x13 -> :sswitch_1a2
        0x14 -> :sswitch_1b8
        0x15 -> :sswitch_1ce
        0x16 -> :sswitch_1e4
        0x17 -> :sswitch_1fa
        0x18 -> :sswitch_208
        0x19 -> :sswitch_21f
        0x1a -> :sswitch_236
        0x1b -> :sswitch_24c
        0x1c -> :sswitch_262
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

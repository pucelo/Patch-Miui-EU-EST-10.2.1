.class public abstract Lcom/miui/enterprise/IAPNManager$Stub;
.super Landroid/os/Binder;
.source "IAPNManager.java"

# interfaces
.implements Lcom/miui/enterprise/IAPNManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IAPNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IAPNManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IAPNManager"

.field static final TRANSACTION_activeAPN:I = 0xc

.field static final TRANSACTION_activeAPNForNumeric:I = 0xb

.field static final TRANSACTION_addAPN:I = 0x6

.field static final TRANSACTION_addAPNForNumeric:I = 0x5

.field static final TRANSACTION_deleteAPN:I = 0x8

.field static final TRANSACTION_deleteAPNForNumeric:I = 0x7

.field static final TRANSACTION_editAPN:I = 0xa

.field static final TRANSACTION_editAPNForNumeric:I = 0x9

.field static final TRANSACTION_getAPN:I = 0x4

.field static final TRANSACTION_getAPNActiveMode:I = 0xf

.field static final TRANSACTION_getAPNForNumeric:I = 0x3

.field static final TRANSACTION_getAPNList:I = 0x2

.field static final TRANSACTION_getAPNListForNumeric:I = 0x1

.field static final TRANSACTION_queryApn:I = 0x10

.field static final TRANSACTION_resetAPN:I = 0xd

.field static final TRANSACTION_setAPNActiveMode:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IAPNManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.enterprise.IAPNManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IAPNManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/enterprise/IAPNManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IAPNManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_1ce

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    :sswitch_26
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    :sswitch_38
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_59

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Lcom/miui/enterprise/sdk/APNConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_57
    const/4 v11, 0x1

    return v11

    :cond_59
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :sswitch_5e
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7b

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v7, p3, v11}, Lcom/miui/enterprise/sdk/APNConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_79
    const/4 v11, 0x1

    return v11

    :cond_7b
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_79

    :sswitch_80
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a0

    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    :goto_98
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_a0
    const/4 v3, 0x0

    goto :goto_98

    :sswitch_a2
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c5

    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/enterprise/sdk/APNConfig;

    :goto_b6
    invoke-virtual {p0, v1}, Lcom/miui/enterprise/IAPNManager$Stub;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_c7

    const/4 v11, 0x1

    :goto_c0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_c5
    const/4 v1, 0x0

    goto :goto_b6

    :cond_c7
    const/4 v11, 0x0

    goto :goto_c0

    :sswitch_c9
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_df
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->deleteAPN(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_f8

    const/4 v11, 0x1

    :goto_f3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_f8
    const/4 v11, 0x0

    goto :goto_f3

    :sswitch_fa
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_11e

    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/enterprise/sdk/APNConfig;

    :goto_116
    invoke-virtual {p0, v2, v4, v5}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_11e
    const/4 v5, 0x0

    goto :goto_116

    :sswitch_120
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_147

    sget-object v11, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/enterprise/sdk/APNConfig;

    :goto_138
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IAPNManager$Stub;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_149

    const/4 v11, 0x1

    :goto_142
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_147
    const/4 v3, 0x0

    goto :goto_138

    :cond_149
    const/4 v11, 0x0

    goto :goto_142

    :sswitch_14b
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_161
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->activeAPN(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_17a

    const/4 v11, 0x1

    :goto_175
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_17a
    const/4 v11, 0x0

    goto :goto_175

    :sswitch_17c
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->resetAPN()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_191

    const/4 v11, 0x1

    :goto_18c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_191
    const/4 v11, 0x0

    goto :goto_18c

    :sswitch_193
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/IAPNManager$Stub;->setAPNActiveMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_1a5
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/enterprise/IAPNManager$Stub;->getAPNActiveMode()I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :sswitch_1b7
    const-string/jumbo v11, "com.miui.enterprise.IAPNManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IAPNManager$Stub;->queryApn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    nop

    :sswitch_data_1ce
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_38
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_80
        0x6 -> :sswitch_a2
        0x7 -> :sswitch_c9
        0x8 -> :sswitch_df
        0x9 -> :sswitch_fa
        0xa -> :sswitch_120
        0xb -> :sswitch_14b
        0xc -> :sswitch_161
        0xd -> :sswitch_17c
        0xe -> :sswitch_193
        0xf -> :sswitch_1a5
        0x10 -> :sswitch_1b7
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IEuiccController"

.field static final TRANSACTION_continueOperation:I = 0x1

.field static final TRANSACTION_deleteSubscription:I = 0x7

.field static final TRANSACTION_downloadSubscription:I = 0x5

.field static final TRANSACTION_eraseSubscriptions:I = 0xa

.field static final TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final TRANSACTION_getEid:I = 0x4

.field static final TRANSACTION_getEuiccInfo:I = 0x6

.field static final TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xb

.field static final TRANSACTION_switchToSubscription:I = 0x8

.field static final TRANSACTION_updateSubscriptionNickname:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1da

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_8
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_41

    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_43

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v15, 0x1

    return v15

    :cond_41
    const/4 v3, 0x0

    goto :goto_2a

    :cond_43
    const/4 v7, 0x0

    goto :goto_3a

    :sswitch_45
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_78

    sget-object v15, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/euicc/DownloadableSubscription;

    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_7a

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    :goto_71
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_78
    const/4 v4, 0x0

    goto :goto_5d

    :cond_7a
    const/4 v10, 0x0

    goto :goto_71

    :sswitch_7c
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_9f

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    :goto_98
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_9f
    const/4 v6, 0x0

    goto :goto_98

    :sswitch_a1
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_b7
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f1

    sget-object v15, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/euicc/DownloadableSubscription;

    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f3

    const/4 v9, 0x1

    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f5

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    :goto_ea
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v11, v12}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_f1
    const/4 v4, 0x0

    goto :goto_cf

    :cond_f3
    const/4 v9, 0x0

    goto :goto_d6

    :cond_f5
    const/4 v12, 0x0

    goto :goto_ea

    :sswitch_f7
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_116

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v15}, Landroid/telephony/euicc/EuiccInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_114
    const/4 v15, 0x1

    return v15

    :cond_116
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_114

    :sswitch_11d
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_144

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    :goto_13d
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_144
    const/4 v10, 0x0

    goto :goto_13d

    :sswitch_146
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_16d

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    :goto_166
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_16d
    const/4 v10, 0x0

    goto :goto_166

    :sswitch_16f
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_196

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    :goto_18f
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_196
    const/4 v10, 0x0

    goto :goto_18f

    :sswitch_198
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1b7

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_1b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_1b7
    const/4 v2, 0x0

    goto :goto_1b0

    :sswitch_1b9
    const-string/jumbo v15, "com.android.internal.telephony.euicc.IEuiccController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1d8

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_1d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V

    const/4 v15, 0x1

    return v15

    :cond_1d8
    const/4 v2, 0x0

    goto :goto_1d1

    :sswitch_data_1da
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_45
        0x3 -> :sswitch_7c
        0x4 -> :sswitch_a1
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_f7
        0x7 -> :sswitch_11d
        0x8 -> :sswitch_146
        0x9 -> :sswitch_16f
        0xa -> :sswitch_198
        0xb -> :sswitch_1b9
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_publishMyCap:I = 0x5

.field static final TRANSACTION_reenableService:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1e8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_8
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_12
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_35

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    const/4 v13, 0x1

    return v13

    :cond_35
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :sswitch_3c
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_85

    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_60
    invoke-virtual {p0, v1, v4, v9}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_87

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_75
    if-eqz v9, :cond_8e

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_83
    const/4 v13, 0x1

    return v13

    :cond_85
    const/4 v9, 0x0

    goto :goto_60

    :cond_87
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_75

    :cond_8e
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_83

    :sswitch_95
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_c8

    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_b1
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_ca

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c6
    const/4 v13, 0x1

    return v13

    :cond_c8
    const/4 v3, 0x0

    goto :goto_b1

    :cond_ca
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c6

    :sswitch_d1
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_f8

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f6
    const/4 v13, 0x1

    return v13

    :cond_f8
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f6

    :sswitch_ff
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_136

    sget-object v13, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    :goto_11b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v5, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_138

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_134
    const/4 v13, 0x1

    return v13

    :cond_136
    const/4 v5, 0x0

    goto :goto_11b

    :cond_138
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_134

    :sswitch_13f
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v6, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_16a

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_168
    const/4 v13, 0x1

    return v13

    :cond_16a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_168

    :sswitch_171
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_19c

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_19a
    const/4 v13, 0x1

    return v13

    :cond_19c
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19a

    :sswitch_1a3
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1de

    sget-object v13, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    :goto_1c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p0, v1, v6, v10, v11}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_1e0

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1dc
    const/4 v13, 0x1

    return v13

    :cond_1de
    const/4 v10, 0x0

    goto :goto_1c3

    :cond_1e0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1dc

    nop

    :sswitch_data_1e8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_95
        0x4 -> :sswitch_d1
        0x5 -> :sswitch_ff
        0x6 -> :sswitch_13f
        0x7 -> :sswitch_171
        0x8 -> :sswitch_1a3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

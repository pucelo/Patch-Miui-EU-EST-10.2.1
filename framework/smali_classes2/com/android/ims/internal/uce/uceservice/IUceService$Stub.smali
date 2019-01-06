.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final TRANSACTION_createOptionsService:I = 0x4

.field static final TRANSACTION_createOptionsServiceForSubscription:I = 0x5

.field static final TRANSACTION_createPresenceService:I = 0x7

.field static final TRANSACTION_createPresenceServiceForSubscription:I = 0x8

.field static final TRANSACTION_destroyOptionsService:I = 0x6

.field static final TRANSACTION_destroyPresenceService:I = 0x9

.field static final TRANSACTION_getOptionsService:I = 0xd

.field static final TRANSACTION_getOptionsServiceForSubscription:I = 0xe

.field static final TRANSACTION_getPresenceService:I = 0xb

.field static final TRANSACTION_getPresenceServiceForSubscription:I = 0xc

.field static final TRANSACTION_getServiceStatus:I = 0xa

.field static final TRANSACTION_isServiceStarted:I = 0x3

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_1f4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_2d

    const/4 v11, 0x1

    :goto_28
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_2d
    const/4 v11, 0x0

    goto :goto_28

    :sswitch_2f
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_44

    const/4 v11, 0x1

    :goto_3f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_44
    const/4 v11, 0x0

    goto :goto_3f

    :sswitch_46
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_5b

    const/4 v11, 0x1

    :goto_56
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_5b
    const/4 v11, 0x0

    goto :goto_56

    :sswitch_5d
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8f

    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_79
    invoke-virtual {p0, v1, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_91

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8d
    const/4 v11, 0x1

    return v11

    :cond_8f
    const/4 v5, 0x0

    goto :goto_79

    :cond_91
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8d

    :sswitch_96
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_cc

    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_ce

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ca
    const/4 v11, 0x1

    return v11

    :cond_cc
    const/4 v5, 0x0

    goto :goto_b2

    :cond_ce
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ca

    :sswitch_d3
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_e5
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_117

    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_101
    invoke-virtual {p0, v2, v5}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_119

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_115
    const/4 v11, 0x1

    return v11

    :cond_117
    const/4 v5, 0x0

    goto :goto_101

    :cond_119
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_115

    :sswitch_11e
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_154

    sget-object v11, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_156

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v5, p3, v11}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_152
    const/4 v11, 0x1

    return v11

    :cond_154
    const/4 v5, 0x0

    goto :goto_13a

    :cond_156
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_152

    :sswitch_15b
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_16d
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_182

    const/4 v11, 0x1

    :goto_17d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_182
    const/4 v11, 0x0

    goto :goto_17d

    :sswitch_184
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_19c

    invoke-interface {v9}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_197
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    :cond_19c
    const/4 v11, 0x0

    goto :goto_197

    :sswitch_19e
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_1ba

    invoke-interface {v9}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_1b5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    :cond_1ba
    const/4 v11, 0x0

    goto :goto_1b5

    :sswitch_1bc
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1d4

    invoke-interface {v8}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_1cf
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    :cond_1d4
    const/4 v11, 0x0

    goto :goto_1cf

    :sswitch_1d6
    const-string/jumbo v11, "com.android.ims.internal.uce.uceservice.IUceService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_1f2

    invoke-interface {v8}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    :goto_1ed
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    return v11

    :cond_1f2
    const/4 v11, 0x0

    goto :goto_1ed

    :sswitch_data_1f4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_96
        0x6 -> :sswitch_d3
        0x7 -> :sswitch_e5
        0x8 -> :sswitch_11e
        0x9 -> :sswitch_15b
        0xa -> :sswitch_16d
        0xb -> :sswitch_184
        0xc -> :sswitch_19e
        0xd -> :sswitch_1bc
        0xe -> :sswitch_1d6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

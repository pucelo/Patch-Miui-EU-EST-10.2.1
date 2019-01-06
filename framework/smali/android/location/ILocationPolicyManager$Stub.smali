.class public abstract Landroid/location/ILocationPolicyManager$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicyManager.java"

# interfaces
.implements Landroid/location/ILocationPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationPolicyManager"

.field static final TRANSACTION_checkUidLocationOp:I = 0x8

.field static final TRANSACTION_checkUidNavigationScreenLock:I = 0x6

.field static final TRANSACTION_getLocationPolicies:I = 0xc

.field static final TRANSACTION_getRestrictBackground:I = 0xe

.field static final TRANSACTION_getUidPolicy:I = 0x2

.field static final TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x9

.field static final TRANSACTION_setFakeGpsFeatureOnState:I = 0xf

.field static final TRANSACTION_setLocationPolicies:I = 0xb

.field static final TRANSACTION_setPhoneStationary:I = 0x10

.field static final TRANSACTION_setRestrictBackground:I = 0xd

.field static final TRANSACTION_setUidNavigationStart:I = 0x4

.field static final TRANSACTION_setUidNavigationStop:I = 0x5

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.location.ILocationPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.location.ILocationPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationPolicyManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/location/ILocationPolicyManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/location/ILocationPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_186

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/location/ILocationPolicyManager$Stub;->setUidPolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_26
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidPolicy(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_3c
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v10, 0x1

    return v10

    :sswitch_52
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStart(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_64
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStop(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_76
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->checkUidNavigationScreenLock(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_8f

    const/4 v10, 0x1

    :goto_8a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_8f
    const/4 v10, 0x0

    goto :goto_8a

    :sswitch_91
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->isUidForeground(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_aa

    const/4 v10, 0x1

    :goto_a5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_aa
    const/4 v10, 0x0

    goto :goto_a5

    :sswitch_ac
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/location/ILocationPolicyManager$Stub;->checkUidLocationOp(II)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_c9

    const/4 v10, 0x1

    :goto_c4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_c9
    const/4 v10, 0x0

    goto :goto_c4

    :sswitch_cb
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->registerListener(Landroid/location/ILocationPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_e1
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->unregisterListener(Landroid/location/ILocationPolicyListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_f7
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v10, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/location/LocationPolicy;

    invoke-virtual {p0, v3}, Landroid/location/ILocationPolicyManager$Stub;->setLocationPolicies([Landroid/location/LocationPolicy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_10d
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v10, 0x1

    return v10

    :sswitch_120
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_135

    const/4 v2, 0x1

    :goto_12d
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setRestrictBackground(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_135
    const/4 v2, 0x0

    goto :goto_12d

    :sswitch_137
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getRestrictBackground()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_14c

    const/4 v10, 0x1

    :goto_147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_14c
    const/4 v10, 0x0

    goto :goto_147

    :sswitch_14e
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_160

    const/4 v2, 0x1

    :goto_15b
    invoke-virtual {p0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setFakeGpsFeatureOnState(Z)V

    const/4 v10, 0x1

    return v10

    :cond_160
    const/4 v2, 0x0

    goto :goto_15b

    :sswitch_162
    const-string/jumbo v10, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_182

    const/4 v2, 0x1

    :goto_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_184

    sget-object v10, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    :goto_17d
    invoke-virtual {p0, v2, v5}, Landroid/location/ILocationPolicyManager$Stub;->setPhoneStationary(ZLandroid/location/Location;)V

    const/4 v10, 0x1

    return v10

    :cond_182
    const/4 v2, 0x0

    goto :goto_16f

    :cond_184
    const/4 v5, 0x0

    goto :goto_17d

    :sswitch_data_186
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_52
        0x5 -> :sswitch_64
        0x6 -> :sswitch_76
        0x7 -> :sswitch_91
        0x8 -> :sswitch_ac
        0x9 -> :sswitch_cb
        0xa -> :sswitch_e1
        0xb -> :sswitch_f7
        0xc -> :sswitch_10d
        0xd -> :sswitch_120
        0xe -> :sswitch_137
        0xf -> :sswitch_14e
        0x10 -> :sswitch_162
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

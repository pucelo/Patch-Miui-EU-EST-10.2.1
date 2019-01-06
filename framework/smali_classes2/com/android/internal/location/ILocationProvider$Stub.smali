.class public abstract Lcom/android/internal/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Lcom/android/internal/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.location.ILocationProvider"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getProperties:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x5

.field static final TRANSACTION_getStatusUpdateTime:I = 0x6

.field static final TRANSACTION_sendExtraCommand:I = 0x7

.field static final TRANSACTION_setRequest:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.location.ILocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/location/ILocationProvider;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/location/ILocationProvider;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_ea

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->enable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_1e
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->disable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_2c
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_56

    sget-object v10, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/ProviderRequest;

    :goto_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_58

    sget-object v10, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    :goto_4e
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/location/ILocationProvider$Stub;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_56
    const/4 v1, 0x0

    goto :goto_40

    :cond_58
    const/4 v4, 0x0

    goto :goto_4e

    :sswitch_5a
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_73

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v8, p3, v10}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_71
    const/4 v10, 0x1

    return v10

    :cond_73
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    :sswitch_78
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_99

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v0, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_97
    const/4 v10, 0x1

    return v10

    :cond_99
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_97

    :sswitch_9e
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v10, 0x1

    return v10

    :sswitch_b0
    const-string/jumbo v10, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e1

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_c8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_e3

    const/4 v10, 0x1

    :goto_d2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v3, :cond_e5

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v3, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_df
    const/4 v10, 0x1

    return v10

    :cond_e1
    const/4 v3, 0x0

    goto :goto_c8

    :cond_e3
    const/4 v10, 0x0

    goto :goto_d2

    :cond_e5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_df

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_78
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b0
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public abstract Landroid/app/usage/IStorageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IStorageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IStorageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IStorageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IStorageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IStorageStatsManager"

.field static final TRANSACTION_getCacheBytes:I = 0x4

.field static final TRANSACTION_getCacheQuotaBytes:I = 0x5

.field static final TRANSACTION_getFreeBytes:I = 0x3

.field static final TRANSACTION_getTotalBytes:I = 0x2

.field static final TRANSACTION_isQuotaSupported:I = 0x1

.field static final TRANSACTION_queryExternalStatsForUser:I = 0x9

.field static final TRANSACTION_queryStatsForPackage:I = 0x6

.field static final TRANSACTION_queryStatsForUid:I = 0x7

.field static final TRANSACTION_queryStatsForUser:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.usage.IStorageStatsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/usage/IStorageStatsManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/usage/IStorageStatsManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_148

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

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
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v11, 0x1

    return v11

    :sswitch_49
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v11, 0x1

    return v11

    :sswitch_63
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v11, 0x1

    return v11

    :sswitch_7d
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v11, 0x1

    return v11

    :sswitch_9b
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v3, v5}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_c4

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, p3, v11}, Landroid/app/usage/StorageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c2
    const/4 v11, 0x1

    return v11

    :cond_c4
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c2

    :sswitch_c9
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_ee

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, p3, v11}, Landroid/app/usage/StorageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_ec
    const/4 v11, 0x1

    return v11

    :cond_ee
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ec

    :sswitch_f3
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_118

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, p3, v11}, Landroid/app/usage/StorageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_116
    const/4 v11, 0x1

    return v11

    :cond_118
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_116

    :sswitch_11d
    const-string/jumbo v11, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_142

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/app/usage/ExternalStorageStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_140
    const/4 v11, 0x1

    return v11

    :cond_142
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_140

    nop

    :sswitch_data_148
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7d
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_c9
        0x8 -> :sswitch_f3
        0x9 -> :sswitch_11d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

.class public abstract Landroid/app/IActivityController$Stub;
.super Landroid/os/Binder;
.source "IActivityController.java"

# interfaces
.implements Landroid/app/IActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityController"

.field static final TRANSACTION_activityResuming:I = 0x2

.field static final TRANSACTION_activityStarting:I = 0x1

.field static final TRANSACTION_appCrashed:I = 0x3

.field static final TRANSACTION_appEarlyNotResponding:I = 0x4

.field static final TRANSACTION_appNotResponding:I = 0x5

.field static final TRANSACTION_systemNotResponding:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IActivityController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityController;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/IActivityController;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/IActivityController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_d8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_8
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_10
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v0, v9}, Landroid/app/IActivityController$Stub;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_39

    const/4 v1, 0x1

    :goto_32
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_37
    const/4 v0, 0x0

    goto :goto_24

    :cond_39
    const/4 v1, 0x0

    goto :goto_32

    :sswitch_3b
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/IActivityController$Stub;->activityResuming(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_54

    const/4 v1, 0x1

    :goto_4f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_4f

    :sswitch_56
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityController$Stub;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v11

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_84

    const/4 v1, 0x1

    :goto_7f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_84
    const/4 v1, 0x0

    goto :goto_7f

    :sswitch_86
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityController$Stub;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_a4
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityController$Stub;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_c2
    const-string/jumbo v1, "android.app.IActivityController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/IActivityController$Stub;->systemNotResponding(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :sswitch_data_d8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_56
        0x4 -> :sswitch_86
        0x5 -> :sswitch_a4
        0x6 -> :sswitch_c2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

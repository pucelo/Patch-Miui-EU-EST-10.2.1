.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final TRANSACTION_onPackageAdded:I = 0x2

.field static final TRANSACTION_onPackageChanged:I = 0x3

.field static final TRANSACTION_onPackageRemoved:I = 0x1

.field static final TRANSACTION_onPackagesAvailable:I = 0x4

.field static final TRANSACTION_onPackagesSuspended:I = 0x6

.field static final TRANSACTION_onPackagesUnavailable:I = 0x5

.field static final TRANSACTION_onPackagesUnsuspended:I = 0x7

.field static final TRANSACTION_onShortcutChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.pm.IOnAppsChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_122

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    return v6

    :cond_2c
    const/4 v0, 0x0

    goto :goto_24

    :sswitch_2e
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    return v6

    :cond_4a
    const/4 v0, 0x0

    goto :goto_42

    :sswitch_4c
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_68

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    return v6

    :cond_68
    const/4 v0, 0x0

    goto :goto_60

    :sswitch_6a
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8d

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8f

    const/4 v4, 0x1

    :goto_89
    invoke-virtual {p0, v0, v2, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    return v6

    :cond_8d
    const/4 v0, 0x0

    goto :goto_7e

    :cond_8f
    const/4 v4, 0x0

    goto :goto_89

    :sswitch_91
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b4

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b6

    const/4 v4, 0x1

    :goto_b0
    invoke-virtual {p0, v0, v2, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    return v6

    :cond_b4
    const/4 v0, 0x0

    goto :goto_a5

    :cond_b6
    const/4 v4, 0x0

    goto :goto_b0

    :sswitch_b8
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d4

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    return v6

    :cond_d4
    const/4 v0, 0x0

    goto :goto_cc

    :sswitch_d6
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f2

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    return v6

    :cond_f2
    const/4 v0, 0x0

    goto :goto_ea

    :sswitch_f4
    const-string/jumbo v5, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11e

    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    :goto_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_120

    sget-object v5, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_11a
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    return v6

    :cond_11e
    const/4 v0, 0x0

    goto :goto_108

    :cond_120
    const/4 v3, 0x0

    goto :goto_11a

    :sswitch_data_122
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_91
        0x6 -> :sswitch_b8
        0x7 -> :sswitch_d6
        0x8 -> :sswitch_f4
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

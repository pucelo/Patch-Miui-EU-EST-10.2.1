.class public abstract Landroid/app/IInstrumentationWatcher$Stub;
.super Landroid/os/Binder;
.source "IInstrumentationWatcher.java"

# interfaces
.implements Landroid/app/IInstrumentationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IInstrumentationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstrumentationWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IInstrumentationWatcher"

.field static final TRANSACTION_instrumentationFinished:I = 0x2

.field static final TRANSACTION_instrumentationStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IInstrumentationWatcher"

    invoke-virtual {p0, p0, v0}, Landroid/app/IInstrumentationWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.IInstrumentationWatcher"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/IInstrumentationWatcher;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/IInstrumentationWatcher$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IInstrumentationWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_72

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3d

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_36
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_3d
    const/4 v0, 0x0

    goto :goto_24

    :cond_3f
    const/4 v2, 0x0

    goto :goto_36

    :sswitch_41
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6e

    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_70

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_67
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_6e
    const/4 v0, 0x0

    goto :goto_55

    :cond_70
    const/4 v2, 0x0

    goto :goto_67

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_41
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

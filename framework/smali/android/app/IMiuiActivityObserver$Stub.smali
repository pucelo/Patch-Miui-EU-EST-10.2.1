.class public abstract Landroid/app/IMiuiActivityObserver$Stub;
.super Landroid/os/Binder;
.source "IMiuiActivityObserver.java"

# interfaces
.implements Landroid/app/IMiuiActivityObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IMiuiActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IMiuiActivityObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IMiuiActivityObserver"

.field static final TRANSACTION_activityDestroyed:I = 0x5

.field static final TRANSACTION_activityIdle:I = 0x1

.field static final TRANSACTION_activityPaused:I = 0x3

.field static final TRANSACTION_activityResumed:I = 0x2

.field static final TRANSACTION_activityStopped:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IMiuiActivityObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IMiuiActivityObserver;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/IMiuiActivityObserver;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/IMiuiActivityObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IMiuiActivityObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_92

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_24
    invoke-virtual {p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->activityIdle(Landroid/content/Intent;)V

    return v2

    :cond_28
    const/4 v0, 0x0

    goto :goto_24

    :sswitch_2a
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_3e
    invoke-virtual {p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->activityResumed(Landroid/content/Intent;)V

    return v2

    :cond_42
    const/4 v0, 0x0

    goto :goto_3e

    :sswitch_44
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_58
    invoke-virtual {p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->activityPaused(Landroid/content/Intent;)V

    return v2

    :cond_5c
    const/4 v0, 0x0

    goto :goto_58

    :sswitch_5e
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_76

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_72
    invoke-virtual {p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->activityStopped(Landroid/content/Intent;)V

    return v2

    :cond_76
    const/4 v0, 0x0

    goto :goto_72

    :sswitch_78
    const-string/jumbo v1, "android.app.IMiuiActivityObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_8c
    invoke-virtual {p0, v0}, Landroid/app/IMiuiActivityObserver$Stub;->activityDestroyed(Landroid/content/Intent;)V

    return v2

    :cond_90
    const/4 v0, 0x0

    goto :goto_8c

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_44
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_78
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

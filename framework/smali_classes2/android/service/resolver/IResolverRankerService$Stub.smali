.class public abstract Landroid/service/resolver/IResolverRankerService$Stub;
.super Landroid/os/Binder;
.source "IResolverRankerService.java"

# interfaces
.implements Landroid/service/resolver/IResolverRankerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/resolver/IResolverRankerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resolver/IResolverRankerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.resolver.IResolverRankerService"

.field static final TRANSACTION_predict:I = 0x1

.field static final TRANSACTION_train:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.resolver.IResolverRankerService"

    invoke-virtual {p0, p0, v0}, Landroid/service/resolver/IResolverRankerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/resolver/IResolverRankerService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.resolver.IResolverRankerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/resolver/IResolverRankerService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/resolver/IResolverRankerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/resolver/IResolverRankerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_3c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.service.resolver.IResolverRankerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.service.resolver.IResolverRankerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/service/resolver/ResolverTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/resolver/IResolverRankerResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/resolver/IResolverRankerResult;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/service/resolver/IResolverRankerService$Stub;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    return v4

    :sswitch_28
    const-string/jumbo v3, "android.service.resolver.IResolverRankerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/service/resolver/ResolverTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/service/resolver/IResolverRankerService$Stub;->train(Ljava/util/List;I)V

    return v4

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

.class public abstract Lcom/miui/server/ISplashPackageCheckListener$Stub;
.super Landroid/os/Binder;
.source "ISplashPackageCheckListener.java"

# interfaces
.implements Lcom/miui/server/ISplashPackageCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashPackageCheckListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashPackageCheckListener"

.field static final TRANSACTION_updateSplashPackageCheckInfo:I = 0x2

.field static final TRANSACTION_updateSplashPackageCheckInfoList:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.server.ISplashPackageCheckListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/server/ISplashPackageCheckListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/server/ISplashPackageCheckListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfoList(Ljava/util/List;)V

    return v3

    :sswitch_20
    const-string/jumbo v2, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lcom/miui/server/SplashPackageCheckInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    :goto_34
    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    return v3

    :cond_38
    const/4 v0, 0x0

    goto :goto_34

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

.class public abstract Lcom/miui/server/ISplashScreenService$Stub;
.super Landroid/os/Binder;
.source "ISplashScreenService.java"

# interfaces
.implements Lcom/miui/server/ISplashScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashScreenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.server.ISplashScreenService"

.field static final TRANSACTION_activityIdle:I = 0x2

.field static final TRANSACTION_destroyActivity:I = 0x3

.field static final TRANSACTION_requestSplashScreen:I = 0x1

.field static final TRANSACTION_setSplashPackageListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.server.ISplashScreenService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.server.ISplashScreenService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/server/ISplashScreenService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/server/ISplashScreenService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/server/ISplashScreenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_78

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v3, v2}, Lcom/miui/server/ISplashScreenService$Stub;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_36

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    return v5

    :cond_36
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    :sswitch_3b
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_50
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v2}, Lcom/miui/server/ISplashScreenService$Stub;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_65
    const-string/jumbo v4, "com.miui.server.ISplashScreenService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/server/ISplashPackageCheckListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashPackageCheckListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/server/ISplashScreenService$Stub;->setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V

    return v5

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_50
        0x4 -> :sswitch_65
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

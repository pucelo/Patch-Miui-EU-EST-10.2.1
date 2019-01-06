.class public abstract Lmiui/security/IAppRunningControlManager$Stub;
.super Landroid/os/Binder;
.source "IAppRunningControlManager.java"

# interfaces
.implements Lmiui/security/IAppRunningControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/IAppRunningControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/IAppRunningControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.IAppRunningControlManager"

.field static final TRANSACTION_getBlockActivityIntent:I = 0x2

.field static final TRANSACTION_getNotDisallowList:I = 0x5

.field static final TRANSACTION_matchRule:I = 0x4

.field static final TRANSACTION_setBlackListEnable:I = 0x3

.field static final TRANSACTION_setDisallowRunningList:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.security.IAppRunningControlManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/IAppRunningControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.security.IAppRunningControlManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/security/IAppRunningControlManager;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/security/IAppRunningControlManager;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/security/IAppRunningControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/IAppRunningControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_ba

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_30

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    :goto_28
    invoke-virtual {p0, v1, v4}, Lmiui/security/IAppRunningControlManager$Stub;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_30
    const/4 v4, 0x0

    goto :goto_28

    :sswitch_32
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_68

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6a

    const/4 v5, 0x1

    :goto_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v0, v4, v5, v6}, Lmiui/security/IAppRunningControlManager$Stub;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6c

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_66
    const/4 v10, 0x1

    return v10

    :cond_68
    const/4 v4, 0x0

    goto :goto_4a

    :cond_6a
    const/4 v5, 0x0

    goto :goto_51

    :cond_6c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66

    :sswitch_71
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_86

    const/4 v2, 0x1

    :goto_7e
    invoke-virtual {p0, v2}, Lmiui/security/IAppRunningControlManager$Stub;->setBlackListEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_86
    const/4 v2, 0x0

    goto :goto_7e

    :sswitch_88
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lmiui/security/IAppRunningControlManager$Stub;->matchRule(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_a5

    const/4 v10, 0x1

    :goto_a0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_a5
    const/4 v10, 0x0

    goto :goto_a0

    :sswitch_a7
    const-string/jumbo v10, "miui.security.IAppRunningControlManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/security/IAppRunningControlManager$Stub;->getNotDisallowList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    nop

    :sswitch_data_ba
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_32
        0x3 -> :sswitch_71
        0x4 -> :sswitch_88
        0x5 -> :sswitch_a7
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

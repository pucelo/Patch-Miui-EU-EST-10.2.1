.class public abstract Lmiui/os/IMiuiInit$Stub;
.super Landroid/os/Binder;
.source "IMiuiInit.java"

# interfaces
.implements Lmiui/os/IMiuiInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/IMiuiInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/IMiuiInit$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.os.IMiuiInit"

.field static final TRANSACTION_doFactoryReset:I = 0x4

.field static final TRANSACTION_getAspectRatio:I = 0xb

.field static final TRANSACTION_getCustVariants:I = 0x2

.field static final TRANSACTION_getDefaultAspectType:I = 0xc

.field static final TRANSACTION_getMiuiChannelPath:I = 0x6

.field static final TRANSACTION_getMiuiPreinstallAppPath:I = 0x8

.field static final TRANSACTION_getNotchConfig:I = 0xd

.field static final TRANSACTION_getPreinstalledAppVersion:I = 0xe

.field static final TRANSACTION_initCustEnvironment:I = 0x1

.field static final TRANSACTION_installPreinstallApp:I = 0x3

.field static final TRANSACTION_isPreinstalledPackage:I = 0x5

.field static final TRANSACTION_isRestrictAspect:I = 0xa

.field static final TRANSACTION_removeFromPreinstallList:I = 0x7

.field static final TRANSACTION_setNotchSpecialMode:I = 0xf

.field static final TRANSACTION_setRestrictAspect:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.os.IMiuiInit"

    invoke-virtual {p0, p0, v0}, Lmiui/os/IMiuiInit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.os.IMiuiInit"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/os/IMiuiInit;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/os/IMiuiInit;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/os/IMiuiInit$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/os/IMiuiInit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_16c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_8
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_10
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lmiui/os/IMiuiInitObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInitObserver;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lmiui/os/IMiuiInit$Stub;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_31

    const/4 v9, 0x1

    :goto_2c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_31
    const/4 v9, 0x0

    goto :goto_2c

    :sswitch_33
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->getCustVariants()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_45
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/os/IMiuiInit$Stub;->installPreinstallApp()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_53
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_68

    const/4 v1, 0x1

    :goto_60
    invoke-virtual {p0, v1}, Lmiui/os/IMiuiInit$Stub;->doFactoryReset(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_68
    const/4 v1, 0x0

    goto :goto_60

    :sswitch_6a
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_83

    const/4 v9, 0x1

    :goto_7e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_83
    const/4 v9, 0x0

    goto :goto_7e

    :sswitch_85
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_9b
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->removeFromPreinstallList(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_ad
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_c3
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_dc

    const/4 v3, 0x1

    :goto_d4
    invoke-virtual {p0, v0, v3}, Lmiui/os/IMiuiInit$Stub;->setRestrictAspect(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_dc
    const/4 v3, 0x0

    goto :goto_d4

    :sswitch_de
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f7

    const/4 v9, 0x1

    :goto_f2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_f7
    const/4 v9, 0x0

    goto :goto_f2

    :sswitch_f9
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getAspectRatio(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v9, 0x1

    return v9

    :sswitch_10f
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_125
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getNotchConfig(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_13b
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/os/IMiuiInit$Stub;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_151
    const-string/jumbo v9, "miui.os.IMiuiInit"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16a

    const/4 v3, 0x1

    :goto_162
    invoke-virtual {p0, v0, v3}, Lmiui/os/IMiuiInit$Stub;->setNotchSpecialMode(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :cond_16a
    const/4 v3, 0x0

    goto :goto_162

    :sswitch_data_16c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_33
        0x3 -> :sswitch_45
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_85
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_ad
        0x9 -> :sswitch_c3
        0xa -> :sswitch_de
        0xb -> :sswitch_f9
        0xc -> :sswitch_10f
        0xd -> :sswitch_125
        0xe -> :sswitch_13b
        0xf -> :sswitch_151
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

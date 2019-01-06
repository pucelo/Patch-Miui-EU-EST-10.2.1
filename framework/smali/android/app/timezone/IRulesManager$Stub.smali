.class public abstract Landroid/app/timezone/IRulesManager$Stub;
.super Landroid/os/Binder;
.source "IRulesManager.java"

# interfaces
.implements Landroid/app/timezone/IRulesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/IRulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.timezone.IRulesManager"

.field static final TRANSACTION_getRulesState:I = 0x1

.field static final TRANSACTION_requestInstall:I = 0x2

.field static final TRANSACTION_requestNothing:I = 0x4

.field static final TRANSACTION_requestUninstall:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.timezone.IRulesManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezone/IRulesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.timezone.IRulesManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/timezone/IRulesManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/timezone/IRulesManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/timezone/IRulesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezone/IRulesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_90

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_a
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_11
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/timezone/IRulesManager$Stub;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_27

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v9}, Landroid/app/timezone/RulesState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    return v9

    :cond_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    :sswitch_2b
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_56

    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/timezone/IRulesManager$Stub;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_56
    const/4 v0, 0x0

    goto :goto_3f

    :sswitch_58
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/timezone/IRulesManager$Stub;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_75
    const-string/jumbo v8, "android.app.timezone.IRulesManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8d

    const/4 v3, 0x1

    :goto_86
    invoke-virtual {p0, v1, v3}, Landroid/app/timezone/IRulesManager$Stub;->requestNothing([BZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_8d
    const/4 v3, 0x0

    goto :goto_86

    nop

    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_58
        0x4 -> :sswitch_75
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

.class public abstract Landroid/os/IRecoverySystem$Stub;
.super Landroid/os/Binder;
.source "IRecoverySystem.java"

# interfaces
.implements Landroid/os/IRecoverySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IRecoverySystem"

.field static final TRANSACTION_clearBcb:I = 0x3

.field static final TRANSACTION_rebootRecoveryWithCommand:I = 0x4

.field static final TRANSACTION_setupBcb:I = 0x2

.field static final TRANSACTION_uncrypt:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IRecoverySystem"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRecoverySystem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.IRecoverySystem"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IRecoverySystem;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/IRecoverySystem;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/IRecoverySystem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IRecoverySystem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_6e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_a
    const-string/jumbo v3, "android.os.IRecoverySystem"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IRecoverySystemProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystemProgressListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/IRecoverySystem$Stub;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2d

    move v3, v4

    :cond_2d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_31
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/IRecoverySystem$Stub;->setupBcb(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_45

    move v3, v4

    :cond_45
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_49
    const-string/jumbo v5, "android.os.IRecoverySystem"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->clearBcb()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_59

    move v3, v4

    :cond_59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_5d
    const-string/jumbo v3, "android.os.IRecoverySystem"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/IRecoverySystem$Stub;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_31
        0x3 -> :sswitch_49
        0x4 -> :sswitch_5d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

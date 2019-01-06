.class public abstract Lmiui/process/IMiuiApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IMiuiApplicationThread.java"

# interfaces
.implements Lmiui/process/IMiuiApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/IMiuiApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IMiuiApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.process.IMiuiApplicationThread"

.field static final TRANSACTION_dumpMessage:I = 0x2

.field static final TRANSACTION_longScreenshot:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.process.IMiuiApplicationThread"

    invoke-virtual {p0, p0, v0}, Lmiui/process/IMiuiApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.process.IMiuiApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/process/IMiuiApplicationThread;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/process/IMiuiApplicationThread;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/process/IMiuiApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "miui.process.IMiuiApplicationThread"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "miui.process.IMiuiApplicationThread"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/process/IMiuiApplicationThread$Stub;->longScreenshot(II)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2c

    move v4, v5

    :goto_28
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :cond_2c
    const/4 v4, 0x0

    goto :goto_28

    :sswitch_2e
    const-string/jumbo v4, "miui.process.IMiuiApplicationThread"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/IMiuiApplicationThread$Stub;->dumpMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

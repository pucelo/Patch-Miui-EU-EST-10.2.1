.class public abstract Landroid/app/job/IJobCallback$Stub;
.super Landroid/os/Binder;
.source "IJobCallback.java"

# interfaces
.implements Landroid/app/job/IJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobCallback"

.field static final TRANSACTION_acknowledgeStartMessage:I = 0x1

.field static final TRANSACTION_acknowledgeStopMessage:I = 0x2

.field static final TRANSACTION_completeWork:I = 0x4

.field static final TRANSACTION_dequeueWork:I = 0x3

.field static final TRANSACTION_jobFinished:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.job.IJobCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.job.IJobCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/job/IJobCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/job/IJobCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/job/IJobCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_9a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_a
    const-string/jumbo v5, "android.app.job.IJobCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_11
    const-string/jumbo v5, "android.app.job.IJobCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/4 v2, 0x1

    :goto_22
    invoke-virtual {p0, v0, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStartMessage(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_29
    const/4 v2, 0x0

    goto :goto_22

    :sswitch_2b
    const-string/jumbo v5, "android.app.job.IJobCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/4 v2, 0x1

    :goto_3c
    invoke-virtual {p0, v0, v2}, Landroid/app/job/IJobCallback$Stub;->acknowledgeStopMessage(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_43
    const/4 v2, 0x0

    goto :goto_3c

    :sswitch_45
    const-string/jumbo v7, "android.app.job.IJobCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/IJobCallback$Stub;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5f

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/app/job/JobWorkItem;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5e
    return v6

    :cond_5f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    :sswitch_63
    const-string/jumbo v7, "android.app.job.IJobCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/job/IJobCallback$Stub;->completeWork(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7b

    move v5, v6

    :cond_7b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_7f
    const-string/jumbo v5, "android.app.job.IJobCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_97

    const/4 v2, 0x1

    :goto_90
    invoke-virtual {p0, v0, v2}, Landroid/app/job/IJobCallback$Stub;->jobFinished(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_97
    const/4 v2, 0x0

    goto :goto_90

    nop

    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_45
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

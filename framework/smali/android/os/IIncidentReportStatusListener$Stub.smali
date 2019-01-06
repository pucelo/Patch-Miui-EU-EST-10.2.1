.class public abstract Landroid/os/IIncidentReportStatusListener$Stub;
.super Landroid/os/Binder;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IIncidentReportStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentReportStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentReportStatusListener"

.field static final TRANSACTION_onReportFailed:I = 0x4

.field static final TRANSACTION_onReportFinished:I = 0x3

.field static final TRANSACTION_onReportSectionStatus:I = 0x2

.field static final TRANSACTION_onReportStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentReportStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.IIncidentReportStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIncidentReportStatusListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/IIncidentReportStatusListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_40

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportStarted()V

    return v3

    :sswitch_1a
    const-string/jumbo v2, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportSectionStatus(II)V

    return v3

    :sswitch_2c
    const-string/jumbo v2, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFinished()V

    return v3

    :sswitch_36
    const-string/jumbo v2, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFailed()V

    return v3

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_36
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
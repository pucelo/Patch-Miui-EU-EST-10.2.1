.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0xb

.field static final TRANSACTION_onPrintJobQueued:I = 0x3

.field static final TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final TRANSACTION_requestCustomPrinterIcon:I = 0x9

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final TRANSACTION_stopPrinterStateTracking:I = 0xa

.field static final TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.printservice.IPrintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/printservice/IPrintService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/printservice/IPrintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_e2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    return v5

    :sswitch_22
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    :goto_36
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return v5

    :cond_3a
    const/4 v0, 0x0

    goto :goto_36

    :sswitch_3c
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_54

    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    :goto_50
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return v5

    :cond_54
    const/4 v0, 0x0

    goto :goto_50

    :sswitch_56
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    return v5

    :sswitch_60
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    return v5

    :sswitch_70
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    return v5

    :sswitch_7a
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    return v5

    :sswitch_8a
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    :goto_9e
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    return v5

    :cond_a2
    const/4 v1, 0x0

    goto :goto_9e

    :sswitch_a4
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bc

    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    :goto_b8
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return v5

    :cond_bc
    const/4 v1, 0x0

    goto :goto_b8

    :sswitch_be
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d6

    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    :goto_d2
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    return v5

    :cond_d6
    const/4 v1, 0x0

    goto :goto_d2

    :sswitch_d8
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    return v5

    :sswitch_data_e2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_56
        0x5 -> :sswitch_60
        0x6 -> :sswitch_70
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_8a
        0x9 -> :sswitch_a4
        0xa -> :sswitch_be
        0xb -> :sswitch_d8
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

.class public abstract Landroid/print/IPrintSpoolerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerCallbacks.java"

# interfaces
.implements Landroid/print/IPrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerCallbacks"

.field static final TRANSACTION_customPrinterIconCacheCleared:I = 0x8

.field static final TRANSACTION_onCancelPrintJobResult:I = 0x2

.field static final TRANSACTION_onCustomPrinterIconCached:I = 0x7

.field static final TRANSACTION_onGetCustomPrinterIconResult:I = 0x6

.field static final TRANSACTION_onGetPrintJobInfoResult:I = 0x5

.field static final TRANSACTION_onGetPrintJobInfosResult:I = 0x1

.field static final TRANSACTION_onSetPrintJobStateResult:I = 0x3

.field static final TRANSACTION_onSetPrintJobTagResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.print.IPrintSpoolerCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/IPrintSpoolerCallbacks;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/print/IPrintSpoolerCallbacks;

    return-object v0

    :cond_14
    new-instance v1, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_c2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_9
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_10
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfosResult(Ljava/util/List;I)V

    return v7

    :sswitch_24
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    const/4 v4, 0x1

    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCancelPrintJobResult(ZI)V

    return v7

    :cond_39
    const/4 v4, 0x0

    goto :goto_31

    :sswitch_3b
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v4, 0x1

    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobStateResult(ZI)V

    return v7

    :cond_50
    const/4 v4, 0x0

    goto :goto_48

    :sswitch_52
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 v4, 0x1

    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobTagResult(ZI)V

    return v7

    :cond_67
    const/4 v4, 0x0

    goto :goto_5f

    :sswitch_69
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    sget-object v6, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    :goto_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V

    return v7

    :cond_85
    const/4 v2, 0x0

    goto :goto_7d

    :sswitch_87
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a3

    sget-object v6, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    :goto_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V

    return v7

    :cond_a3
    const/4 v1, 0x0

    goto :goto_9b

    :sswitch_a5
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCustomPrinterIconCached(I)V

    return v7

    :sswitch_b3
    const-string/jumbo v6, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->customPrinterIconCacheCleared(I)V

    return v7

    nop

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_52
        0x5 -> :sswitch_69
        0x6 -> :sswitch_87
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_b3
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

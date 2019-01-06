.class public abstract Landroid/print/ILayoutResultCallback$Stub;
.super Landroid/os/Binder;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.ILayoutResultCallback"

.field static final TRANSACTION_onLayoutCanceled:I = 0x4

.field static final TRANSACTION_onLayoutFailed:I = 0x3

.field static final TRANSACTION_onLayoutFinished:I = 0x2

.field static final TRANSACTION_onLayoutStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.print.ILayoutResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.print.ILayoutResultCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/ILayoutResultCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/print/ILayoutResultCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/print/ILayoutResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/ILayoutResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_7a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_9
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_10
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V

    return v8

    :sswitch_26
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_49

    sget-object v7, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentInfo;

    :goto_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v5, 0x1

    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v2, v5, v6}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V

    return v8

    :cond_49
    const/4 v2, 0x0

    goto :goto_3a

    :cond_4b
    const/4 v5, 0x0

    goto :goto_41

    :sswitch_4d
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_69

    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFailed(Ljava/lang/CharSequence;I)V

    return v8

    :cond_69
    const/4 v3, 0x0

    goto :goto_61

    :sswitch_6b
    const-string/jumbo v7, "android.print.ILayoutResultCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutCanceled(I)V

    return v8

    nop

    :sswitch_data_7a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_4d
        0x4 -> :sswitch_6b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

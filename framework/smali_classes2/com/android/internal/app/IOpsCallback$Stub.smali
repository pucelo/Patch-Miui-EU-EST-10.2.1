.class public abstract Lcom/android/internal/app/IOpsCallback$Stub;
.super Landroid/os/Binder;
.source "IOpsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IOpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IOpsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IOpsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IOpsCallback"

.field static final TRANSACTION_askOperation:I = 0x1

.field static final TRANSACTION_getDefaultOp:I = 0x2

.field static final TRANSACTION_isAppPermissionControlOpen:I = 0x3

.field static final TRANSACTION_onAppApplyOperation:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IOpsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IOpsCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.app.IOpsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IOpsCallback;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/app/IOpsCallback;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/app/IOpsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IOpsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_88

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_a
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_11
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IOpsCallback$Stub;->askOperation(ILjava/lang/String;I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_2e
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IOpsCallback$Stub;->getDefaultOp(ILjava/lang/String;I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_4b
    const-string/jumbo v9, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IOpsCallback$Stub;->isAppPermissionControlOpen(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5f

    move v0, v8

    :cond_5f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_63
    const-string/jumbo v0, "com.android.internal.app.IOpsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    const/4 v5, 0x1

    :goto_80
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback$Stub;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    return v8

    :cond_85
    const/4 v5, 0x0

    goto :goto_80

    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_63
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

.class public abstract Lcom/android/internal/view/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodClient"

.field static final TRANSACTION_onBindMethod:I = 0x2

.field static final TRANSACTION_onUnbindMethod:I = 0x3

.field static final TRANSACTION_reportFullscreenMode:I = 0x6

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setUserActionNotificationSequenceNumber:I = 0x5

.field static final TRANSACTION_setUsingInputMethod:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.view.IInputMethodClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_8c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/4 v2, 0x1

    :goto_1d
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->setUsingInputMethod(Z)V

    return v6

    :cond_21
    const/4 v2, 0x0

    goto :goto_1d

    :sswitch_23
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/InputBindResult;

    :goto_37
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V

    return v6

    :cond_3b
    const/4 v1, 0x0

    goto :goto_37

    :sswitch_3d
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindMethod(II)V

    return v6

    :sswitch_4f
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/4 v2, 0x1

    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_69

    const/4 v4, 0x1

    :goto_63
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->setActive(ZZ)V

    return v6

    :cond_67
    const/4 v2, 0x0

    goto :goto_5c

    :cond_69
    const/4 v4, 0x0

    goto :goto_63

    :sswitch_6b
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->setUserActionNotificationSequenceNumber(I)V

    return v6

    :sswitch_79
    const-string/jumbo v5, "com.android.internal.view.IInputMethodClient"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8a

    const/4 v2, 0x1

    :goto_86
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->reportFullscreenMode(Z)V

    return v6

    :cond_8a
    const/4 v2, 0x0

    goto :goto_86

    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_79
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

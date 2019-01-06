.class public abstract Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.super Landroid/os/Binder;
.source "IAutofillWindowPresenter.java"

# interfaces
.implements Landroid/view/autofill/IAutofillWindowPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutofillWindowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutofillWindowPresenter"

.field static final TRANSACTION_hide:I = 0x2

.field static final TRANSACTION_show:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.autofill.IAutofillWindowPresenter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAutofillWindowPresenter;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/autofill/IAutofillWindowPresenter;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_62

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    sget-object v5, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/4 v3, 0x1

    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return v6

    :cond_41
    const/4 v1, 0x0

    goto :goto_24

    :cond_43
    const/4 v2, 0x0

    goto :goto_32

    :cond_45
    const/4 v3, 0x0

    goto :goto_39

    :sswitch_47
    const-string/jumbo v5, "android.view.autofill.IAutofillWindowPresenter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_5b
    invoke-virtual {p0, v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->hide(Landroid/graphics/Rect;)V

    return v6

    :cond_5f
    const/4 v0, 0x0

    goto :goto_5b

    nop

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_47
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

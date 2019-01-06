.class public abstract Landroid/content/pm/IPinItemRequest$Stub;
.super Landroid/os/Binder;
.source "IPinItemRequest.java"

# interfaces
.implements Landroid/content/pm/IPinItemRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPinItemRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPinItemRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPinItemRequest"

.field static final TRANSACTION_accept:I = 0x2

.field static final TRANSACTION_getAppWidgetProviderInfo:I = 0x4

.field static final TRANSACTION_getExtras:I = 0x5

.field static final TRANSACTION_getShortcutInfo:I = 0x3

.field static final TRANSACTION_isValid:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPinItemRequest"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPinItemRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.pm.IPinItemRequest"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPinItemRequest;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/pm/IPinItemRequest;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/pm/IPinItemRequest$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPinItemRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_98

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_a
    const-string/jumbo v5, "android.content.pm.IPinItemRequest"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_11
    const-string/jumbo v7, "android.content.pm.IPinItemRequest"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->isValid()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :sswitch_25
    const-string/jumbo v7, "android.content.pm.IPinItemRequest"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_47

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_39
    invoke-virtual {p0, v0}, Landroid/content/pm/IPinItemRequest$Stub;->accept(Landroid/os/Bundle;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_43

    move v5, v6

    :cond_43
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_47
    const/4 v0, 0x0

    goto :goto_39

    :sswitch_49
    const-string/jumbo v7, "android.content.pm.IPinItemRequest"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5f

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v6}, Landroid/content/pm/ShortcutInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5e
    return v6

    :cond_5f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    :sswitch_63
    const-string/jumbo v7, "android.content.pm.IPinItemRequest"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_79

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v6}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_78
    return v6

    :cond_79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_78

    :sswitch_7d
    const-string/jumbo v7, "android.content.pm.IPinItemRequest"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPinItemRequest$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_93

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_92
    return v6

    :cond_93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_92

    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_49
        0x4 -> :sswitch_63
        0x5 -> :sswitch_7d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

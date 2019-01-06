.class public abstract Lcom/miui/enterprise/IRestrictionsManager$Stub;
.super Landroid/os/Binder;
.source "IRestrictionsManager.java"

# interfaces
.implements Lcom/miui/enterprise/IRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IRestrictionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IRestrictionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.enterprise.IRestrictionsManager"

.field static final TRANSACTION_getControlStatus:I = 0x3

.field static final TRANSACTION_hasRestriction:I = 0x4

.field static final TRANSACTION_setControlStatus:I = 0x1

.field static final TRANSACTION_setRestriction:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IRestrictionsManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.enterprise.IRestrictionsManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IRestrictionsManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/enterprise/IRestrictionsManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/enterprise/IRestrictionsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IRestrictionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_7e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_a
    const-string/jumbo v6, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v6, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->setControlStatus(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_2a
    const-string/jumbo v6, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/4 v2, 0x1

    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->setRestriction(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_46
    const/4 v2, 0x0

    goto :goto_3b

    :sswitch_48
    const-string/jumbo v6, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->getControlStatus(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_61
    const-string/jumbo v8, "com.miui.enterprise.IRestrictionsManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/enterprise/IRestrictionsManager$Stub;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_79

    move v6, v7

    :cond_79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_48
        0x4 -> :sswitch_61
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

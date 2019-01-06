.class public abstract Landroid/content/om/IOverlayManager$Stub;
.super Landroid/os/Binder;
.source "IOverlayManager.java"

# interfaces
.implements Landroid/content/om/IOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/IOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/IOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.om.IOverlayManager"

.field static final TRANSACTION_getAllOverlays:I = 0x1

.field static final TRANSACTION_getOverlayInfo:I = 0x3

.field static final TRANSACTION_getOverlayInfosForTarget:I = 0x2

.field static final TRANSACTION_setEnabled:I = 0x4

.field static final TRANSACTION_setEnabledExclusive:I = 0x5

.field static final TRANSACTION_setHighestPriority:I = 0x7

.field static final TRANSACTION_setLowestPriority:I = 0x8

.field static final TRANSACTION_setPriority:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.om.IOverlayManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/om/IOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.om.IOverlayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/om/IOverlayManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/om/IOverlayManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/om/IOverlayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/om/IOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_118

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v10, 0x1

    return v10

    :sswitch_26
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_40
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_61

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/content/om/OverlayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5f
    const/4 v10, 0x1

    return v10

    :cond_61
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    :sswitch_66
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8a

    const/4 v4, 0x1

    :goto_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_8c

    const/4 v10, 0x1

    :goto_85
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_8a
    const/4 v4, 0x0

    goto :goto_77

    :cond_8c
    const/4 v10, 0x0

    goto :goto_85

    :sswitch_8e
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b2

    const/4 v4, 0x1

    :goto_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_b4

    const/4 v10, 0x1

    :goto_ad
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_b2
    const/4 v4, 0x0

    goto :goto_9f

    :cond_b4
    const/4 v10, 0x0

    goto :goto_ad

    :sswitch_b6
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v5}, Landroid/content/om/IOverlayManager$Stub;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_d7

    const/4 v10, 0x1

    :goto_d2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_d7
    const/4 v10, 0x0

    goto :goto_d2

    :sswitch_d9
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/om/IOverlayManager$Stub;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_f6

    const/4 v10, 0x1

    :goto_f1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_f6
    const/4 v10, 0x0

    goto :goto_f1

    :sswitch_f8
    const-string/jumbo v10, "android.content.om.IOverlayManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/content/om/IOverlayManager$Stub;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_115

    const/4 v10, 0x1

    :goto_110
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_115
    const/4 v10, 0x0

    goto :goto_110

    nop

    :sswitch_data_118
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_40
        0x4 -> :sswitch_66
        0x5 -> :sswitch_8e
        0x6 -> :sswitch_b6
        0x7 -> :sswitch_d9
        0x8 -> :sswitch_f8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method

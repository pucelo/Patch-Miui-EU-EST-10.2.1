.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_log:I = 0x4

.field static final TRANSACTION_recordRTCWakeupInfo:I = 0x5

.field static final TRANSACTION_registerMiuiWhetstoneCloudSync:I = 0x1

.field static final TRANSACTION_registerMiuiWhetstoneCloudSyncList:I = 0x2

.field static final TRANSACTION_unregisterMiuiWhetstoneCloudSync:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_c2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3d

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3f

    sget-object v8, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/CloudControlInfo;

    :goto_32
    invoke-virtual {p0, v1, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_3d
    const/4 v1, 0x0

    goto :goto_24

    :cond_3f
    const/4 v3, 0x0

    goto :goto_32

    :sswitch_41
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_66

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_55
    sget-object v8, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_66
    const/4 v1, 0x0

    goto :goto_55

    :sswitch_68
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_87

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_7c
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_87
    const/4 v1, 0x0

    goto :goto_7c

    :sswitch_89
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->log(I[B)V

    return v9

    :sswitch_9b
    const-string/jumbo v8, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_be

    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c0

    const/4 v6, 0x1

    :goto_ba
    invoke-virtual {p0, v0, v2, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->recordRTCWakeupInfo(ILandroid/app/PendingIntent;Z)V

    return v9

    :cond_be
    const/4 v2, 0x0

    goto :goto_b3

    :cond_c0
    const/4 v6, 0x0

    goto :goto_ba

    :sswitch_data_c2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_41
        0x3 -> :sswitch_68
        0x4 -> :sswitch_89
        0x5 -> :sswitch_9b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

.class public abstract Lcom/miui/whetstone/IPowerKeeperClient$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperClient.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperClient"

.field static final TRANSACTION_enableATrace:I = 0x3

.field static final TRANSACTION_notifyFrozenAppWakeUpByHighPriorityAlarm:I = 0x1

.field static final TRANSACTION_perfThermalBreakAcquire:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.IPowerKeeperClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/whetstone/IPowerKeeperClient;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_44

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V

    return v4

    :sswitch_1e
    const-string/jumbo v3, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->perfThermalBreakAcquire(I)V

    return v4

    :sswitch_2c
    const-string/jumbo v3, "com.miui.whetstone.IPowerKeeperClient"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    const/4 v1, 0x1

    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->enableATrace(ZLjava/lang/String;)V

    return v4

    :cond_41
    const/4 v1, 0x0

    goto :goto_39

    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method

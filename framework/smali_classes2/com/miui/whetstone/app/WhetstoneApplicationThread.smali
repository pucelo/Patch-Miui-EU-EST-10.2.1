.class public Lcom/miui/whetstone/app/WhetstoneApplicationThread;
.super Landroid/os/Binder;
.source "WhetstoneApplicationThread.java"

# interfaces
.implements Lcom/miui/whetstone/app/IWhetstoneApplicationThread;


# instance fields
.field private mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/app/IWhetstoneApplicationThread;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    return-object v0
.end method

.method public longScreenshot(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    :cond_b
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(II)Z

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_a
    const-string/jumbo v6, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, p3, v4}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v5

    :pswitch_20
    const-string/jumbo v6, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;->longScreenshot(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_34

    move v4, v5

    :cond_34
    int-to-byte v4, v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByte(B)V

    return v5

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_20
    .end packed-switch
.end method

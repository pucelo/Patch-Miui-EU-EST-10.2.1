.class Lcom/miui/whetstone/IAppObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppObserver.java"

# interfaces
.implements Lcom/miui/whetstone/IAppObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IAppObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/IAppObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/IAppObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.miui.whetstone.IAppObserver"

    return-object v0
.end method

.method public onScreenAppChanged(Lcom/miui/whetstone/AppInfo;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_6
    const-string/jumbo v3, "com.miui.whetstone.IAppObserver"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/miui/whetstone/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    if-eqz p2, :cond_31

    :goto_18
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/miui/whetstone/IAppObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_27
    const/4 v3, 0x0

    :try_start_28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_16

    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_31
    move v1, v2

    goto :goto_18
.end method

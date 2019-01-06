.class Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmsSecurityService.java"

# interfaces
.implements Lcom/android/internal/telephony/ISmsSecurityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISmsSecurityService$Stub;
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

    iput-object p1, p0, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.android.internal.telephony.ISmsSecurityService"

    return-object v0
.end method

.method public register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_9
    const-string/jumbo v4, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_32

    move-result v3

    if-eqz v3, :cond_30

    const/4 v2, 0x1

    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_29

    :catchall_32
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_a
    const-string/jumbo v5, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_37

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lcom/android/internal/telephony/SmsAuthorizationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    if-eqz p2, :cond_44

    :goto_1c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_3c

    move-result v3

    if-eqz v3, :cond_46

    const/4 v2, 0x1

    :goto_30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_37
    const/4 v5, 0x0

    :try_start_38
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_1a

    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_44
    move v3, v4

    goto :goto_1c

    :cond_46
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_9
    const-string/jumbo v4, "com.android.internal.telephony.ISmsSecurityService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ISmsSecurityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_32

    move-result v3

    if-eqz v3, :cond_30

    const/4 v2, 0x1

    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_29

    :catchall_32
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 8

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_4
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_4a

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_47

    if-ne v1, v3, :cond_50

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_41
    .catchall {:try_start_10 .. :try_end_22} :catchall_47

    :try_start_22
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v1

    const/16 v4, 0x32

    if-lt v1, v4, :cond_52

    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Exceeded maximum number of wifi locks"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v3

    throw v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_41} :catch_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_47

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4a
    :try_start_4a
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_47

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_10

    :cond_50
    :goto_50
    monitor-exit v2

    return-void

    :cond_52
    :try_start_52
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_3e

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_5e} :catch_41
    .catchall {:try_start_5d .. :try_end_5e} :catchall_47

    const/4 v1, 0x1

    :try_start_5f
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_47

    goto :goto_50
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_6
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_2d

    if-eqz v1, :cond_22

    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_27
    .catchall {:try_start_a .. :try_end_16} :catchall_2d

    :try_start_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_24

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_22} :catch_27
    .catchall {:try_start_21 .. :try_end_22} :catchall_2d

    :cond_22
    monitor-exit v2

    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v3

    throw v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_27} :catch_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_2d

    :catch_27
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isHeld()Z
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public release()V
    .registers 6

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_4d

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4a

    if-nez v1, :cond_2a

    :goto_f
    :try_start_f
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_55
    .catchall {:try_start_f .. :try_end_1b} :catchall_4a

    :try_start_1b
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_52

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_27} :catch_55
    .catchall {:try_start_26 .. :try_end_27} :catchall_4a

    const/4 v1, 0x0

    :try_start_28
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    :cond_2a
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-gez v1, :cond_5b

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4d
    :try_start_4d
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_4a

    if-eqz v1, :cond_2a

    goto :goto_f

    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v3

    throw v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_55} :catch_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_4a

    :catch_55
    move-exception v0

    :try_start_56
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_4a

    :cond_5b
    monitor-exit v2

    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 8

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v3

    if-eqz p1, :cond_c

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_c

    const/4 p1, 0x0

    :cond_c
    const/4 v0, 0x1

    if-nez p1, :cond_25

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    :cond_12
    :goto_12
    if-eqz v0, :cond_23

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_39

    if-eqz v2, :cond_23

    :try_start_18
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v4, v5}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_4c
    .catchall {:try_start_18 .. :try_end_23} :catchall_39

    :cond_23
    monitor-exit v3

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_3e

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3c

    const/4 v0, 0x1

    :goto_31
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_39

    goto :goto_12

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3c
    const/4 v0, 0x0

    goto :goto_31

    :cond_3e
    :try_start_3e
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    goto :goto_12

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_39
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v3, :cond_58

    const-string/jumbo v1, "held; "

    :goto_12
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v3, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_60

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_58
    :try_start_58
    const-string/jumbo v1, ""

    goto :goto_12

    :cond_5c
    const-string/jumbo v2, "not refcounted"
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_60

    goto :goto_2c

    :catchall_60
    move-exception v3

    monitor-exit v4

    throw v3
.end method

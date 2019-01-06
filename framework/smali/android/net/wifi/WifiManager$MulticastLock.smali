.class public Landroid/net/wifi/WifiManager$MulticastLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$MulticastLock;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 6

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_4
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v1, :cond_44

    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_41

    if-ne v1, v3, :cond_4a

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_3b
    .catchall {:try_start_10 .. :try_end_1e} :catchall_41

    :try_start_1e
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v1

    const/16 v4, 0x32

    if-lt v1, v4, :cond_4c

    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Exceeded maximum number of wifi locks"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v3

    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3b} :catch_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_41

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_44
    :try_start_44
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_41

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_10

    :cond_4a
    :goto_4a
    monitor-exit v2

    return-void

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_38

    :try_start_57
    monitor-exit v3
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_58} :catch_3b
    .catchall {:try_start_57 .. :try_end_58} :catchall_41

    const/4 v1, 0x1

    :try_start_59
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_41

    goto :goto_4a
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    return-void
.end method

.method public isHeld()Z
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
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

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v1, :cond_4b

    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_48

    if-nez v1, :cond_28

    :goto_f
    :try_start_f
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_53
    .catchall {:try_start_f .. :try_end_19} :catchall_48

    :try_start_19
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->-get0(Landroid/net/wifi/WifiManager;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Landroid/net/wifi/WifiManager;->-set0(Landroid/net/wifi/WifiManager;I)I
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_50

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_53
    .catchall {:try_start_24 .. :try_end_25} :catchall_48

    const/4 v1, 0x0

    :try_start_26
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    :cond_28
    iget v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-gez v1, :cond_59

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MulticastLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4b
    :try_start_4b
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_48

    if-eqz v1, :cond_28

    goto :goto_f

    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v3

    throw v1
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_53} :catch_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_48

    :catch_53
    move-exception v0

    :try_start_54
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_48

    :cond_59
    monitor-exit v2

    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    if-eqz v3, :cond_58

    const-string/jumbo v1, "held; "

    :goto_12
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MulticastLock{ "

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

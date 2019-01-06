.class Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
.super Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/BackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/backup/BackupManager;


# direct methods
.method private constructor <init>(Lmiui/app/backup/BackupManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-direct {p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;)V

    return-void
.end method


# virtual methods
.method public onBackupEnd(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_39

    :goto_c
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    monitor-enter v4

    :goto_1b
    :try_start_1b
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_36

    move-result v3

    if-nez v3, :cond_3e

    :try_start_27
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_30} :catch_31
    .catchall {:try_start_27 .. :try_end_30} :catchall_36

    goto :goto_1b

    :catch_31
    move-exception v2

    :try_start_32
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_1b

    :catchall_36
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :cond_3e
    monitor-exit v4

    :cond_3f
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupEnd(Ljava/lang/String;I)V

    :cond_50
    :try_start_50
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_65

    :try_start_57
    iget-object v3, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v3}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_62

    :try_start_60
    monitor-exit v4

    :goto_61
    return-void

    :catchall_62
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_65

    :catch_65
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method public onBackupStart(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->-set0(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onBackupStart(Ljava/lang/String;I)V

    new-instance v0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;-><init>(Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver$1;->start()V

    :cond_24
    return-void
.end method

.method public onCustomProgressChange(Ljava/lang/String;IIJJ)V
    .registers 16

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    :cond_16
    return-void
.end method

.method public onError(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onError(Ljava/lang/String;II)V

    :cond_11
    return-void
.end method

.method public onRestoreEnd(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreEnd(Ljava/lang/String;I)V

    :cond_11
    :try_start_11
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_26

    :try_start_18
    iget-object v1, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v1}, Lmiui/app/backup/BackupManager;->-get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_23

    :try_start_21
    monitor-exit v2

    :goto_22
    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public onRestoreError(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRestoreStart(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;->this$0:Lmiui/app/backup/BackupManager;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->-get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/BackupManager$BackupRestoreListener;->onRestoreStart(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

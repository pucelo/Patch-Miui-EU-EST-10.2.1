.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addProgress(F)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commit(Landroid/content/IntentSender;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commitTransferred(Landroid/content/IntentSender;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public fsync(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v1, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v1, :cond_21

    instance-of v1, p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v1, :cond_18

    :try_start_8
    check-cast p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unrecognized stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    instance-of v1, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v1, :cond_2b

    check-cast p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-virtual {p1}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    goto :goto_11

    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unrecognized stream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    return-object v2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_d
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v3

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_12
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_13

    new-instance v9, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v9

    :cond_13
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    new-instance v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v0, v6}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_21} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_28
    move-exception v8

    invoke-static {v8}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v8
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_c
    move-exception v1

    invoke-static {v1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public setProgress(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    return-void
.end method

.method public setStagingProgress(F)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstallerSession;->transfer(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/ParcelableException; {:try_start_3 .. :try_end_8} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_f
    move-exception v0

    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

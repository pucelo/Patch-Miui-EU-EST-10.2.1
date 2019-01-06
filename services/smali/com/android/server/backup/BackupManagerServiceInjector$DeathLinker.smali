.class Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathLinker"
.end annotation


# instance fields
.field private mAgentBinder:Landroid/os/IBinder;

.field private mCallerFd:I

.field private mOutPipe:Landroid/os/ParcelFileDescriptor;

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/ParcelFileDescriptor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mAgentBinder:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private tearDownPipes()V
    .registers 6

    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    iget v3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    invoke-interface {v0, v3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_2d

    if-eqz v3, :cond_21

    :try_start_15
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_2d

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v2

    :try_start_23
    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "Couldn\'t close agent pipes"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_21

    :catch_2d
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "errorOccur failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->tearDownPipes()V

    const-string/jumbo v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    :try_start_c
    iget v2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_1b

    :goto_13
    iget v2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    return-void

    :catch_1b
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "binderDied failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setToken(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    return-void
.end method

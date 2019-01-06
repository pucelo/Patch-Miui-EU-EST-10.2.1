.class Landroid/app/backup/BackupTransport$TransportImpl;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupTransport;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupTransport;)V
    .registers 2

    iput-object p1, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .registers 2

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->abortFullRestore()I

    move-result v0

    return v0
.end method

.method public cancelFullBackup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->cancelFullBackup()V

    return-void
.end method

.method public checkFullBackupSize(J)I
    .registers 4

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->checkFullBackupSize(J)I

    move-result v0

    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finishBackup()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishRestore()V

    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    return-object v0
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .registers 5

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentRestoreSet()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getCurrentRestoreSet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .registers 3

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public initializeDevice()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->initializeDevice()I

    move-result v0

    return v0
.end method

.method public isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    return v0
.end method

.method public requestBackupTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestBackupTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestFullBackupTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->sendBackupData(I)I

    move-result v0

    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field private final mOpToken:I

.field mOutput:Ljava/io/OutputStream;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPkg:Landroid/content/pm/PackageInfo;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field private final mQuota:J

.field mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JI)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iput-wide p7, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mQuota:J

    iput p9, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOpToken:I

    return-void
.end method

.method private initializeAgent()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_11
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_16

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private tearDown()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_27
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 19

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    new-instance v15, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v13, v1, v2

    if-eqz v13, :cond_55

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_55

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    array-length v2, v14

    :goto_3d
    if-ge v1, v2, :cond_55

    aget-object v12, v14, v1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_55
    return-void
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    if-eqz p3, :cond_45

    array-length v5, p3

    if-lez v5, :cond_45

    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    :cond_45
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v13, -0x3eb

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v1

    if-eqz v1, :cond_179

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    const/4 v12, 0x0

    :try_start_15
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    if-eqz v1, :cond_e2

    xor-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_e2

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_e2

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_dc

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_df

    const/4 v6, 0x1

    :goto_43
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v8

    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    aget-object v4, v12, v1

    iget v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOpToken:I

    xor-int/lit8 v7, v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-object v1, v12, v2

    new-instance v14, Ljava/lang/Thread;

    const-string/jumbo v1, "app-data-runner"

    invoke-direct {v14, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    aget-object v2, v12, v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOpToken:I

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v1

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e5

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Full backup failed on package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_b6} :catch_f4
    .catchall {:try_start_15 .. :try_end_b6} :catchall_14d

    :goto_b6
    :try_start_b6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    if-eqz v12, :cond_d3

    const/4 v1, 0x0

    aget-object v1, v12, v1

    if-eqz v1, :cond_c8

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_c8
    const/4 v1, 0x1

    aget-object v1, v12, v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d3} :catch_e7

    :cond_d3
    :goto_d3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    :goto_d8
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown()V

    return v13

    :cond_dc
    const/4 v6, 0x1

    goto/16 :goto_43

    :cond_df
    const/4 v6, 0x0

    goto/16 :goto_43

    :cond_e2
    const/4 v6, 0x0

    goto/16 :goto_43

    :cond_e5
    const/4 v13, 0x0

    goto :goto_b6

    :catch_e7
    move-exception v10

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f1
    const/16 v13, -0x3e8

    goto :goto_d3

    :catch_f4
    move-exception v10

    :try_start_f5
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_f5 .. :try_end_122} :catchall_14d

    const/16 v13, -0x3eb

    :try_start_124
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    if-eqz v12, :cond_d3

    const/4 v1, 0x0

    aget-object v1, v12, v1

    if-eqz v1, :cond_136

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_136
    const/4 v1, 0x1

    aget-object v1, v12, v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_141} :catch_142

    goto :goto_d3

    :catch_142
    move-exception v10

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Error bringing down backup stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    :catchall_14d
    move-exception v1

    :try_start_14e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    if-eqz v12, :cond_16b

    const/4 v2, 0x0

    aget-object v2, v12, v2

    if-eqz v2, :cond_160

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_160
    const/4 v2, 0x1

    aget-object v2, v12, v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_16b} :catch_16c

    :cond_16b
    :goto_16b
    throw v1

    :catch_16c
    move-exception v10

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, -0x3e8

    goto :goto_16b

    :cond_179
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind to full agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8
.end method

.method public preflightCheck()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    return v0

    :cond_17
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind to full agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3eb

    return v1
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->initializeAgent()Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Remote exception while telling agent about quota exceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

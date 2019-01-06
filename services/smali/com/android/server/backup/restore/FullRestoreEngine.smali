.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# static fields
.field private static final synthetic -com-android-server-backup-restore-RestorePolicySwitchesValues:[I


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/restore/FullRestoreEngine;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static synthetic -getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/backup/restore/RestorePolicy;->values()[Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreInstallObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreInstallObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-void
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "c"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_d
    const-string/jumbo v0, "r"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "no_backup/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    :cond_c
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v1, :cond_24

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_26
    .catchall {:try_start_5 .. :try_end_21} :catchall_31

    :goto_21
    const/4 v1, 0x0

    :try_start_22
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_31

    :cond_24
    monitor-exit p0

    return-void

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    goto :goto_21

    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 59

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Restore engine used after halting"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_11
    new-instance v12, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    new-instance v47, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    :try_start_23
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v10

    if-eqz v10, :cond_101

    iget-object v14, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    if-eqz p4, :cond_76

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected data for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " but saw "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    const/4 v4, 0x0

    return v4

    :cond_76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_ae

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Saw new package; finalizing old one"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    :cond_ae
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "_manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11b

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v47

    move/from16 v1, p5

    move-object/from16 v2, v46

    invoke-virtual {v0, v4, v1, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v45

    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v4, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_101} :catch_13f

    :cond_101
    :goto_101
    if-nez v10, :cond_117

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_117

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    :cond_117
    if-eqz v10, :cond_5a0

    const/4 v4, 0x1

    :goto_11a
    return v4

    :cond_11b
    :try_start_11b
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "_meta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p7

    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_13e} :catch_13f

    goto :goto_101

    :catch_13f
    move-exception v35

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "io exception on restore socket read: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v10, 0x0

    goto :goto_101

    :cond_166
    const/16 v39, 0x1

    :try_start_168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/backup/restore/RestorePolicy;

    invoke-static {}, Lcom/android/server/backup/restore/FullRestoreEngine;->-getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5aa

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid policy from manifest"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_193
    :goto_193
    invoke-static {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4

    if-eqz v4, :cond_1a3

    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a5

    :cond_1a3
    const/16 v39, 0x0

    :cond_1a5
    if-eqz v39, :cond_22d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_1ab} :catch_13f

    if-nez v4, :cond_22d

    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_1e0

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    :cond_1e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1e7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x3

    invoke-virtual {v4, v5, v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1ff} :catch_5a3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ad .. :try_end_1ff} :catch_5a6

    :goto_1ff
    :try_start_1ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_22d

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to create agent for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22d
    if-eqz v39, :cond_266

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_266

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring data for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " but agent is for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    :cond_266
    if-eqz v39, :cond_555

    const/16 v30, 0x1

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v48, v0

    const-string/jumbo v4, "com.android.sharedstoragebackup"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_274} :catch_13f

    move-result v36

    if-eqz v36, :cond_419

    const-wide/32 v6, 0x1b7740

    :goto_27a
    :try_start_27a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/4 v9, 0x1

    move/from16 v5, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v4, "obb"

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41e

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring OBB file for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v15, v4, v5

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v18, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v20, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v25

    move/from16 v24, p6

    invoke-virtual/range {v13 .. v25}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_2e6
    .catch Ljava/io/IOException; {:try_start_27a .. :try_end_2e6} :catch_481
    .catch Landroid/os/RemoteException; {:try_start_27a .. :try_end_2e6} :catch_4d4

    :goto_2e6
    if-eqz v39, :cond_33b

    const/16 v43, 0x1

    :try_start_2ea
    new-instance v42, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_2fc
    :goto_2fc
    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-lez v4, :cond_32a

    move-object/from16 v0, p3

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v48, v4

    if-lez v4, :cond_518

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v50, v0

    :goto_30f
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v38

    if-ltz v38, :cond_328

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move/from16 v0, v38

    int-to-long v8, v0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    :cond_328
    if-gtz v38, :cond_51f

    :cond_32a
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v30

    :cond_33b
    if-nez v30, :cond_555

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Agent failure restoring "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "; ending restore"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_555

    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    const/4 v4, 0x0

    return v4

    :pswitch_395
    const/16 v39, 0x0

    goto/16 :goto_193

    :pswitch_399
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f4

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "APK file; installing"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/pm/PackageManager;Lcom/android/server/backup/restore/RestoreInstallObserver;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;Ljava/io/File;)Z

    move-result v37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v37, :cond_3f1

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_3e5
    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    const/4 v4, 0x1

    return v4

    :cond_3f1
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_3e5

    :cond_3f4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v39, 0x0

    goto/16 :goto_193

    :pswitch_401
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_193

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "apk present but ACCEPT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_415
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_415} :catch_13f

    const/16 v39, 0x0

    goto/16 :goto_193

    :cond_419
    const-wide/32 v6, 0xea60

    goto/16 :goto_27a

    :cond_41e
    :try_start_41e
    const-string/jumbo v4, "k"

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_491

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring key-value file for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v19, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v20, v0

    move-object/from16 v18, v10

    move/from16 v21, p6

    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-key-value-runner"

    invoke-direct {v4, v15, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_47f
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_47f} :catch_481
    .catch Landroid/os/RemoteException; {:try_start_41e .. :try_end_47f} :catch_4d4

    goto/16 :goto_2e6

    :catch_481
    move-exception v35

    :try_start_482
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Couldn\'t establish restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48b
    .catch Ljava/io/IOException; {:try_start_482 .. :try_end_48b} :catch_13f

    const/16 v30, 0x0

    const/16 v39, 0x0

    goto/16 :goto_2e6

    :cond_491
    :try_start_491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e4

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/server/backup/restore/RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    move-object/from16 v19, v10

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-runner"

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_4d2
    .catch Ljava/io/IOException; {:try_start_491 .. :try_end_4d2} :catch_481
    .catch Landroid/os/RemoteException; {:try_start_491 .. :try_end_4d2} :catch_4d4

    goto/16 :goto_2e6

    :catch_4d4
    move-exception v34

    :try_start_4d5
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Agent crashed during full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4de
    .catch Ljava/io/IOException; {:try_start_4d5 .. :try_end_4de} :catch_13f

    const/16 v30, 0x0

    const/16 v39, 0x0

    goto/16 :goto_2e6

    :cond_4e4
    :try_start_4e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v18, v4, v5

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v19, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v21, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v24, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v29

    move/from16 v28, p6

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_516
    .catch Ljava/io/IOException; {:try_start_4e4 .. :try_end_516} :catch_481
    .catch Landroid/os/RemoteException; {:try_start_4e4 .. :try_end_516} :catch_4d4

    goto/16 :goto_2e6

    :cond_518
    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v50, v0

    goto/16 :goto_30f

    :cond_51f
    move/from16 v0, v38

    int-to-long v4, v0

    sub-long v48, v48, v4

    if-eqz v43, :cond_2fc

    const/4 v4, 0x0

    :try_start_527
    move-object/from16 v0, v42

    move-object/from16 v1, p3

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_530
    .catch Ljava/io/IOException; {:try_start_527 .. :try_end_530} :catch_532

    goto/16 :goto_2fc

    :catch_532
    move-exception v35

    :try_start_533
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to write to restore pipe: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, 0x0

    goto/16 :goto_2fc

    :cond_555
    if-nez v39, :cond_101

    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v4, v8

    const-wide/16 v8, -0x200

    and-long v32, v4, v8

    :goto_560
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_101

    move-object/from16 v0, p3

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v32, v4

    if-lez v4, :cond_59a

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v50, v0

    :goto_573
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v40, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-ltz v4, :cond_591

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long v4, v4, v40

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_591
    .catch Ljava/io/IOException; {:try_start_533 .. :try_end_591} :catch_13f

    :cond_591
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_101

    sub-long v32, v32, v40

    goto :goto_560

    :cond_59a
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v50, v0

    goto :goto_573

    :cond_5a0
    const/4 v4, 0x0

    goto/16 :goto_11a

    :catch_5a3
    move-exception v35

    goto/16 :goto_1ff

    :catch_5a6
    move-exception v31

    goto/16 :goto_1ff

    nop

    :pswitch_data_5aa
    .packed-switch 0x1
        :pswitch_401
        :pswitch_399
        :pswitch_395
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_a
.end method

.class public Lcom/android/server/backup/internal/PerformBackupTask;
.super Ljava/lang/Object;
.source "PerformBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final synthetic -com-android-server-backup-internal-BackupStateSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/internal/BackupState;

.field private volatile mEphemeralOpToken:I

.field mFinished:Z

.field private final mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field mJournal:Lcom/android/server/backup/DataChangedJournal;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field final mNonIncremental:Z

.field mObserver:Landroid/app/backup/IBackupObserver;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final mUserInitiated:Z


# direct methods
.method private static synthetic -getcom-android-server-backup-internal-BackupStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/backup/internal/PerformBackupTask;->-com-android-server-backup-internal-BackupStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/backup/internal/PerformBackupTask;->-com-android-server-backup-internal-BackupStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/backup/internal/BackupState;->values()[Lcom/android/server/backup/internal/BackupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/backup/internal/PerformBackupTask;->-com-android-server-backup-internal-BackupStateSwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/RefactoredBackupManagerService;",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_4a
    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->isBackupOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string/jumbo v1, "PerformBackupTask"

    const-string/jumbo v2, "Skipping backup since one is already in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    const-string/jumbo v1, "Skipped. Backup already in progress."

    invoke-virtual {p1, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4a .. :try_end_69} :catchall_a0

    :goto_69
    monitor-exit v11

    return-void

    :cond_6b
    :try_start_6b
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-boolean v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->registerTask()V

    const-string/jumbo v1, "STATE => INITIAL"

    invoke-virtual {p1, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_6b .. :try_end_9f} :catchall_a0

    goto :goto_69

    :catchall_a0
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string/jumbo v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_23

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_14
    array-length v5, v0

    if-ge v2, v5, :cond_31

    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_23
    move-exception v1

    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v6, "Unable to use SHA-1!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "00"

    return-object v5

    :cond_31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private registerTask()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v15

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_widget"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3a

    if-nez v15, :cond_3a

    return-void

    :cond_3a
    const/4 v8, 0x0

    if-eqz v15, :cond_bf

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/backup/internal/PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v11, :cond_bf

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_49
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4e} :catch_7b
    .catchall {:try_start_49 .. :try_end_4e} :catchall_170

    :try_start_4e
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_53} :catch_17c
    .catchall {:try_start_4e .. :try_end_53} :catchall_173

    :try_start_53
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_180
    .catchall {:try_start_53 .. :try_end_56} :catchall_177

    move-result-object v10

    if-eqz v7, :cond_5c

    :try_start_59
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_66

    :cond_5c
    :goto_5c
    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_68

    :cond_61
    move-object/from16 v16, v17

    :cond_63
    :goto_63
    if-eqz v16, :cond_b8

    throw v16

    :catch_66
    move-exception v17

    goto :goto_5c

    :catch_68
    move-exception v16

    if-eqz v17, :cond_63

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_61

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_63

    :catch_7b
    move-exception v16

    :goto_7c
    :try_start_7c
    throw v16
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_84
    if-eqz v6, :cond_89

    :try_start_86
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_95

    :cond_89
    move-object/from16 v18, v17

    :cond_8b
    :goto_8b
    if-eqz v2, :cond_90

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_a4

    :cond_90
    move-object/from16 v17, v18

    :cond_92
    :goto_92
    if-eqz v17, :cond_b7

    throw v17

    :catch_95
    move-exception v18

    if-eqz v17, :cond_8b

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_89

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_8b

    :catch_a4
    move-exception v17

    if-eqz v18, :cond_92

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_90

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_92

    :cond_b7
    throw v16

    :cond_b8
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bf

    return-void

    :cond_bf
    new-instance v9, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    if-eqz v15, :cond_150

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :try_start_cc
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_d1} :catch_fd
    .catchall {:try_start_cc .. :try_end_d1} :catchall_160

    :try_start_d1
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d6} :catch_169
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_162

    :try_start_d6
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_d9} :catch_16c
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_165

    if-eqz v13, :cond_de

    :try_start_db
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_de} :catch_e8

    :cond_de
    :goto_de
    if-eqz v5, :cond_e3

    :try_start_e0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e3} :catch_ea

    :cond_e3
    move-object/from16 v16, v17

    :cond_e5
    :goto_e5
    if-eqz v16, :cond_13a

    throw v16

    :catch_e8
    move-exception v17

    goto :goto_de

    :catch_ea
    move-exception v16

    if-eqz v17, :cond_e5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_e3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_e5

    :catch_fd
    move-exception v16

    :goto_fe
    :try_start_fe
    throw v16
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_106
    if-eqz v12, :cond_10b

    :try_start_108
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_117

    :cond_10b
    move-object/from16 v18, v17

    :cond_10d
    :goto_10d
    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_112} :catch_126

    :cond_112
    move-object/from16 v17, v18

    :cond_114
    :goto_114
    if-eqz v17, :cond_139

    throw v17

    :catch_117
    move-exception v18

    if-eqz v17, :cond_10d

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_10b

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_10d

    :catch_126
    move-exception v17

    if-eqz v18, :cond_114

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_112

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_114

    :cond_139
    throw v16

    :cond_13a
    const-string/jumbo v16, "\uffed\uffedwidget"

    array-length v0, v15

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    :goto_14f
    return-void

    :cond_150
    const-string/jumbo v16, "\uffed\uffedwidget"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_14f

    :catchall_160
    move-exception v16

    goto :goto_106

    :catchall_162
    move-exception v16

    move-object v4, v5

    goto :goto_106

    :catchall_165
    move-exception v16

    move-object v12, v13

    move-object v4, v5

    goto :goto_106

    :catch_169
    move-exception v16

    move-object v4, v5

    goto :goto_fe

    :catch_16c
    move-exception v16

    move-object v12, v13

    move-object v4, v5

    goto :goto_fe

    :catchall_170
    move-exception v16

    goto/16 :goto_84

    :catchall_173
    move-exception v16

    move-object v2, v3

    goto/16 :goto_84

    :catchall_177
    move-exception v16

    move-object v6, v7

    move-object v2, v3

    goto/16 :goto_84

    :catch_17c
    move-exception v16

    move-object v2, v3

    goto/16 :goto_7c

    :catch_180
    move-exception v16

    move-object v6, v7

    move-object v2, v3

    goto/16 :goto_7c
.end method


# virtual methods
.method beginBackup()V
    .registers 16

    const/16 v14, -0x3e8

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearBackupTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "beginBackup: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/internal/BackupRequest;

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_32
    const-string/jumbo v9, " ]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iput v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_72

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_72

    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Backup begun with an empty queue - nothing to do."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v10, "queue empty at begin"

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v9, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    return-void

    :cond_72
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    const/4 v2, 0x0

    :goto_7f
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a0

    const-string/jumbo v10, "@pm@"

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v9, v9, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_194

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x0

    :cond_a0
    const-string/jumbo v9, "PerformBackupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Beginning backup of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " targets"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v10, "@pm@"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d1
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb05

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v9, :cond_142

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_142

    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Initializing (wiping) backup state and transport storage"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initializing transport "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v9

    iput v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transport.initializeDevice() == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v9, :cond_198

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0xb0b

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_142
    :goto_142
    if-eqz v7, :cond_202

    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Skipping backup of package metadata."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_152
    :goto_152
    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3e9

    if-ne v9, v10, :cond_163

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb0a

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_163} :catch_1aa
    .catchall {:try_start_d1 .. :try_end_163} :catchall_24c

    :cond_163
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting prelim: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v9, :cond_193

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v9, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_193
    :goto_193
    return-void

    :cond_194
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7f

    :cond_198
    :try_start_198
    const-string/jumbo v9, "(initialize)"

    const/16 v10, 0xb06

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Transport error in initializeDevice()"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1a9} :catch_1aa
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_24c

    goto :goto_142

    :catch_1aa
    move-exception v1

    :try_start_1ab
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Error in backup thread"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in backup thread: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v9, -0x3e8

    iput v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_1d1
    .catchall {:try_start_1ab .. :try_end_1d1} :catchall_24c

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting prelim: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v9, :cond_193

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v9, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_193

    :cond_202
    :try_start_202
    iget v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v9, :cond_152

    new-instance v3, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    const-string/jumbo v9, "@pm@"

    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    iput v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PMBA invoke: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_24a} :catch_1aa
    .catchall {:try_start_202 .. :try_end_24a} :catchall_24c

    goto/16 :goto_152

    :catchall_24c
    move-exception v9

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exiting prelim: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v10, :cond_27d

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v11, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v10, v14}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    sget-object v10, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v10}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_27d
    throw v9
.end method

.method clearAgentState()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_71

    :cond_9
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_6f

    :cond_12
    :goto_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_6d

    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_22
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v2

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_68

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_5a
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_67} :catch_6b

    :cond_67
    :goto_67
    return-void

    :catchall_68
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_6b
    move-exception v0

    goto :goto_67

    :catch_6d
    move-exception v1

    goto :goto_1b

    :catch_6f
    move-exception v1

    goto :goto_12

    :catch_71
    move-exception v1

    goto :goto_9
.end method

.method clearMetadata()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_13
    return-void
.end method

.method errorCleanup()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    return-void
.end method

.method public execute()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/backup/internal/PerformBackupTask;->-getcom-android-server-backup-internal-BackupStateSwitchesValues()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v2}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    packed-switch v0, :pswitch_data_34

    :goto_12
    monitor-exit v1

    return-void

    :pswitch_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->beginBackup()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_12

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeNextAgent()V

    goto :goto_12

    :pswitch_1f
    iget-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    :goto_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    goto :goto_12

    :cond_2a
    const-string/jumbo v0, "PerformBackupTask"

    const-string/jumbo v2, "Duplicate finish"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_18

    goto :goto_26

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method finalizeBackup()V
    .registers 11

    const/16 v9, -0x3e8

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v5, "finishing"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v5, v2, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v4}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4f

    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to remove backup journal file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentToken()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_77

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v4, :cond_77

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v5, "success; recording token"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_67
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setCurrentToken(J)V

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeRestoreTokens()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_115

    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7e
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v6, -0x3e9

    if-ne v4, v6, :cond_b1

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "init required; rerunning"

    invoke-virtual {v4, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_184

    :try_start_92
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v4, v6}, Lcom/android/server/backup/TransportManager;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13e

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a9} :catch_163
    .catchall {:try_start_92 .. :try_end_a9} :catchall_184

    :goto_a9
    :try_start_a9
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearMetadata()V

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupNow()V
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_184

    :cond_b1
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearBackupTrace()V

    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->unregisterTask()V

    iget-boolean v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-nez v4, :cond_187

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v4, :cond_187

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    if-eqz v4, :cond_187

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_187

    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting full backups for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string/jumbo v6, "full-transport-requested"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :goto_102
    const-string/jumbo v4, "PerformBackupTask"

    const-string/jumbo v5, "K/V backup pass finished."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_115
    move-exception v0

    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transport threw reporting restore set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v5, "transport threw returning token"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_13e
    :try_start_13e
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t find name of transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for init"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_161} :catch_163
    .catchall {:try_start_13e .. :try_end_161} :catchall_184

    goto/16 :goto_a9

    :catch_163
    move-exception v0

    :try_start_164
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to query transport name for init: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_164 .. :try_end_182} :catchall_184

    goto/16 :goto_a9

    :catchall_184
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_187
    iget-boolean v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-eqz v4, :cond_19d

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v4, :cond_194

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    :cond_194
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d3

    invoke-static {v4, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_102

    :cond_19d
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    sparse-switch v4, :sswitch_data_1bc

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_102

    :sswitch_1ae
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_102

    :sswitch_1b5
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_102

    :sswitch_data_1bc
    .sparse-switch
        -0x3e9 -> :sswitch_1b5
        0x0 -> :sswitch_1ae
    .end sparse-switch
.end method

.method public handleCancel(Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_9c

    if-eqz v1, :cond_10

    monitor-exit v2

    return-void

    :cond_10
    :try_start_10
    iput-boolean p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_1a
    const-string/jumbo v1, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cancel backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cancelAll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string/jumbo v4, "android.app.backup.extra.LOG_CANCEL_ALL"

    iget-boolean v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-static {v1, v5, v3, v6, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V

    if-nez p1, :cond_98

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_95

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_83
    invoke-virtual {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_10 .. :try_end_8f} :catchall_9c

    :goto_8f
    monitor-exit v2

    return-void

    :cond_91
    :try_start_91
    const-string/jumbo v0, "no_package_yet"

    goto :goto_1a

    :cond_95
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto :goto_83

    :cond_98
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_9c

    goto :goto_8f

    :catchall_9c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .registers 18

    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v1, "blank_state"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    :try_start_96
    const-string/jumbo v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_aa
    iget-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_137

    move-object v0, v8

    :goto_af
    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e5

    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v12

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    const-wide/16 v2, 0x7530

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v7

    move-object/from16 v0, p2

    move-wide v4, v12

    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_126} :catch_13b
    .catchall {:try_start_96 .. :try_end_126} :catchall_19e

    iget-boolean v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_12d

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_12d
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_137
    :try_start_137
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_139} :catch_13b
    .catchall {:try_start_137 .. :try_end_139} :catchall_19e

    goto/16 :goto_af

    :catch_13b
    move-exception v10

    :try_start_13c
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_18f
    .catchall {:try_start_13c .. :try_end_18f} :catchall_19e

    if-eqz v9, :cond_19b

    const/16 v0, -0x3eb

    :goto_193
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v1, :cond_19a

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_19a
    return v0

    :cond_19b
    const/16 v0, -0x3e8

    goto :goto_193

    :catchall_19e
    move-exception v0

    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v1, :cond_1a6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1a6
    throw v0
.end method

.method invokeNextAgent()V
    .registers 14

    const/16 v12, -0x7d2

    const/16 v11, -0x3ec

    const/4 v10, 0x0

    const/16 v9, -0x3eb

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invoke q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_37

    sget-object v5, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    return-void

    :cond_37
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting key/value backup of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_79
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_122

    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " no longer supports backup; skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "skipping - not eligible, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, -0x7d1

    invoke-static {v5, v7, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v5, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_ce} :catch_2cc
    .catchall {:try_start_79 .. :try_end_ce} :catchall_358

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_119

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_103

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f6

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_f6
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_ff
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :goto_102
    return-void

    :cond_103
    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_113

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_ff

    :cond_113
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_ff

    :cond_119
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_102

    :cond_122
    :try_start_122
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " requests full-data rather than key/value; skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, -0x7d1

    invoke-static {v5, v7, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v5, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_122 .. :try_end_165} :catch_2cc
    .catchall {:try_start_122 .. :try_end_165} :catchall_358

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_1b0

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_19a

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18d

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_18d
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_196
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :goto_199
    return-void

    :cond_19a
    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_1aa

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_196

    :cond_1aa
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_196

    :cond_1b0
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_199

    :cond_1b9
    :try_start_1b9
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_22f

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "skipping - stopped"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, -0x7d1

    invoke-static {v5, v7, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    sget-object v5, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_1db
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b9 .. :try_end_1db} :catch_2cc
    .catchall {:try_start_1b9 .. :try_end_1db} :catchall_358

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_226

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_210

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_203

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_203
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_20c
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :goto_20f
    return-void

    :cond_210
    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_220

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_20c

    :cond_220
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_20c

    :cond_226
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_20f

    :cond_22f
    const/4 v0, 0x0

    :try_start_230
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    new-instance v7, Landroid/os/WorkSource;

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "agent bound; a? = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_2ae

    const/4 v5, 0x1

    :goto_260
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    if-eqz v0, :cond_2b0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget-object v5, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_279
    .catch Ljava/lang/SecurityException; {:try_start_230 .. :try_end_279} :catch_2b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_230 .. :try_end_279} :catch_2cc
    .catchall {:try_start_230 .. :try_end_279} :catchall_358

    :goto_279
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_32e

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_317

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2a1

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_2a1
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_2aa
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :goto_2ad
    return-void

    :cond_2ae
    move v5, v6

    goto :goto_260

    :cond_2b0
    const/16 v5, -0x3eb

    :try_start_2b2
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_2b4
    .catch Ljava/lang/SecurityException; {:try_start_2b2 .. :try_end_2b4} :catch_2b5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b2 .. :try_end_2b4} :catch_2cc
    .catchall {:try_start_2b2 .. :try_end_2b4} :catchall_358

    goto :goto_279

    :catch_2b5
    move-exception v2

    :try_start_2b6
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "error in bind/backup"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v5, -0x3eb

    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "agent SE"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_2cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b6 .. :try_end_2cb} :catch_2cc
    .catchall {:try_start_2b6 .. :try_end_2cb} :catchall_358

    goto :goto_279

    :catch_2cc
    move-exception v1

    :try_start_2cd
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "Package does not exist; skipping"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "no such package"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v5, -0x3ec

    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_2e2
    .catchall {:try_start_2cd .. :try_end_2e2} :catchall_358

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_34e

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_338

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30a

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_30a
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_313
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_2ad

    :cond_317
    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_327

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2aa

    :cond_327
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto/16 :goto_2aa

    :cond_32e
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_2ad

    :cond_338
    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_348

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_313

    :cond_348
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_313

    :cond_34e
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_2ad

    :catchall_358
    move-exception v5

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_3a4

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    iput-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v7, v9, :cond_38e

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v8, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_381

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :cond_381
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_38a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :goto_38d
    throw v5

    :cond_38e
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v7, v11, :cond_39e

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_38a

    :cond_39e
    invoke-virtual {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38a

    :cond_3a4
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v7, "expecting completion/timeout callback"

    invoke-virtual {v6, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_38d
.end method

.method public operationComplete(J)V
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2d

    const-string/jumbo v24, "PerformBackupTask"

    const-string/jumbo v26, "operationComplete received after task finished."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_395

    monitor-exit v25

    return-void

    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    if-nez v24, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "late opComplete; curPkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_2d .. :try_end_6e} :catchall_395

    monitor-exit v25

    return-void

    :cond_70
    :try_start_70
    const-string/jumbo v17, "[none]"

    goto :goto_49

    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_93
    .catchall {:try_start_70 .. :try_end_93} :catchall_395

    move-result-object v10

    :try_start_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_38c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_38c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    const/high16 v26, 0x10000000

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    new-instance v14, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_d3} :catch_1ce
    .catchall {:try_start_94 .. :try_end_d3} :catchall_395

    :goto_d3
    :try_start_d3
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v24

    if-eqz v24, :cond_387

    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c2

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const v26, 0xff00

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_1c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Illegal backup key: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "illegal key "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aput-object v18, v24, v26

    const-string/jumbo v26, "bad key"

    const/16 v27, 0x1

    aput-object v26, v24, v27

    const/16 v26, 0xb07

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    const-string/jumbo v27, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    const/16 v28, 0x5

    const/16 v29, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v24

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, -0x3eb

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_1bb
    .catchall {:try_start_d3 .. :try_end_1bb} :catchall_1c7

    if-eqz v19, :cond_1c0

    :try_start_1bd
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1ce
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_395

    :cond_1c0
    monitor-exit v25

    return-void

    :cond_1c2
    :try_start_1c2
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_1c7

    goto/16 :goto_d3

    :catchall_1c7
    move-exception v24

    if-eqz v19, :cond_1cd

    :try_start_1ca
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1cd
    throw v24
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1ce} :catch_1ce
    .catchall {:try_start_1ca .. :try_end_1ce} :catchall_395

    :catch_1ce
    move-exception v7

    :try_start_1cf
    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to save widget state for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catchall {:try_start_1cf .. :try_end_1f1} :catchall_395

    :try_start_1f1
    invoke-static {v10, v12, v13}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_1f4
    .catch Landroid/system/ErrnoException; {:try_start_1f1 .. :try_end_1f4} :catch_398
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_395

    :goto_1f4
    :try_start_1f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v24

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "operation complete"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_223
    .catchall {:try_start_1f4 .. :try_end_223} :catchall_395

    const-wide/16 v22, 0x0

    :try_start_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v26, 0x0

    cmp-long v24, v22, v26

    if-lez v24, :cond_41a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    const/high16 v26, 0x10000000

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "sending data to transport"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3a8

    const/4 v11, 0x1

    :goto_266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6, v11}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    :cond_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "data delivered: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "finishing op on transport"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "finished: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :cond_2f6
    :goto_2f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_459

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aput-object v18, v24, v26

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v24, v27

    const/16 v26, 0xb08

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_355} :catch_3cb
    .catchall {:try_start_225 .. :try_end_355} :catchall_452

    :goto_355
    if-eqz v6, :cond_35a

    :try_start_357
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_35a
    .catch Ljava/io/IOException; {:try_start_357 .. :try_end_35a} :catch_4dc
    .catchall {:try_start_357 .. :try_end_35a} :catchall_395

    :cond_35a
    :goto_35a
    :try_start_35a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-eqz v24, :cond_370

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4e6

    :cond_370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_4e2

    sget-object v16, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    :goto_37e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_385
    .catchall {:try_start_35a .. :try_end_385} :catchall_395

    monitor-exit v25

    return-void

    :cond_387
    if-eqz v19, :cond_38c

    :try_start_389
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_38c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_393
    .catch Ljava/io/IOException; {:try_start_389 .. :try_end_393} :catch_1ce
    .catchall {:try_start_389 .. :try_end_393} :catchall_395

    goto/16 :goto_1f4

    :catchall_395
    move-exception v24

    monitor-exit v25

    throw v24

    :catch_398
    move-exception v9

    :try_start_399
    const-string/jumbo v24, "PerformBackupTask"

    const-string/jumbo v26, "Unable to roll back!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a6
    .catchall {:try_start_399 .. :try_end_3a6} :catchall_395

    goto/16 :goto_1f4

    :cond_3a8
    const/4 v11, 0x0

    goto/16 :goto_266

    :cond_3ab
    :try_start_3ab
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "transport rejected package"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_3c9
    .catch Ljava/lang/Exception; {:try_start_3ab .. :try_end_3c9} :catch_3cb
    .catchall {:try_start_3ab .. :try_end_3c9} :catchall_452

    goto/16 :goto_2f6

    :catch_3cb
    move-exception v8

    :try_start_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, -0x3e8

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Transport error backing up "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v24, 0xb06

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/16 v24, -0x3e8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_410
    .catchall {:try_start_3cc .. :try_end_410} :catchall_452

    if-eqz v6, :cond_35a

    :try_start_412
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_415
    .catch Ljava/io/IOException; {:try_start_412 .. :try_end_415} :catch_417
    .catchall {:try_start_412 .. :try_end_415} :catchall_395

    goto/16 :goto_35a

    :catch_417
    move-exception v7

    goto/16 :goto_35a

    :cond_41a
    :try_start_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "no data to send"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    const/16 v28, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_41a .. :try_end_450} :catch_3cb
    .catchall {:try_start_41a .. :try_end_450} :catchall_452

    goto/16 :goto_2f6

    :catchall_452
    move-exception v24

    if-eqz v6, :cond_458

    :try_start_455
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_458
    .catch Ljava/io/IOException; {:try_start_455 .. :try_end_458} :catch_4df
    .catchall {:try_start_455 .. :try_end_458} :catchall_395

    :cond_458
    :goto_458
    :try_start_458
    throw v24
    :try_end_459
    .catchall {:try_start_458 .. :try_end_459} :catchall_395

    :cond_459
    :try_start_459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_496

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, -0x3ea

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v24, "Transport rejected"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_355

    :cond_496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ed

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, -0x3ed

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v24, 0xb0d

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto/16 :goto_355

    :cond_4c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, -0x3e8

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v24, 0xb06

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_4da
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_4da} :catch_3cb
    .catchall {:try_start_459 .. :try_end_4da} :catchall_452

    goto/16 :goto_355

    :catch_4dc
    move-exception v7

    goto/16 :goto_35a

    :catch_4df
    move-exception v7

    goto/16 :goto_458

    :cond_4e2
    :try_start_4e2
    sget-object v16, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto/16 :goto_37e

    :cond_4e6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ed

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_561

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0
    :try_end_4fa
    .catchall {:try_start_4e2 .. :try_end_4fa} :catchall_395

    if-eqz v24, :cond_529

    :try_start_4fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_529
    .catch Ljava/lang/Exception; {:try_start_4fc .. :try_end_529} :catch_539
    .catchall {:try_start_4fc .. :try_end_529} :catchall_395

    :cond_529
    :goto_529
    :try_start_529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_55d

    sget-object v16, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto/16 :goto_37e

    :catch_539
    move-exception v8

    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to notify about quota exceeded: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_529

    :cond_55d
    sget-object v16, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto/16 :goto_37e

    :cond_561
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    sget-object v16, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;
    :try_end_566
    .catchall {:try_start_529 .. :try_end_566} :catchall_395

    goto/16 :goto_37e
.end method

.method revertAndEndBackup()V
    .registers 9

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-string/jumbo v6, "transport error; reverting"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :try_start_8
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_31

    move-result-wide v0

    :goto_e
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v6, v3, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_1d

    :catch_31
    move-exception v2

    const-string/jumbo v5, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    goto :goto_e

    :cond_53
    return-void
.end method

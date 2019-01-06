.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field mCompress:Z

.field private final mCurrentOpToken:I

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field mKeyValue:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 19

    invoke-direct {p0, p3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-boolean p4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    iput-boolean p10, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p14, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_24
    iput-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p9, :cond_33

    const-string/jumbo v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_33
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_35
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    return-void

    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_24

    :cond_46
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_35
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/backup/RefactoredBackupManagerService;->randomBytes(I)[B

    move-result-object v15

    const-string/jumbo v17, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v15, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/backup/RefactoredBackupManagerService;->randomBytes(I)[B

    move-result-object v7

    const-string/jumbo v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string/jumbo v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    const-string/jumbo v17, "PBKDF2WithHmacSHA1"

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6

    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_16
    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_4

    :catch_26
    move-exception v0

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_49
    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adb backup cancel of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_27
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 41

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v5, :cond_82

    const-string/jumbo v30, ", including key-value backups"

    :goto_9
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--- Performing adb backup"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ---"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Ljava/util/TreeMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/TreeMap;-><init>()V

    new-instance v35, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    if-eqz v5, :cond_86

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v17

    const/16 v29, 0x0

    :goto_58
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_86

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v5, :cond_78

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7f

    :cond_78
    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    add-int/lit8 v29, v29, 0x1

    goto :goto_58

    :cond_82
    const-string/jumbo v30, ""

    goto :goto_9

    :cond_86
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v5, :cond_9c

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v39

    if-eqz v39, :cond_9c

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_9c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_ad

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_ad
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v38 .. v38}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_ba
    :goto_ba
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_135

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_dc

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_103

    :cond_dc
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " is not eligible for backup, removing."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_103
    invoke-static {v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_ba

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " is key-value."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_135
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v38 .. v38}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v37, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    if-eqz v5, :cond_1b1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1b1

    const/16 v24, 0x1

    :goto_163
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1d7

    xor-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_1d7

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_17a} :catch_363
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_17a} :catch_42f
    .catchall {:try_start_151 .. :try_end_17a} :catchall_4e9

    :try_start_17a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_181} :catch_1b4

    :goto_181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_186
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_195
    .catchall {:try_start_186 .. :try_end_195} :catchall_1d4

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_1b1
    const/16 v24, 0x0

    goto :goto_163

    :catch_1b4
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_181

    :catchall_1d4
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1d7
    move-object/from16 v25, v37

    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24a

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Backup password mismatch; aborting"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1d9 .. :try_end_1f0} :catch_363
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1f0} :catch_42f
    .catchall {:try_start_1d9 .. :try_end_1f0} :catchall_4e9

    :try_start_1f0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f7} :catch_227

    :goto_1f7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_1fc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_20b
    .catchall {:try_start_1fc .. :try_end_20b} :catchall_247

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_227
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :catchall_247
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_24a
    :try_start_24a
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "ANDROID BACKUP\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    if-eqz v5, :cond_3ac

    const-string/jumbo v5, "\n1\n"

    :goto_26a
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26f
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_26f} :catch_363
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_26f} :catch_42f
    .catchall {:try_start_24a .. :try_end_26f} :catchall_4e9

    if-eqz v24, :cond_3b1

    :try_start_271
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_27a} :catch_3bd
    .catch Landroid/os/RemoteException; {:try_start_271 .. :try_end_27a} :catch_363
    .catchall {:try_start_271 .. :try_end_27a} :catchall_4e9

    move-result-object v25

    move-object/from16 v26, v25

    :goto_27d
    :try_start_27d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    if-eqz v5, :cond_602

    new-instance v19, Ljava/util/zip/Deflater;

    const/16 v5, 0x9

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v25, Ljava/util/zip/DeflaterOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v5}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_2aa} :catch_5fd
    .catch Landroid/os/RemoteException; {:try_start_27d .. :try_end_2aa} :catch_363
    .catchall {:try_start_27d .. :try_end_2aa} :catchall_4e9

    :goto_2aa
    move-object/from16 v7, v25

    :try_start_2ac
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_2b0
    .catch Landroid/os/RemoteException; {:try_start_2ac .. :try_end_2b0} :catch_363
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2b0} :catch_42f
    .catchall {:try_start_2ac .. :try_end_2b0} :catchall_4e9

    if-eqz v5, :cond_2c7

    :try_start_2b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.android.sharedstoragebackup"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b2 .. :try_end_2c7} :catch_423
    .catch Landroid/os/RemoteException; {:try_start_2b2 .. :try_end_2c7} :catch_363
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2c7} :catch_42f
    .catchall {:try_start_2b2 .. :try_end_2c7} :catchall_4e9

    :cond_2c7
    :goto_2c7
    :try_start_2c7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v29, 0x0

    :goto_2cd
    move/from16 v0, v29

    if-ge v0, v4, :cond_483

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v9, v0

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--- Performing full backup for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ---"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.android.sharedstoragebackup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    new-instance v5, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    const/4 v8, 0x0

    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v11, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    if-eqz v31, :cond_47b

    const-string/jumbo v5, "Shared storage"

    :goto_32b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v5, :cond_47f

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v7}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v36

    if-nez v36, :cond_47f

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure writing OBB stack for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_363
    .catch Landroid/os/RemoteException; {:try_start_2c7 .. :try_end_363} :catch_363
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_363} :catch_42f
    .catchall {:try_start_2c7 .. :try_end_363} :catchall_4e9

    :catch_363
    move-exception v21

    :try_start_364
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "App died during full backup"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36d
    .catchall {:try_start_364 .. :try_end_36d} :catchall_4e9

    if-eqz v7, :cond_375

    :try_start_36f
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37c
    .catch Ljava/io/IOException; {:try_start_36f .. :try_end_37c} :catch_5b5

    :goto_37c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_390
    .catchall {:try_start_381 .. :try_end_390} :catchall_5d6

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_3ab
    return-void

    :cond_3ac
    :try_start_3ac
    const-string/jumbo v5, "\n0\n"
    :try_end_3af
    .catch Landroid/os/RemoteException; {:try_start_3ac .. :try_end_3af} :catch_363
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3af} :catch_42f
    .catchall {:try_start_3ac .. :try_end_3af} :catchall_4e9

    goto/16 :goto_26a

    :cond_3b1
    :try_start_3b1
    const-string/jumbo v5, "none\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b9
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_3b9} :catch_3bd
    .catch Landroid/os/RemoteException; {:try_start_3b1 .. :try_end_3b9} :catch_363
    .catchall {:try_start_3b1 .. :try_end_3b9} :catchall_4e9

    move-object/from16 v26, v25

    goto/16 :goto_27d

    :catch_3bd
    move-exception v23

    :goto_3be
    :try_start_3be
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to emit archive header"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c9
    .catch Landroid/os/RemoteException; {:try_start_3be .. :try_end_3c9} :catch_363
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3c9} :catch_42f
    .catchall {:try_start_3be .. :try_end_3c9} :catchall_4e9

    :try_start_3c9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d0
    .catch Ljava/io/IOException; {:try_start_3c9 .. :try_end_3d0} :catch_400

    :goto_3d0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_3d5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3e4
    .catchall {:try_start_3d5 .. :try_end_3e4} :catchall_420

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_400
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d0

    :catchall_420
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_423
    move-exception v20

    :try_start_424
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to find shared-storage backup handler"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42d
    .catch Landroid/os/RemoteException; {:try_start_424 .. :try_end_42d} :catch_363
    .catch Ljava/lang/Exception; {:try_start_424 .. :try_end_42d} :catch_42f
    .catchall {:try_start_424 .. :try_end_42d} :catchall_4e9

    goto/16 :goto_2c7

    :catch_42f
    move-exception v23

    :try_start_430
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Internal exception during full backup"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43b
    .catchall {:try_start_430 .. :try_end_43b} :catchall_4e9

    if-eqz v7, :cond_443

    :try_start_43d
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44a
    .catch Ljava/io/IOException; {:try_start_43d .. :try_end_44a} :catch_591

    :goto_44a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_44f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_45e
    .catchall {:try_start_44f .. :try_end_45e} :catchall_5b2

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3ab

    :cond_47b
    :try_start_47b
    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_32b

    :cond_47f
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2cd

    :cond_483
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v5, :cond_529

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_48d
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_529

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--- Performing key-value backup for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ---"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v16

    move-object v11, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    iget-object v5, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_4e8
    .catch Landroid/os/RemoteException; {:try_start_47b .. :try_end_4e8} :catch_363
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_4e8} :catch_42f
    .catchall {:try_start_47b .. :try_end_4e8} :catchall_4e9

    goto :goto_48d

    :catchall_4e9
    move-exception v5

    if-eqz v7, :cond_4f2

    :try_start_4ec
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_4f2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f9
    .catch Ljava/io/IOException; {:try_start_4ec .. :try_end_4f9} :catch_5d9

    :goto_4f9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_4fe
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_50d
    .catchall {:try_start_4fe .. :try_end_50d} :catchall_5fa

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v8, "Full backup pass complete."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    :cond_529
    :try_start_529
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_52e
    .catch Landroid/os/RemoteException; {:try_start_529 .. :try_end_52e} :catch_363
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_52e} :catch_42f
    .catchall {:try_start_529 .. :try_end_52e} :catchall_4e9

    if-eqz v7, :cond_536

    :try_start_530
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53d
    .catch Ljava/io/IOException; {:try_start_530 .. :try_end_53d} :catch_56e

    :goto_53d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_551
    .catchall {:try_start_542 .. :try_end_551} :catchall_58e

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3ab

    :catch_56e
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53d

    :catchall_58e
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_591
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    :catchall_5b2
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_5b5
    move-exception v22

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IO error closing adb backup file: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37c

    :catchall_5d6
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_5d9
    move-exception v22

    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IO error closing adb backup file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f9

    :catchall_5fa
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_5fd
    move-exception v23

    move-object/from16 v25, v26

    goto/16 :goto_3be

    :cond_602
    move-object/from16 v25, v26

    goto/16 :goto_2aa
.end method

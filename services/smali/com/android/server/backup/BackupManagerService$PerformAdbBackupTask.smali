.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

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

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 19

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p14, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_24
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p9, :cond_33

    const-string/jumbo v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_33
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_35
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mKeyValue:Z

    return-void

    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_24

    :cond_46
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_35
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap14(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap16(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get5(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap14(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string/jumbo v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap15(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap15(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap15(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap15(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v11
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

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_16
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_4

    :catch_28
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

    :cond_4b
    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

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

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_27
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 41

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mKeyValue:Z

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

    new-instance v35, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    if-eqz v5, :cond_86

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

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

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

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

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v5, :cond_9c

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v39

    if-eqz v39, :cond_9c

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_9c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_ad

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

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

    if-eqz v5, :cond_16b

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_e4

    iget-object v5, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_128

    :cond_e4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v9, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_128

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    const/16 v6, 0x9

    invoke-static {v6, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

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

    :cond_128
    invoke-static {v9}, Lcom/android/server/backup/BackupManagerService;->-wrap6(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_ba

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v9, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

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

    goto/16 :goto_ba

    :cond_16b
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v38 .. v38}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v37, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    if-eqz v5, :cond_1f3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1f3

    const/16 v24, 0x1

    :goto_199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v5

    if-nez v5, :cond_219

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v5

    if-eqz v5, :cond_219

    xor-int/lit8 v5, v24, 0x1

    if-eqz v5, :cond_219

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1be} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1be} :catch_485
    .catchall {:try_start_187 .. :try_end_1be} :catchall_53b

    :try_start_1be
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c5} :catch_1f6

    :goto_1c5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_1ca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_1d9
    .catchall {:try_start_1ca .. :try_end_1d9} :catchall_216

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_1f3
    const/16 v24, 0x0

    goto :goto_199

    :catch_1f6
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

    goto :goto_1c5

    :catchall_216
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_219
    move-object/from16 v25, v37

    :try_start_21b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_299

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Backup password mismatch; aborting"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_241
    .catch Landroid/os/RemoteException; {:try_start_21b .. :try_end_241} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_241} :catch_485
    .catchall {:try_start_21b .. :try_end_241} :catchall_53b

    :try_start_241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_248} :catch_276

    :goto_248
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_24d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_25c
    .catchall {:try_start_24d .. :try_end_25c} :catchall_296

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_276
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

    goto :goto_248

    :catchall_296
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_299
    :try_start_299
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

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v5, :cond_404

    const-string/jumbo v5, "\n1\n"

    :goto_2b9
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2be
    .catch Landroid/os/RemoteException; {:try_start_299 .. :try_end_2be} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_2be} :catch_485
    .catchall {:try_start_299 .. :try_end_2be} :catchall_53b

    if-eqz v24, :cond_409

    :try_start_2c0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c9} :catch_415
    .catch Landroid/os/RemoteException; {:try_start_2c0 .. :try_end_2c9} :catch_3bd
    .catchall {:try_start_2c0 .. :try_end_2c9} :catchall_53b

    move-result-object v25

    move-object/from16 v26, v25

    :goto_2cc
    :try_start_2cc
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    if-eqz v5, :cond_650

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
    :try_end_2f9
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2f9} :catch_64b
    .catch Landroid/os/RemoteException; {:try_start_2cc .. :try_end_2f9} :catch_3bd
    .catchall {:try_start_2cc .. :try_end_2f9} :catchall_53b

    :goto_2f9
    move-object/from16 v7, v25

    :try_start_2fb
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_2ff
    .catch Landroid/os/RemoteException; {:try_start_2fb .. :try_end_2ff} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_2ff} :catch_485
    .catchall {:try_start_2fb .. :try_end_2ff} :catchall_53b

    if-eqz v5, :cond_316

    :try_start_301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.android.sharedstoragebackup"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_316
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_301 .. :try_end_316} :catch_479
    .catch Landroid/os/RemoteException; {:try_start_301 .. :try_end_316} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_301 .. :try_end_316} :catch_485
    .catchall {:try_start_301 .. :try_end_316} :catchall_53b

    :cond_316
    :goto_316
    :try_start_316
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v29, 0x0

    :goto_31c
    move/from16 v0, v29

    if-ge v0, v4, :cond_4d7

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

    new-instance v5, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentOpToken:I

    const/4 v8, 0x0

    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v11, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->setOutputFileDescriptor(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V

    if-eqz v31, :cond_4cf

    const-string/jumbo v5, "Shared storage"

    :goto_385
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage()I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v5, :cond_4d3

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v36

    if-nez v36, :cond_4d3

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
    :try_end_3bd
    .catch Landroid/os/RemoteException; {:try_start_316 .. :try_end_3bd} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_316 .. :try_end_3bd} :catch_485
    .catchall {:try_start_316 .. :try_end_3bd} :catchall_53b

    :catch_3bd
    move-exception v21

    :try_start_3be
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "App died during full backup"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c7
    .catchall {:try_start_3be .. :try_end_3c7} :catchall_53b

    if-eqz v7, :cond_3cf

    :try_start_3c9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_3cf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d6
    .catch Ljava/io/IOException; {:try_start_3c9 .. :try_end_3d6} :catch_603

    :goto_3d6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_3db
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_3ea
    .catchall {:try_start_3db .. :try_end_3ea} :catchall_624

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_403
    return-void

    :cond_404
    :try_start_404
    const-string/jumbo v5, "\n0\n"
    :try_end_407
    .catch Landroid/os/RemoteException; {:try_start_404 .. :try_end_407} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_404 .. :try_end_407} :catch_485
    .catchall {:try_start_404 .. :try_end_407} :catchall_53b

    goto/16 :goto_2b9

    :cond_409
    :try_start_409
    const-string/jumbo v5, "none\n"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_411
    .catch Ljava/lang/Exception; {:try_start_409 .. :try_end_411} :catch_415
    .catch Landroid/os/RemoteException; {:try_start_409 .. :try_end_411} :catch_3bd
    .catchall {:try_start_409 .. :try_end_411} :catchall_53b

    move-object/from16 v26, v25

    goto/16 :goto_2cc

    :catch_415
    move-exception v23

    :goto_416
    :try_start_416
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to emit archive header"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_421
    .catch Landroid/os/RemoteException; {:try_start_416 .. :try_end_421} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_421} :catch_485
    .catchall {:try_start_416 .. :try_end_421} :catchall_53b

    :try_start_421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_428
    .catch Ljava/io/IOException; {:try_start_421 .. :try_end_428} :catch_456

    :goto_428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_42d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_43c
    .catchall {:try_start_42d .. :try_end_43c} :catchall_476

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_456
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

    goto :goto_428

    :catchall_476
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_479
    move-exception v20

    :try_start_47a
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to find shared-storage backup handler"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_483
    .catch Landroid/os/RemoteException; {:try_start_47a .. :try_end_483} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_47a .. :try_end_483} :catch_485
    .catchall {:try_start_47a .. :try_end_483} :catchall_53b

    goto/16 :goto_316

    :catch_485
    move-exception v23

    :try_start_486
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Internal exception during full backup"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_491
    .catchall {:try_start_486 .. :try_end_491} :catchall_53b

    if-eqz v7, :cond_499

    :try_start_493
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a0
    .catch Ljava/io/IOException; {:try_start_493 .. :try_end_4a0} :catch_5df

    :goto_4a0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_4a5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_4b4
    .catchall {:try_start_4a5 .. :try_end_4b4} :catchall_600

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_403

    :cond_4cf
    :try_start_4cf
    iget-object v5, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_385

    :cond_4d3
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_31c

    :cond_4d7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v5, :cond_579

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_4e1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_579

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

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v15, v5, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v16, v0

    move-object v11, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    iget-object v5, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_53a
    .catch Landroid/os/RemoteException; {:try_start_4cf .. :try_end_53a} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_4cf .. :try_end_53a} :catch_485
    .catchall {:try_start_4cf .. :try_end_53a} :catchall_53b

    goto :goto_4e1

    :catchall_53b
    move-exception v5

    if-eqz v7, :cond_544

    :try_start_53e
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_544
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54b
    .catch Ljava/io/IOException; {:try_start_53e .. :try_end_54b} :catch_627

    :goto_54b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_550
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_55f
    .catchall {:try_start_550 .. :try_end_55f} :catchall_648

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v8, "Full backup pass complete."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    :cond_579
    :try_start_579
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_57e
    .catch Landroid/os/RemoteException; {:try_start_579 .. :try_end_57e} :catch_3bd
    .catch Ljava/lang/Exception; {:try_start_579 .. :try_end_57e} :catch_485
    .catchall {:try_start_579 .. :try_end_57e} :catchall_53b

    if-eqz v7, :cond_586

    :try_start_580
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_58d
    .catch Ljava/io/IOException; {:try_start_580 .. :try_end_58d} :catch_5bc

    :goto_58d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    :try_start_592
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_5a1
    .catchall {:try_start_592 .. :try_end_5a1} :catchall_5dc

    monitor-exit v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full backup pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_403

    :catch_5bc
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

    goto :goto_58d

    :catchall_5dc
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_5df
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

    goto/16 :goto_4a0

    :catchall_600
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_603
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

    goto/16 :goto_3d6

    :catchall_624
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_627
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

    goto/16 :goto_54b

    :catchall_648
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_64b
    move-exception v23

    move-object/from16 v25, v26

    goto/16 :goto_416

    :cond_650
    move-object/from16 v25, v26

    goto/16 :goto_2f9
.end method

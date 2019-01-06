.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-restore-RestorePolicySwitchesValues:[I


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

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

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

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

.field private final mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

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
.method static synthetic -get0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide v0
.end method

.method private static synthetic -getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

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
    sput-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/backup/restore/RestoreInstallObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreInstallObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 36

    const/16 v21, 0x0

    :try_start_2
    const-string/jumbo v24, "AES/CBC/PKCS5Padding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v23

    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v24, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v23 .. v23}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v25

    const-string/jumbo v26, "AES"

    invoke-direct/range {v24 .. v26}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v16

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x1

    aget-byte v14, v16, v24

    add-int/lit8 v24, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/lit8 v19, v14, 0x1

    add-int/lit8 v20, v19, 0x1

    aget-byte v14, v16, v19

    add-int v24, v20, v14

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    add-int v19, v20, v14

    add-int/lit8 v20, v19, 0x1

    aget-byte v14, v16, v19

    add-int v24, v20, v14

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v24

    if-eqz v24, :cond_ad

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v24, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v25, "AES"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v22, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v5}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v21, v22

    :cond_ac
    :goto_ac
    return-object v21

    :cond_ad
    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Incorrect password"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_b8} :catch_b9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_b8} :catch_fe
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_b8} :catch_f1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_b8} :catch_e4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_b8} :catch_d7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_b8} :catch_ca

    goto :goto_ac

    :catch_b9
    move-exception v7

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed parameter spec unavailable!"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    :catch_ca
    move-exception v8

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Illegal password; aborting"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catch_d7
    move-exception v12

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed padding mechanism unavailable!"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catch_e4
    move-exception v9

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Needed decryption algorithm unavailable!"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catch_f1
    move-exception v11

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Invalid block size in master key"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catch_fe
    move-exception v10

    if-eqz p8, :cond_ac

    const-string/jumbo v24, "BackupManagerService"

    const-string/jumbo v25, "Incorrect password"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 18

    const/4 v12, 0x0

    :try_start_1
    const-string/jumbo v0, "AES-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    if-nez v12, :cond_44

    if-eqz p2, :cond_44

    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    :cond_44
    :goto_44
    return-object v12

    :cond_45
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported encryption method: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5f} :catch_6b

    goto :goto_44

    :catch_60
    move-exception v11

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Can\'t parse restore data header"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :catch_6b
    move-exception v10

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Can\'t read input header"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
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

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v1, 0x0

    move-object v6, p0

    const/4 v4, 0x0

    const-string/jumbo v9, "ANDROID BACKUP\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    new-array v8, v2, [B

    invoke-static {p0, v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    const-string/jumbo v9, "ANDROID BACKUP\n"

    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x5

    if-gt v0, v9, :cond_72

    const/4 v9, 0x1

    if-ne v0, v9, :cond_54

    const/4 v5, 0x1

    :goto_2f
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_56

    const/4 v1, 0x1

    :goto_3a
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "none"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    const/4 v4, 0x1

    :cond_48
    :goto_48
    if-nez v4, :cond_97

    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Invalid restore data; aborting."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_54
    const/4 v5, 0x0

    goto :goto_2f

    :cond_56
    const/4 v1, 0x0

    goto :goto_3a

    :cond_58
    if-eqz p1, :cond_68

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_68

    invoke-static {p1, v7, v5, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_48

    const/4 v4, 0x1

    goto :goto_48

    :cond_68
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Archive is encrypted but no password given"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_72
    const-string/jumbo v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wrong header version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_8d
    const-string/jumbo v9, "BackupManagerService"

    const-string/jumbo v10, "Didn\'t read the right header magic"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_97
    if-eqz v1, :cond_9f

    new-instance v9, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v9, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v9

    :cond_9f
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_17

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_15

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    add-int/2addr v1, v0

    goto :goto_1

    :cond_17
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_11

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
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

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_48

    if-eqz p2, :cond_41

    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    new-instance v4, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {v4, v0, v1}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;I)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-wide/32 v2, 0x493e0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v7, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/RefactoredBackupManagerService;)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "restore-sys-finished-runner"

    invoke-direct {v0, v7, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_3e
    invoke-virtual {v4}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    :cond_41
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_46} :catch_55

    :goto_46
    iput-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :cond_48
    return-void

    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_54} :catch_55

    goto :goto_3e

    :catch_55
    move-exception v6

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private tearDownPipes()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_23

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    :goto_21
    iput-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    :cond_23
    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method


# virtual methods
.method restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 58

    new-instance v12, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;-><init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V

    new-instance v46, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    :try_start_12
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v10

    if-eqz v10, :cond_b0

    iget-object v14, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_5d

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Saw new package; finalizing old one"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    :cond_5d
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_manifest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, v46

    move/from16 v1, p5

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v44

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v5, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_b0
    :goto_b0
    if-eqz v10, :cond_572

    const/4 v5, 0x1

    :goto_b3
    return v5

    :cond_b4
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p7

    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_d7} :catch_d8

    goto :goto_b0

    :catch_d8
    move-exception v35

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "io exception on restore socket read"

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_b0

    :cond_e6
    const/16 v40, 0x1

    :try_start_e8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/backup/restore/RestorePolicy;

    invoke-static {}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->-getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_576

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Invalid policy from manifest"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_113
    :goto_113
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11d

    const/16 v40, 0x0

    :cond_11d
    if-eqz v40, :cond_12e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_12e

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Reusing existing agent instance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    if-eqz v40, :cond_1db

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_1db

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Need to launch agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_150} :catch_d8

    :try_start_150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v14, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_421

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_3f5

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Clearing app data preparatory to full restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    :goto_183
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_18a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->setUpPipes()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v5, "k"

    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42f

    const/4 v5, 0x0

    :goto_1a1
    invoke-virtual {v6, v7, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_1ad} :catch_41e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_150 .. :try_end_1ad} :catch_42c

    :goto_1ad
    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_1db

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1db
    if-eqz v40, :cond_214

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_214

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but agent is for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    :cond_214
    if-eqz v40, :cond_323

    const/16 v30, 0x1

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v48, v0
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_21c} :catch_d8

    :try_start_21c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v5, "obb"

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_432

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring OBB file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v15, v5, v6

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

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v25

    move/from16 v24, p6

    invoke-virtual/range {v13 .. v25}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_288
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_288} :catch_495
    .catch Landroid/os/RemoteException; {:try_start_21c .. :try_end_288} :catch_4fd

    :goto_288
    if-eqz v40, :cond_2dd

    const/16 v42, 0x1

    :try_start_28c
    new-instance v41, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_29e
    :goto_29e
    const-wide/16 v6, 0x0

    cmp-long v5, v48, v6

    if-lez v5, :cond_2cc

    move-object/from16 v0, p3

    array-length v5, v0

    int-to-long v6, v5

    cmp-long v5, v48, v6

    if-lez v5, :cond_541

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v47, v0

    :goto_2b1
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v47

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v37

    if-ltz v37, :cond_2ca

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    move/from16 v0, v37

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    :cond_2ca
    if-gtz v37, :cond_548

    :cond_2cc
    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v30

    :cond_2dd
    if-nez v30, :cond_323

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Agent failure restoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; now ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_323
    if-nez v40, :cond_b0

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "[discarding file content]"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long v32, v6, v8

    :goto_337
    const-wide/16 v6, 0x0

    cmp-long v5, v32, v6

    if-lez v5, :cond_b0

    move-object/from16 v0, p3

    array-length v5, v0

    int-to-long v6, v5

    cmp-long v5, v32, v6

    if-lez v5, :cond_56b

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v47, v0

    :goto_34a
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v47

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v38, v0

    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-ltz v5, :cond_368

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long v6, v6, v38

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    :cond_368
    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-lez v5, :cond_b0

    sub-long v32, v32, v38

    goto :goto_337

    :pswitch_371
    const/16 v40, 0x0

    goto/16 :goto_113

    :pswitch_375
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d0

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "APK file; installing"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v13

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/pm/PackageManager;Lcom/android/server/backup/restore/RestoreInstallObserver;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;Ljava/io/File;)Z

    move-result v36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v36, :cond_3cd

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_3c1
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    const/4 v5, 0x1

    return v5

    :cond_3cd
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_3c1

    :cond_3d0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v40, 0x0

    goto/16 :goto_113

    :pswitch_3dd
    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "apk present but ACCEPT"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f1
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_3f1} :catch_d8

    const/16 v40, 0x0

    goto/16 :goto_113

    :cond_3f5
    :try_start_3f5
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "backup agent ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") => no clear"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_183

    :catch_41e
    move-exception v35

    goto/16 :goto_1ad

    :cond_421
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42a
    .catch Ljava/io/IOException; {:try_start_3f5 .. :try_end_42a} :catch_41e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f5 .. :try_end_42a} :catch_42c

    goto/16 :goto_18a

    :catch_42c
    move-exception v31

    goto/16 :goto_1ad

    :cond_42f
    const/4 v5, 0x3

    goto/16 :goto_1a1

    :cond_432
    :try_start_432
    const-string/jumbo v5, "k"

    iget-object v6, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a5

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring key-value file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v19, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v20, v0

    move-object/from16 v18, v10

    move/from16 v21, p6

    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-key-value-runner"

    invoke-direct {v5, v15, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_493
    .catch Ljava/io/IOException; {:try_start_432 .. :try_end_493} :catch_495
    .catch Landroid/os/RemoteException; {:try_start_432 .. :try_end_493} :catch_4fd

    goto/16 :goto_288

    :catch_495
    move-exception v35

    :try_start_496
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Couldn\'t establish restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49f
    .catch Ljava/io/IOException; {:try_start_496 .. :try_end_49f} :catch_d8

    const/16 v30, 0x0

    const/16 v40, 0x0

    goto/16 :goto_288

    :cond_4a5
    :try_start_4a5
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invoking agent to restore file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50d

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "system process agent - spinning a thread"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/backup/restore/RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    move-object v7, v10

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-runner"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_4fb
    .catch Ljava/io/IOException; {:try_start_4a5 .. :try_end_4fb} :catch_495
    .catch Landroid/os/RemoteException; {:try_start_4a5 .. :try_end_4fb} :catch_4fd

    goto/16 :goto_288

    :catch_4fd
    move-exception v34

    :try_start_4fe
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Agent crashed during full restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_507
    .catch Ljava/io/IOException; {:try_start_4fe .. :try_end_507} :catch_d8

    const/16 v30, 0x0

    const/16 v40, 0x0

    goto/16 :goto_288

    :cond_50d
    :try_start_50d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v18, v5, v6

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

    iget-object v5, v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v29

    move/from16 v28, p6

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_53f
    .catch Ljava/io/IOException; {:try_start_50d .. :try_end_53f} :catch_495
    .catch Landroid/os/RemoteException; {:try_start_50d .. :try_end_53f} :catch_4fd

    goto/16 :goto_288

    :cond_541
    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    goto/16 :goto_2b1

    :cond_548
    move/from16 v0, v37

    int-to-long v6, v0

    sub-long v48, v48, v6

    if-eqz v42, :cond_29e

    const/4 v5, 0x0

    :try_start_550
    move-object/from16 v0, v41

    move-object/from16 v1, p3

    move/from16 v2, v37

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_559
    .catch Ljava/io/IOException; {:try_start_550 .. :try_end_559} :catch_55b

    goto/16 :goto_29e

    :catch_55b
    move-exception v35

    :try_start_55c
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Failed to write to restore pipe"

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_567
    .catch Ljava/io/IOException; {:try_start_55c .. :try_end_567} :catch_d8

    const/16 v42, 0x0

    goto/16 :goto_29e

    :cond_56b
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v47, v0

    goto/16 :goto_34a

    :cond_572
    const/4 v5, 0x0

    goto/16 :goto_b3

    nop

    :pswitch_data_576
    .packed-switch 0x1
        :pswitch_3dd
        :pswitch_375
        :pswitch_371
    .end packed-switch
.end method

.method public run()V
    .registers 14

    const/4 v12, 0x1

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "--- Performing full-dataset restore ---"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "com.android.sharedstoragebackup"

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const/4 v10, 0x0

    :try_start_2f
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Backup password mismatch; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_42} :catch_158
    .catchall {:try_start_2f .. :try_end_42} :catchall_1b1

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :try_start_4a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_7e

    :goto_4f
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_52
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_89

    monitor-exit v2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_7e
    move-exception v9

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catchall_89
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8c
    const-wide/16 v4, 0x0

    :try_start_8e
    iput-wide v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_9b} :catch_158
    .catchall {:try_start_8e .. :try_end_9b} :catchall_1b1

    :try_start_9b
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a0} :catch_204
    .catchall {:try_start_9b .. :try_end_a0} :catchall_201

    move-result-object v1

    if-nez v1, :cond_f2

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v11, :cond_b0

    :try_start_ad
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_b0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b5} :catch_e4

    :goto_b5
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_b8
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_c3
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_ef

    monitor-exit v2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_e4
    move-exception v9

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5

    :catchall_ef
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_f2
    const v0, 0x8000

    :try_start_f5
    new-array v3, v0, [B

    :cond_f7
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_105} :catch_204
    .catchall {:try_start_f5 .. :try_end_105} :catchall_201

    move-result v8

    if-nez v8, :cond_f7

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v11, :cond_115

    :try_start_112
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_115
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11a} :catch_14a

    :goto_11a
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_11d
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_128
    .catchall {:try_start_11d .. :try_end_128} :catchall_155

    monitor-exit v2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v10, v11

    :goto_149
    return-void

    :catch_14a
    move-exception v9

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11a

    :catchall_155
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_158
    move-exception v9

    :goto_159
    :try_start_159
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Unable to read restore input"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catchall {:try_start_159 .. :try_end_162} :catchall_1b1

    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v10, :cond_16f

    :try_start_16c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_16f
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_174} :catch_1a3

    :goto_174
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_177
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_182
    .catchall {:try_start_177 .. :try_end_182} :catchall_1ae

    monitor-exit v2

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Full restore pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_149

    :catch_1a3
    move-exception v9

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Close of restore data pipe threw"

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_174

    :catchall_1ae
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1b1
    move-exception v0

    :goto_1b2
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v10, :cond_1bf

    :try_start_1bc
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_1bf
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c4} :catch_1f3

    :goto_1c4
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_1c7
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_1d2
    .catchall {:try_start_1c7 .. :try_end_1d2} :catchall_1fe

    monitor-exit v2

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Full restore pass complete."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :catch_1f3
    move-exception v9

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Close of restore data pipe threw"

    invoke-static {v2, v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c4

    :catchall_1fe
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_201
    move-exception v0

    move-object v10, v11

    goto :goto_1b2

    :catch_204
    move-exception v9

    move-object v10, v11

    goto/16 :goto_159
.end method

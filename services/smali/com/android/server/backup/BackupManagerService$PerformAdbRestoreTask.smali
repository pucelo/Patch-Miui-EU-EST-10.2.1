.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$RestorePolicy:[I

.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
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

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
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

.field mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->values()[Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

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

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private HEXLOG([B)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_b
    if-lez v4, :cond_53

    const-string/jumbo v5, "%04x   "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    if-le v4, v5, :cond_41

    const/16 v2, 0x10

    :goto_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_43

    const-string/jumbo v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, v3, v1

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_41
    move v2, v4

    goto :goto_25

    :cond_43
    const-string/jumbo v5, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v4, v2

    add-int/2addr v3, v2

    goto :goto_b

    :cond_53
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 37

    const/16 v22, 0x0

    :try_start_2
    const-string/jumbo v25, "AES/CBC/PKCS5Padding"

    invoke-static/range {v25 .. v25}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap16(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v5

    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v24 .. v24}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v26

    const-string/jumbo v27, "AES"

    invoke-direct/range {v25 .. v27}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v17

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x1

    aget-byte v15, v17, v25

    add-int/lit8 v25, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int/lit8 v20, v15, 0x1

    add-int/lit8 v21, v20, 0x1

    aget-byte v15, v17, v20

    add-int v25, v21, v15

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v16

    add-int v20, v21, v15

    add-int/lit8 v21, v20, 0x1

    aget-byte v15, v17, v20

    add-int v25, v21, v15

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v25

    if-eqz v25, :cond_db

    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v25, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v26, "AES"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v23, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v22, v23

    :cond_da
    :goto_da
    return-object v22

    :cond_db
    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Incorrect password"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_e6} :catch_e7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_e6} :catch_12c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_e6} :catch_11f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_e6} :catch_112
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_e6} :catch_105
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_e6} :catch_f8

    goto :goto_da

    :catch_e7
    move-exception v8

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed parameter spec unavailable!"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_da

    :catch_f8
    move-exception v9

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Illegal password; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :catch_105
    move-exception v13

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed padding mechanism unavailable!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :catch_112
    move-exception v10

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Needed decryption algorithm unavailable!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :catch_11f
    move-exception v12

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Invalid block size in master key"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    :catch_12c
    move-exception v11

    if-eqz p8, :cond_da

    const-string/jumbo v25, "BackupManagerService"

    const-string/jumbo v26, "Incorrect password"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 19

    const/4 v13, 0x0

    :try_start_1
    const-string/jumbo v1, "AES-256"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "PBKDF2WithHmacSHA1"

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v13

    if-nez v13, :cond_54

    if-eqz p2, :cond_54

    const-string/jumbo v2, "PBKDF2WithHmacSHA1And8bit"

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v13

    :cond_54
    :goto_54
    return-object v13

    :cond_55
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported encryption method: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_71} :catch_7d

    goto :goto_54

    :catch_72
    move-exception v12

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Can\'t parse restore data header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catch_7d
    move-exception v11

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Can\'t read input header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method dumpFileMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 16

    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v12, 0x0

    const/16 v3, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v2, p1, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_df

    const/16 v2, 0x64

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e2

    move v2, v4

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e5

    move v2, v5

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e8

    move v2, v6

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_eb

    move v2, v4

    :goto_4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_ee

    move v2, v5

    :goto_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_f1

    move v2, v6

    :goto_66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_f4

    :goto_72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_f7

    :goto_7e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    cmp-long v2, v4, v12

    if-eqz v2, :cond_f9

    :goto_8a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_df
    move v2, v3

    goto/16 :goto_18

    :cond_e2
    move v2, v3

    goto/16 :goto_25

    :cond_e5
    move v2, v3

    goto/16 :goto_32

    :cond_e8
    move v2, v3

    goto/16 :goto_3f

    :cond_eb
    move v2, v3

    goto/16 :goto_4c

    :cond_ee
    move v2, v3

    goto/16 :goto_59

    :cond_f1
    move v2, v3

    goto/16 :goto_66

    :cond_f4
    move v4, v3

    goto/16 :goto_72

    :cond_f7
    move v5, v3

    goto :goto_7e

    :cond_f9
    move v6, v3

    goto :goto_8a
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    if-lt p2, v1, :cond_c

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move v2, p2

    :goto_d
    if-ge v2, v1, :cond_15

    aget-byte v0, p1, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_22

    :cond_15
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p2

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, p3, v4

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method extractRadix([BIII)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x30

    const-wide/16 v4, 0x0

    add-int v1, p2, p3

    move v2, p2

    :goto_7
    if-ge v2, v1, :cond_11

    aget-byte v0, p1, v2

    if-eqz v0, :cond_11

    const/16 v3, 0x20

    if-ne v0, v3, :cond_12

    :cond_11
    return-wide v4

    :cond_12
    if-lt v0, v10, :cond_1a

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_40

    :cond_1a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method extractString([BII)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p1, v1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 28

    const/4 v10, 0x1

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installing from backup: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->getCachedInstallPath(Ljava/io/File;Ljava/lang/String;J)Ljava/io/File;

    move-result-object v4

    :try_start_5e
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v19, 0x8000

    move/from16 v0, v19

    new-array v6, v0, [B

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    :goto_6e
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_bc

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-gez v19, :cond_b9

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    :goto_88
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_bc

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v0, v7

    move-wide/from16 v20, v0

    sub-long v14, v14, v20

    goto :goto_6e

    :cond_b9
    move-wide/from16 v16, v14

    goto :goto_88

    :cond_bc
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_121} :catch_1b7
    .catchall {:try_start_5e .. :try_end_121} :catchall_2e1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_128

    const/4 v10, 0x0

    :cond_128
    :goto_128
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_12b
    return v10

    :cond_12c
    const/16 v18, 0x0

    :try_start_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1c7

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream claimed to include apk for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but apk was really "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/16 v18, 0x1

    :cond_180
    :goto_180
    if-eqz v18, :cond_128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_1b5} :catch_1b7
    .catchall {:try_start_12e .. :try_end_1b5} :catchall_2e1

    goto/16 :goto_128

    :catch_1b7
    move-exception v9

    :try_start_1b8
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c1
    .catchall {:try_start_1b8 .. :try_end_1c1} :catchall_2e1

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_12b

    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x40

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v12, v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v19

    if-nez v19, :cond_22a

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const v20, 0x8000

    and-int v19, v19, v20

    if-nez v19, :cond_22a

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream contains apk of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but it disallows backup/restore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_180

    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    invoke-static {v13, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_28a

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_180

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_180

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " has restricted uid and no agent"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_180

    :cond_28a
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " signatures do not match restore manifest"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c7 .. :try_end_2b1} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_2b1} :catch_1b7
    .catchall {:try_start_1c7 .. :try_end_2b1} :catchall_2e1

    const/4 v10, 0x0

    const/16 v18, 0x1

    goto/16 :goto_180

    :catch_2b6
    move-exception v8

    :try_start_2b7
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Install of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " succeeded but now not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2de
    .catch Ljava/io/IOException; {:try_start_2b7 .. :try_end_2de} :catch_1b7
    .catchall {:try_start_2b7 .. :try_end_2de} :catchall_2e1

    const/4 v10, 0x0

    goto/16 :goto_180

    :catchall_2e1
    move-exception v19

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v19
.end method

.method readAppManifest(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x10000

    cmp-long v19, v20, v22

    if-lez v19, :cond_31

    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_31
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v4, v0, [B

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-nez v19, :cond_136

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v13, 0x0

    :try_start_87
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_382

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v11, v17, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_353

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_13f

    const/16 v19, 0x0

    aget-object v19, v17, v19

    :goto_ee
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string/jumbo v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_331

    new-array v0, v12, [Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    const/4 v10, 0x0

    :goto_11e
    if-ge v10, v12, :cond_142

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v13

    new-instance v19, Landroid/content/pm/Signature;

    const/16 v20, 0x0

    aget-object v20, v17, v20

    invoke-direct/range {v19 .. v20}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v19, v16, v10
    :try_end_133
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_133} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_133} :catch_324

    add-int/lit8 v10, v10, 0x1

    goto :goto_11e

    :cond_136
    new-instance v19, Ljava/io/IOException;

    const-string/jumbo v20, "Unexpected EOF in manifest"

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_13f
    const/16 v19, 0x0

    goto :goto_ee

    :cond_142
    :try_start_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_157
    .catch Ljava/lang/NumberFormatException; {:try_start_142 .. :try_end_157} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_157} :catch_324

    :try_start_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x40

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v19

    if-nez v19, :cond_18e

    const v19, 0x8000

    and-int v19, v19, v8

    if-eqz v19, :cond_2fb

    :cond_18e
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1ac

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2af

    :cond_1ac
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_261

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x20000

    and-int v19, v19, v20

    if-eqz v19, :cond_201

    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Package has restoreAnyVersion; taking data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_1cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_157 .. :try_end_1cf} :catch_283
    .catch Ljava/lang/NumberFormatException; {:try_start_157 .. :try_end_1cf} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_157 .. :try_end_1cf} :catch_324

    :goto_1cf
    :try_start_1cf
    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v19

    if-ne v15, v0, :cond_200

    xor-int/lit8 v19, v9, 0x1

    if-eqz v19, :cond_200

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Cannot restore package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " without the matching .apk"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_200
    .catch Ljava/lang/NumberFormatException; {:try_start_1cf .. :try_end_200} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1cf .. :try_end_200} :catch_324

    :cond_200
    :goto_200
    return-object v15

    :cond_201
    :try_start_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v19

    if-nez v19, :cond_21d

    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_229

    :cond_21d
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Sig + version match; taking data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_1cf

    :cond_229
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Data version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is newer than installed version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " - requiring apk"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_1cf

    :cond_261
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_281
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_201 .. :try_end_281} :catch_283
    .catch Ljava/lang/NumberFormatException; {:try_start_201 .. :try_end_281} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_201 .. :try_end_281} :catch_324

    goto/16 :goto_1cf

    :catch_283
    move-exception v5

    :try_start_284
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " not installed; requiring apk in dataset"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_284 .. :try_end_2ad} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_284 .. :try_end_2ad} :catch_324

    goto/16 :goto_1cf

    :cond_2af
    :try_start_2af
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " is system level with no agent"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2af .. :try_end_2d6} :catch_283
    .catch Ljava/lang/NumberFormatException; {:try_start_2af .. :try_end_2d6} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2af .. :try_end_2d6} :catch_324

    goto/16 :goto_1cf

    :catch_2d8
    move-exception v7

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Corrupt restore manifest for package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_200

    :cond_2fb
    :try_start_2fb
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore manifest from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but allowBackup=false"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_322
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2fb .. :try_end_322} :catch_283
    .catch Ljava/lang/NumberFormatException; {:try_start_2fb .. :try_end_322} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fb .. :try_end_322} :catch_324

    goto/16 :goto_1cf

    :catch_324
    move-exception v6

    const-string/jumbo v19, "BackupManagerService"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_200

    :cond_331
    :try_start_331
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Missing signature on backed-up package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_200

    :cond_353
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Expected package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but restore manifest claims "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_200

    :cond_382
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown restore manifest version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " for package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b1
    .catch Ljava/lang/NumberFormatException; {:try_start_331 .. :try_end_3b1} :catch_2d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_331 .. :try_end_3b1} :catch_324

    goto/16 :goto_200
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p4, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_18

    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_19

    :cond_18
    return v1

    :cond_19
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

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

.method readMetadata(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_29

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_29
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v11, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v12, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_c6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x0

    aget-object v6, v8, v11

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_112

    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v11, v3

    sub-int/2addr v11, v5

    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_87
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_13b

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/high16 v11, 0x10000

    if-le v7, v11, :cond_cf

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_c6
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_cf
    packed-switch v9, :pswitch_data_158

    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_87

    :pswitch_103
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_87

    :cond_112
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " but widget data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13b
    :goto_13b
    return-void

    :cond_13c
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    nop

    :pswitch_data_158
    .packed-switch 0x1ffed01
        :pswitch_103
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_4e

    const-string/jumbo v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " - aborting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4e
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    array-length v12, v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_73

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_73
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v12

    const/4 v9, 0x0

    :cond_84
    add-int/lit8 v4, v9, 0x1

    :goto_86
    if-ge v4, v2, :cond_91

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_91

    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    :cond_91
    if-lt v4, v2, :cond_9c

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9c
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    add-int/lit8 v5, v4, 0x1

    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v11, v5, 0x1

    :goto_af
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_ba

    if-gt v11, v4, :cond_ba

    add-int/lit8 v11, v11, 0x1

    goto :goto_af

    :cond_ba
    if-le v11, v4, :cond_c5

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c5
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ef

    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :goto_ea
    add-int/2addr v9, v7

    if-lt v9, v2, :cond_84

    const/4 v12, 0x1

    return v12

    :cond_ef
    const-string/jumbo v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_101

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_ea

    :cond_101
    const-string/jumbo v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-ge v0, v2, :cond_15

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const/4 v1, 0x1

    return v1
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/FileMetadata;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x200

    new-array v0, v8, [B

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    if-eqz v2, :cond_148

    :try_start_b
    new-instance v4, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/FileMetadata;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_22d

    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_16
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7f

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_7f
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    const/16 v8, 0x78

    if-ne v7, v8, :cond_c4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    :cond_91
    if-nez v2, :cond_c0

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v1

    move-object v3, v4

    :goto_9e
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->HEXLOG([B)V

    throw v1

    :cond_c0
    const/16 v8, 0x9c

    :try_start_c2
    aget-byte v7, v0, v8

    :cond_c4
    sparse-switch v7, :sswitch_data_230

    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_fb
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    :cond_fe
    :goto_fe
    const-string/jumbo v8, "shared/"

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "shared/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_17e

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    :goto_147
    move-object v3, v4

    :cond_148
    return-object v3

    :sswitch_149
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_fe

    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_fe

    :sswitch_162
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return-object v8

    :cond_17e
    const-string/jumbo v8, "apps/"

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "apps/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_147

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1c7

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1c7
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_147

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_147

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_218

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_218
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_22b} :catch_9c

    goto/16 :goto_147

    :catch_22d
    move-exception v1

    goto/16 :goto_9e

    :sswitch_data_230
    .sparse-switch
        0x0 -> :sswitch_162
        0x30 -> :sswitch_fb
        0x35 -> :sswitch_149
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .registers 48

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/FileMetadata;

    move-result-object v32

    if-eqz v32, :cond_86

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Saw new package; finalizing old one"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    :cond_4d
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, "_manifest"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readAppManifest(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    :cond_86
    :goto_86
    if-eqz v32, :cond_5c1

    const/4 v4, 0x1

    :goto_89
    return v4

    :cond_8a
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, "_meta"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readMetadata(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_ab} :catch_ac

    goto :goto_86

    :catch_ac
    move-exception v31

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "io exception on restore socket read"

    move-object/from16 v0, v31

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v32, 0x0

    goto :goto_86

    :cond_bb
    const/16 v38, 0x1

    :try_start_bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v8, v9, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->addRestoredSize(JI)V

    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->-getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_5c4

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Invalid policy from manifest"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f7
    :goto_f7
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, ".."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_111

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, "//"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_113

    :cond_111
    const/16 v38, 0x0

    :cond_113
    if-eqz v38, :cond_124

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_124

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Reusing existing agent instance"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    if-eqz v38, :cond_1fa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_1fa

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Need to launch agent for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_146} :catch_ac

    :try_start_146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    invoke-static {v4, v10, v8}, Lcom/android/server/backup/BackupManagerServiceInjector;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_432

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Clearing app data preparatory to full restore"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    :goto_17e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->setUpPipes()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v4, "k"

    move-object/from16 v0, v32

    iget-object v13, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46c

    const/4 v4, 0x0

    :goto_19e
    invoke-virtual {v8, v9, v4}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v13, 0x1

    aget-object v9, v9, v13

    invoke-static {v4, v8, v9}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_1c0
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_1c0} :catch_45b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_146 .. :try_end_1c0} :catch_469

    :goto_1c0
    :try_start_1c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_1fa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    const/4 v8, 0x2

    invoke-static {v8, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to create agent for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fa
    if-eqz v38, :cond_233

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_233

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Restoring data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but agent is for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v38, 0x0

    :cond_233
    if-eqz v38, :cond_365

    const/16 v26, 0x1

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v42, v0

    const-string/jumbo v4, "com.android.sharedstoragebackup"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_46f

    const-wide/32 v6, 0x1b7740

    :goto_249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_250} :catch_ac

    move-result v5

    :try_start_251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    const-string/jumbo v4, "obb"

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_474

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Restoring OBB file for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v11, v4, v8

    move-object/from16 v0, v32

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v32

    iget v14, v0, Lcom/android/server/backup/FileMetadata;->type:I

    move-object/from16 v0, v32

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v21, v0

    move/from16 v20, v5

    invoke-virtual/range {v9 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_2c0} :catch_4d7
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_2c0} :catch_540

    :goto_2c0
    if-eqz v38, :cond_321

    const/16 v40, 0x1

    :try_start_2c4
    new-instance v39, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_2d6
    :goto_2d6
    const-wide/16 v8, 0x0

    cmp-long v4, v42, v8

    if-lez v4, :cond_304

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v8, v4

    cmp-long v4, v42, v8

    if-lez v4, :cond_58c

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v44, v0

    :goto_2e9
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v44

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v35

    if-ltz v35, :cond_302

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    move/from16 v0, v35

    int-to-long v14, v0

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    :cond_302
    if-gtz v35, :cond_593

    :cond_304
    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v4

    if-eqz v4, :cond_5b6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v26

    :cond_321
    :goto_321
    if-nez v26, :cond_365

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Agent failure restoring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; now ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v8, 0x12

    invoke-virtual {v4, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_365
    if-nez v38, :cond_86

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "[discarding file content]"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v8, v14

    const-wide/16 v14, -0x200

    and-long v28, v8, v14

    :goto_37b
    const-wide/16 v8, 0x0

    cmp-long v4, v28, v8

    if-lez v4, :cond_86

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v8, v4

    cmp-long v4, v28, v8

    if-lez v4, :cond_5ba

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v44, v0

    :goto_38e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v44

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    const-wide/16 v8, 0x0

    cmp-long v4, v36, v8

    if-ltz v4, :cond_3ac

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    add-long v8, v8, v36

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    :cond_3ac
    const-wide/16 v8, 0x0

    cmp-long v4, v36, v8

    if-lez v4, :cond_86

    sub-long v28, v28, v36

    goto :goto_37b

    :pswitch_3b5
    const/16 v38, 0x0

    goto/16 :goto_f7

    :pswitch_3b9
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v8, "a"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40b

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "APK file; installing"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->installApk(Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v38

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v38, :cond_408

    sget-object v4, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_3ed
    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v32

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->skipTarPadding(JLjava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->onApkInstalled(I)V

    const/4 v4, 0x1

    return v4

    :cond_408
    sget-object v4, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_3ed

    :cond_40b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v38, 0x0

    goto/16 :goto_f7

    :pswitch_418
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v8, "a"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f7

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "apk present but ACCEPT"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42e
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_42e} :catch_ac

    const/16 v38, 0x0

    goto/16 :goto_f7

    :cond_432
    :try_start_432
    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "backup agent ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") => no clear"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17e

    :catch_45b
    move-exception v31

    goto/16 :goto_1c0

    :cond_45e
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "We\'ve initialized this app already; no clear required"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_467
    .catch Ljava/io/IOException; {:try_start_432 .. :try_end_467} :catch_45b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_432 .. :try_end_467} :catch_469

    goto/16 :goto_185

    :catch_469
    move-exception v27

    goto/16 :goto_1c0

    :cond_46c
    const/4 v4, 0x3

    goto/16 :goto_19e

    :cond_46f
    const-wide/32 v6, 0xea60

    goto/16 :goto_249

    :cond_474
    :try_start_474
    const-string/jumbo v4, "k"

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e7

    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Restoring key-value file for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v4, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v15, v4, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v14, v32

    move/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v8, "restore-key-value-runner"

    invoke-direct {v4, v11, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_4d5
    .catch Ljava/io/IOException; {:try_start_474 .. :try_end_4d5} :catch_4d7
    .catch Landroid/os/RemoteException; {:try_start_474 .. :try_end_4d5} :catch_540

    goto/16 :goto_2c0

    :catch_4d7
    move-exception v31

    :try_start_4d8
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Couldn\'t establish restore"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e1
    .catch Ljava/io/IOException; {:try_start_4d8 .. :try_end_4e1} :catch_ac

    const/16 v26, 0x0

    const/16 v38, 0x0

    goto/16 :goto_2c0

    :cond_4e7
    :try_start_4e7
    const-string/jumbo v4, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invoking agent to restore file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v8, "system"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_550

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "system process agent - spinning a thread"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v16, v4, v8

    move-object/from16 v13, p0

    move-object/from16 v15, v32

    move/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v8, "restore-sys-runner"

    invoke-direct {v4, v12, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_53e
    .catch Ljava/io/IOException; {:try_start_4e7 .. :try_end_53e} :catch_4d7
    .catch Landroid/os/RemoteException; {:try_start_4e7 .. :try_end_53e} :catch_540

    goto/16 :goto_2c0

    :catch_540
    move-exception v30

    :try_start_541
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Agent crashed during full restore"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54a
    .catch Ljava/io/IOException; {:try_start_541 .. :try_end_54a} :catch_ac

    const/16 v26, 0x0

    const/16 v38, 0x0

    goto/16 :goto_2c0

    :cond_550
    :try_start_550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v14, v4, v8

    move-object/from16 v0, v32

    iget-wide v15, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v17, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v25, v0

    move/from16 v24, v5

    invoke-interface/range {v13 .. v25}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_58a
    .catch Ljava/io/IOException; {:try_start_550 .. :try_end_58a} :catch_4d7
    .catch Landroid/os/RemoteException; {:try_start_550 .. :try_end_58a} :catch_540

    goto/16 :goto_2c0

    :cond_58c
    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v44, v0

    goto/16 :goto_2e9

    :cond_593
    move/from16 v0, v35

    int-to-long v8, v0

    sub-long v42, v42, v8

    if-eqz v40, :cond_2d6

    const/4 v4, 0x0

    :try_start_59b
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5a4
    .catch Ljava/io/IOException; {:try_start_59b .. :try_end_5a4} :catch_5a6

    goto/16 :goto_2d6

    :catch_5a6
    move-exception v31

    :try_start_5a7
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v8, "Failed to write to restore pipe"

    move-object/from16 v0, v31

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b2
    .catch Ljava/io/IOException; {:try_start_5a7 .. :try_end_5b2} :catch_ac

    const/16 v40, 0x0

    goto/16 :goto_2d6

    :cond_5b6
    const/16 v26, 0x0

    goto/16 :goto_321

    :cond_5ba
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v44, v0

    goto/16 :goto_38e

    :cond_5c1
    const/4 v4, 0x0

    goto/16 :goto_89

    :pswitch_data_5c4
    .packed-switch 0x1
        :pswitch_418
        :pswitch_3b9
        :pswitch_3b5
    .end packed-switch
.end method

.method public run()V
    .registers 28

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "--- Performing full-dataset restore ---"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendStartRestore()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string/jumbo v5, "com.android.sharedstoragebackup"

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const/16 v23, 0x0

    const/16 v21, 0x0

    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9b

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Backup password mismatch; aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_3a1
    .catchall {:try_start_30 .. :try_end_47} :catchall_399

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :try_start_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_8d

    :goto_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_98

    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full restore pass complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_8d
    move-exception v14

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b

    :catchall_98
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_9b
    const-wide/16 v4, 0x0

    :try_start_9d
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    const v4, 0x8000

    new-array v11, v4, [B

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_b5} :catch_3a1
    .catchall {:try_start_9d .. :try_end_b5} :catchall_399

    :try_start_b5
    new-instance v22, Ljava/io/DataInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_3a4
    .catchall {:try_start_b5 .. :try_end_be} :catchall_39c

    :try_start_be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerServiceInjector;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    const/4 v12, 0x0

    move-object/from16 v20, v24

    const/16 v18, 0x0

    const-string/jumbo v4, "ANDROID BACKUP\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    new-array v0, v15, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    const-string/jumbo v4, "ANDROID BACKUP\n"

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2c4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v4, 0x5

    if-le v10, v4, :cond_115

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v4

    if-eqz v4, :cond_2a6

    :cond_115
    const/4 v4, 0x1

    if-ne v10, v4, :cond_1a5

    const/16 v19, 0x1

    :goto_11a
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1a9

    const/4 v12, 0x1

    :goto_129
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v4, "none"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    const/16 v18, 0x1

    :cond_13e
    :goto_13e
    if-nez v18, :cond_2de

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid restore data; aborting."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_155} :catch_1dc
    .catchall {:try_start_be .. :try_end_155} :catchall_251

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v22, :cond_167

    :try_start_164
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->close()V

    :cond_167
    if-eqz v24, :cond_16c

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    :cond_16c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_173} :catch_2cf

    :goto_173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_187
    .catchall {:try_start_178 .. :try_end_187} :catchall_2db

    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full restore pass complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_1a5
    const/16 v19, 0x0

    goto/16 :goto_11a

    :cond_1a9
    const/4 v12, 0x0

    goto/16 :goto_129

    :cond_1ac
    :try_start_1ac
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    if-eqz v4, :cond_23a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_23a

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v19

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v20

    if-eqz v20, :cond_1cc

    const/16 v18, 0x1

    :cond_1cc
    if-nez v20, :cond_13e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1da} :catch_1dc
    .catchall {:try_start_1ac .. :try_end_1da} :catchall_251

    goto/16 :goto_13e

    :catch_1dc
    move-exception v14

    move-object/from16 v21, v22

    move-object/from16 v23, v24

    :goto_1e1
    :try_start_1e1
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Unable to read restore input"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catchall {:try_start_1e1 .. :try_end_1ea} :catchall_399

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v21, :cond_1fc

    :try_start_1f9
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V

    :cond_1fc
    if-eqz v23, :cond_201

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    :cond_201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_208} :catch_37b

    :goto_208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_20d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_21c
    .catchall {:try_start_20d .. :try_end_21c} :catchall_387

    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full restore pass complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_239
    return-void

    :cond_23a
    :try_start_23a
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Archive is encrypted but no password given"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_24f} :catch_1dc
    .catchall {:try_start_23a .. :try_end_24f} :catchall_251

    goto/16 :goto_13e

    :catchall_251
    move-exception v4

    move-object/from16 v21, v22

    move-object/from16 v23, v24

    :goto_256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v21, :cond_268

    :try_start_265
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataInputStream;->close()V

    :cond_268
    if-eqz v23, :cond_26d

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    :cond_26d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_274} :catch_38a

    :goto_274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_288
    .catchall {:try_start_279 .. :try_end_288} :catchall_396

    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full restore pass complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4

    :cond_2a6
    :try_start_2a6
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrong header version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13e

    :cond_2c4
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Didn\'t read the right header magic"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2cd} :catch_1dc
    .catchall {:try_start_2a6 .. :try_end_2cd} :catchall_251

    goto/16 :goto_13e

    :catch_2cf
    move-exception v14

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_173

    :catchall_2db
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2de
    if-eqz v12, :cond_369

    :try_start_2e0
    new-instance v16, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_2e9
    :goto_2e9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;[B)Z

    move-result v13

    if-nez v13, :cond_2e9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v9, 0x12

    invoke-static/range {v4 .. v9}, Lcom/android/server/backup/BackupManagerServiceInjector;->restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V
    :try_end_314
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_314} :catch_1dc
    .catchall {:try_start_2e0 .. :try_end_314} :catchall_251

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownPipes()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    if-eqz v22, :cond_326

    :try_start_323
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->close()V

    :cond_326
    if-eqz v24, :cond_32b

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    :cond_32b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_332
    .catch Ljava/io/IOException; {:try_start_323 .. :try_end_332} :catch_36d

    :goto_332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_346
    .catchall {:try_start_337 .. :try_end_346} :catchall_378

    monitor-exit v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->sendEndRestore()V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Full restore pass complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v21, v22

    move-object/from16 v23, v24

    goto/16 :goto_239

    :cond_369
    move-object/from16 v16, v20

    goto/16 :goto_2e9

    :catch_36d
    move-exception v14

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_332

    :catchall_378
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_37b
    move-exception v14

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_208

    :catchall_387
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_38a
    move-exception v14

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Close of restore data pipe threw"

    invoke-static {v5, v6, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_274

    :catchall_396
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_399
    move-exception v4

    goto/16 :goto_256

    :catchall_39c
    move-exception v4

    move-object/from16 v23, v24

    goto/16 :goto_256

    :catch_3a1
    move-exception v14

    goto/16 :goto_1e1

    :catch_3a4
    move-exception v14

    move-object/from16 v23, v24

    goto/16 :goto_1e1
.end method

.method sendEndRestore()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_a
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

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

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_a
.end method

.method sendStartRestore()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_a
.end method

.method setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x200

    add-long v4, p1, v6

    rem-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1e

    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    new-array v0, v1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1f

    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mBytes:J

    :cond_1e
    return-void

    :cond_1f
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    if-eqz p2, :cond_44

    :try_start_c
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    new-instance v4, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v4, v0, v1}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v2, 0x493e0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    new-instance v7, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-direct {v7, p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;I)V

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "restore-sys-finished-runner"

    invoke-direct {v0, v7, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_41
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->await()V

    :cond_44
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_9c

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.backupconfirm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9c

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Killing host process"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_84} :catch_91

    :goto_84
    iput-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    :cond_86
    return-void

    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_90} :catch_91

    goto :goto_41

    :catch_91
    move-exception v6

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_9c
    :try_start_9c
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Not killing after full restore"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a5} :catch_91

    goto :goto_84
.end method

.method tearDownPipes()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_23

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    :goto_21
    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    :cond_23
    return-void

    :catch_24
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

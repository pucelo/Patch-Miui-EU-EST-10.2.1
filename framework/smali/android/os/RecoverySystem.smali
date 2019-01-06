.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static final ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static final DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "last_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    array-length v4, p1

    :goto_c
    if-ge v3, v4, :cond_22

    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    const-string/jumbo v3, "recovery"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RecoverySystem;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Reboot failed (no permissions?)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    return-void
.end method

.method private clearBcb()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1}, Landroid/os/IRecoverySystem;->clearBcb()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_9

    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_9
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_e
    const-string/jumbo v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_36

    move-result-object v3

    :try_start_29
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_3b

    :try_start_32
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    :catchall_36
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    :catchall_3b
    move-exception v6

    :try_start_3c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_36

    :cond_40
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    return-object v4
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x0

    :try_start_1
    sget-object v7, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string/jumbo v8, "...\n"

    const/high16 v9, -0x10000

    invoke-static {v7, v9, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_71

    move-result-object v4

    :goto_c
    if-eqz v4, :cond_11

    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    :cond_11
    sget-object v7, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_57

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_57

    const/4 v2, 0x0

    :try_start_22
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_87

    move-result-object v2

    :goto_2a
    if-eqz v2, :cond_57

    const-string/jumbo v7, "/data"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_92

    const-string/jumbo v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    sget-object v7, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_5e
    if-eqz v5, :cond_da

    array-length v7, v5

    if-ge v3, v7, :cond_da

    aget-object v7, v5, v3

    const-string/jumbo v8, "last_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :catch_71
    move-exception v1

    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "Error reading recovery log"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_7c
    move-exception v0

    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "No recovery log file"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_87
    move-exception v1

    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "Error reading uncrypt file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_92
    const-string/jumbo v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t delete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_ad
    if-eqz v6, :cond_bd

    aget-object v7, v5, v3

    sget-object v8, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    :cond_bd
    if-eqz v6, :cond_cd

    aget-object v7, v5, v3

    sget-object v8, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    :cond_cd
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v9, v5, v3

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    goto :goto_6e

    :cond_da
    return-object v4
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v12, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_3
    sget-object v11, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    sget-object v11, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "RecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " !!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "_s.zip"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v11, "/data/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_bc

    if-eqz p2, :cond_61

    sget-object v11, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_b9

    const-string/jumbo v11, "RecoverySystem"

    const-string/jumbo v13, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v13, "Failed to find block map file"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_61
    :try_start_61
    new-instance v9, Ljava/io/FileWriter;

    sget-object v11, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    :try_start_68
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_13c

    :try_start_7f
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    sget-object v11, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v11

    if-eqz v11, :cond_98

    sget-object v11, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_b4

    :cond_98
    const-string/jumbo v11, "RecoverySystem"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error setting permission for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    sget-object v11, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_b9
    const-string/jumbo v1, "@/cache/recovery/block.map"

    :cond_bc
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "--update_package="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "--locale="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "--security\n"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_124

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "--security\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_124
    const-string/jumbo v11, "recovery"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    invoke-direct {v6, v0}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_141

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v13, "Setup BCB failed"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_13c
    move-exception v11

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    throw v11

    :cond_141
    const-string/jumbo v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v13, "android.software.leanback"

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_182

    const-string/jumbo v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getState()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_182

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ",quiescent"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_182
    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v13, "Reboot failed (no permissions?)"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_18e
    .catchall {:try_start_7f .. :try_end_18e} :catchall_5e
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;ZLjava/lang/String;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v14, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_3
    sget-object v13, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "RecoverySystem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "!!! REBOOTING TO INSTALL "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " !!!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "_s.zip"

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v13, "/data/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c2

    if-eqz p2, :cond_61

    sget-object v13, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_bf

    const-string/jumbo v13, "RecoverySystem"

    const-string/jumbo v15, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v15, "Failed to find block map file"

    invoke-direct {v13, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_61
    :try_start_61
    new-instance v11, Ljava/io/FileWriter;

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v11, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5e

    :try_start_68
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_68 .. :try_end_7f} :catchall_1ad

    :try_start_7f
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v13

    if-eqz v13, :cond_9e

    sget-object v13, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_ba

    :cond_9e
    const-string/jumbo v13, "RecoverySystem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error setting permission for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    sget-object v13, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_bf
    const-string/jumbo v4, "@/cache/recovery/block.map"

    :cond_c2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "--update_package="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "--locale="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "--security\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "--export_validate="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v3, "--update_wipe\n"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_17d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "--update_wipe\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v13, "ro.crypto.type"

    const-string/jumbo v15, ""

    invoke-static {v13, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "--crypto_type="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17d
    if-eqz v10, :cond_193

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "--security\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_193
    const-string/jumbo v13, "recovery"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RecoverySystem;

    invoke-direct {v8, v1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1b2

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v15, "Setup BCB failed"

    invoke-direct {v13, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :catchall_1ad
    move-exception v13

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    throw v13

    :cond_1b2
    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    const-string/jumbo v13, "recovery-update"

    invoke-virtual {v7, v13}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v15, "Reboot failed (no permissions?)"

    invoke-direct {v13, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1cc
    .catchall {:try_start_7f .. :try_end_1cc} :catchall_5e
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .registers 32

    const/16 v27, 0x0

    const/4 v12, 0x0

    :try_start_3
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/FileReader;

    sget-object v28, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_262
    .catchall {:try_start_3 .. :try_end_15} :catchall_25f

    const/4 v14, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/4 v9, -0x1

    const/4 v7, -0x1

    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_183

    const/16 v26, 0x3a

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v15, v0, :cond_26

    add-int/lit8 v26, v15, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_26

    add-int/lit8 v26, v15, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_51} :catch_9c
    .catchall {:try_start_26 .. :try_end_51} :catchall_e5

    move-result-object v16

    :try_start_52
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_55} :catch_7a
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_9c
    .catchall {:try_start_52 .. :try_end_55} :catchall_e5

    move-result-wide v18

    const/high16 v4, 0x100000

    :try_start_58
    const-string/jumbo v26, "bytes"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_bd

    const-wide/32 v28, 0x100000

    div-long v28, v18, v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_6b
    .catch Ljava/lang/ArithmeticException; {:try_start_58 .. :try_end_6b} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_6b} :catch_9c
    .catchall {:try_start_58 .. :try_end_6b} :catchall_e5

    move-result v17

    :goto_6c
    :try_start_6c
    const-string/jumbo v26, "time"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e8

    move/from16 v24, v17

    goto :goto_26

    :catch_7a
    move-exception v11

    const-string/jumbo v26, "RecoverySystem"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to parse numbers in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_9b} :catch_9c
    .catchall {:try_start_6c .. :try_end_9b} :catchall_e5

    goto :goto_26

    :catch_9c
    move-exception v26

    move-object v12, v13

    :goto_9e
    :try_start_9e
    throw v26
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v27

    move-object/from16 v30, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v30

    :goto_a6
    if-eqz v12, :cond_ab

    :try_start_a8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ab} :catch_24c
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ae

    :cond_ab
    :goto_ab
    if-eqz v27, :cond_25e

    :try_start_ad
    throw v27
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v8

    :goto_af
    const-string/jumbo v26, "RecoverySystem"

    const-string/jumbo v27, "Failed to read lines in last_install"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bc
    return-void

    :cond_bd
    :try_start_bd
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_c0
    .catch Ljava/lang/ArithmeticException; {:try_start_bd .. :try_end_c0} :catch_c2
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_9c
    .catchall {:try_start_bd .. :try_end_c0} :catchall_e5

    move-result v17

    goto :goto_6c

    :catch_c2
    move-exception v10

    :try_start_c3
    const-string/jumbo v26, "RecoverySystem"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Number overflows in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :catchall_e5
    move-exception v26

    move-object v12, v13

    goto :goto_a6

    :cond_e8
    const-string/jumbo v26, "uncrypt_time"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f7

    move/from16 v25, v17

    goto/16 :goto_26

    :cond_f7
    const-string/jumbo v26, "source_build"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_106

    move/from16 v20, v17

    goto/16 :goto_26

    :cond_106
    const-string/jumbo v26, "bytes_written"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11f

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v6, v0, :cond_11b

    move/from16 v6, v17

    goto/16 :goto_26

    :cond_11b
    add-int v6, v6, v17

    goto/16 :goto_26

    :cond_11f
    const-string/jumbo v26, "bytes_stashed"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_138

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_134

    move/from16 v5, v17

    goto/16 :goto_26

    :cond_134
    add-int v5, v5, v17

    goto/16 :goto_26

    :cond_138
    const-string/jumbo v26, "temperature_start"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_147

    move/from16 v23, v17

    goto/16 :goto_26

    :cond_147
    const-string/jumbo v26, "temperature_end"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_156

    move/from16 v21, v17

    goto/16 :goto_26

    :cond_156
    const-string/jumbo v26, "temperature_max"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_165

    move/from16 v22, v17

    goto/16 :goto_26

    :cond_165
    const-string/jumbo v26, "error"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_174

    move/from16 v9, v17

    goto/16 :goto_26

    :cond_174
    const-string/jumbo v26, "cause"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_26

    move/from16 v7, v17

    goto/16 :goto_26

    :cond_183
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_197

    const-string/jumbo v26, "ota_time_total"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_197
    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1ab

    const-string/jumbo v26, "ota_uncrypt_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1ab
    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_1bf

    const-string/jumbo v26, "ota_source_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1bf
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_1cf

    const-string/jumbo v26, "ota_written_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1cf
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v5, v0, :cond_1df

    const-string/jumbo v26, "ota_stashed_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1df
    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-eq v0, v1, :cond_1f3

    const-string/jumbo v26, "ota_temperature_start"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1f3
    const/16 v26, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_207

    const-string/jumbo v26, "ota_temperature_end"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_207
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_21b

    const-string/jumbo v26, "ota_temperature_max"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_21b
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v9, v0, :cond_22b

    const-string/jumbo v26, "ota_non_ab_error_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_22b
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v7, v0, :cond_23b

    const-string/jumbo v26, "ota_non_ab_cause_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_23b
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_23b} :catch_9c
    .catchall {:try_start_c3 .. :try_end_23b} :catchall_e5

    :cond_23b
    if-eqz v13, :cond_240

    :try_start_23d
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_23d .. :try_end_240} :catch_247
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_240} :catch_243

    :cond_240
    :goto_240
    if-eqz v27, :cond_249

    :try_start_242
    throw v27
    :try_end_243
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_243} :catch_243

    :catch_243
    move-exception v8

    move-object v12, v13

    goto/16 :goto_af

    :catch_247
    move-exception v27

    goto :goto_240

    :cond_249
    move-object v12, v13

    goto/16 :goto_bc

    :catch_24c
    move-exception v28

    if-nez v27, :cond_253

    move-object/from16 v27, v28

    goto/16 :goto_ab

    :cond_253
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_ab

    :try_start_259
    invoke-virtual/range {v27 .. v28}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_ab

    :cond_25e
    throw v26
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25f} :catch_ae

    :catchall_25f
    move-exception v26

    goto/16 :goto_a6

    :catch_262
    move-exception v26

    goto/16 :goto_9e
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "/data/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    const-string/jumbo v4, "recovery"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RecoverySystem;

    const/4 v2, 0x0

    if-eqz p2, :cond_22

    if-eqz p3, :cond_31

    move-object v1, p3

    :goto_1d
    new-instance v2, Landroid/os/RecoverySystem$2;

    invoke-direct {v2, v1, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    :cond_22
    invoke-direct {v3, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v4

    if-nez v4, :cond_3b

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "process package failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_31
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1d

    :cond_3b
    return-void
.end method

.method private static readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_2f
    .catchall {:try_start_2 .. :try_end_7} :catchall_49

    :try_start_7
    const-string/jumbo v4, "compatibility.zip"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_d} :catch_4e
    .catchall {:try_start_7 .. :try_end_d} :catchall_4b

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    :try_start_13
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_19

    :cond_16
    :goto_16
    if-eqz v5, :cond_1b

    throw v5

    :catch_19
    move-exception v5

    goto :goto_16

    :cond_1b
    return v4

    :cond_1c
    :try_start_1c
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_23} :catch_4e
    .catchall {:try_start_1c .. :try_end_23} :catchall_4b

    move-result v4

    if-eqz v3, :cond_29

    :try_start_26
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2c

    :cond_29
    :goto_29
    if-eqz v5, :cond_2e

    throw v5

    :catch_2c
    move-exception v5

    goto :goto_29

    :cond_2e
    return v4

    :catch_2f
    move-exception v4

    :goto_30
    :try_start_30
    throw v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_35
    if-eqz v2, :cond_3a

    :try_start_37
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3d

    :cond_3a
    :goto_3a
    if-eqz v5, :cond_48

    throw v5

    :catch_3d
    move-exception v6

    if-nez v5, :cond_42

    move-object v5, v6

    goto :goto_3a

    :cond_42
    if-eq v5, v6, :cond_3a

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3a

    :cond_48
    throw v4

    :catchall_49
    move-exception v4

    goto :goto_35

    :catchall_4b
    move-exception v4

    move-object v2, v3

    goto :goto_35

    :catch_4e
    move-exception v4

    move-object v2, v3

    goto :goto_30
.end method

.method public static rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "--prompt_and_wipe_data"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--wipe_package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "--wipe_ab"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "--wipe_cache"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    if-nez p3, :cond_1d

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v14, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Wiping data is not allowed for this user."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v10, Landroid/os/ConditionVariable;

    invoke-direct {v10}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.MASTER_CLEAR"

    new-instance v5, Landroid/os/RecoverySystem$3;

    invoke-direct {v5, v10}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    move/from16 v0, p4

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Z)V

    const/4 v13, 0x0

    if-eqz p1, :cond_4f

    const-string/jumbo v13, "--shutdown_after"

    :cond_4f
    const/4 v12, 0x0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v13, v1, v3

    const-string/jumbo v3, "--wipe_data"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object v12, v1, v3

    const/4 v3, 0x3

    aput-object v11, v1, v3

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    if-eqz v1, :cond_1d

    array-length v3, v1

    if-ge v2, v3, :cond_1d

    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void

    :cond_3e
    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v1, 0x3f

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "_s.zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "/data/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string/jumbo v1, "@/cache/recovery/block.map"

    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--update_package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--locale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "--security\n"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_7f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--security\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7f
    const-string/jumbo v7, "recovery"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RecoverySystem;

    invoke-direct {v4, v0}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_97

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_97
    return-void
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p1, :cond_1a

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_1a
    const-wide/16 v28, 0x6

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v2, 0x2

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_39

    const/4 v2, 0x3

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_47

    :cond_39
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (no footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v2

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    throw v2

    :cond_47
    const/4 v2, 0x4

    :try_start_48
    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x5

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v5, v2, v9

    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x1

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v21, v2, v9

    add-int/lit8 v2, v5, 0x16

    new-array v15, v2, [B

    add-int/lit8 v2, v5, 0x16

    int-to-long v0, v2

    move-wide/from16 v28, v0

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v8, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/16 v9, 0x50

    if-ne v2, v9, :cond_84

    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-eq v2, v9, :cond_8d

    :cond_84
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (bad footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8d
    const/4 v2, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_84

    const/4 v2, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_84

    const/16 v17, 0x4

    :goto_9b
    array-length v2, v15

    add-int/lit8 v2, v2, -0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_ca

    aget-byte v2, v15, v17

    const/16 v9, 0x50

    if-ne v2, v9, :cond_c7

    add-int/lit8 v2, v17, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-ne v2, v9, :cond_c7

    add-int/lit8 v2, v17, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_c7

    add-int/lit8 v2, v17, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_c7

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c7
    add-int/lit8 v17, v17, 0x1

    goto :goto_9b

    :cond_ca
    new-instance v10, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v9, v5, 0x16

    sub-int v9, v9, v21

    move/from16 v0, v21

    invoke-direct {v2, v15, v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v10, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v14

    if-eqz v14, :cond_e3

    array-length v2, v14

    if-nez v2, :cond_ec

    :cond_e3
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no certificates"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ec
    const/4 v2, 0x0

    aget-object v13, v14, v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v23

    if-eqz v23, :cond_fe

    move-object/from16 v0, v23

    array-length v2, v0

    if-nez v2, :cond_107

    :cond_fe
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no signedData"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_107
    const/4 v2, 0x0

    aget-object v22, v23, v2

    const/16 v25, 0x0

    if-nez p2, :cond_110

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    :cond_110
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_118
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_132

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/16 v25, 0x1

    :cond_132
    if-nez v25, :cond_13d

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature doesn\'t match any trusted key"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13d
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v19, p1

    new-instance v2, Landroid/os/RecoverySystem$1;

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v2}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v26

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v18

    if-eqz p1, :cond_160

    const/16 v2, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_160
    if-eqz v18, :cond_16b

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "verification was interrupted"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16b
    if-nez v26, :cond_176

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature digest verification failed"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_176
    .catchall {:try_start_48 .. :try_end_176} :catchall_42

    :cond_176
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-static/range {p0 .. p0}, Landroid/os/RecoverySystem;->readAndVerifyPackageCompatibilityEntry(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_188

    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "package compatibility verification failed"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_188
    return-void
.end method

.method public static verifyPackageCompatibility(Ljava/io/File;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_16
    .catchall {:try_start_2 .. :try_end_7} :catchall_30

    :try_start_7
    invoke-static {v1}, Landroid/os/RecoverySystem;->verifyPackageCompatibility(Ljava/io/InputStream;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_35
    .catchall {:try_start_7 .. :try_end_a} :catchall_32

    move-result v2

    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_13

    :cond_10
    :goto_10
    if-eqz v3, :cond_15

    throw v3

    :catch_13
    move-exception v3

    goto :goto_10

    :cond_15
    return v2

    :catch_16
    move-exception v2

    :goto_17
    :try_start_17
    throw v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    if-eqz v3, :cond_2f

    throw v3

    :catch_24
    move-exception v4

    if-nez v3, :cond_29

    move-object v3, v4

    goto :goto_21

    :cond_29
    if-eq v3, v4, :cond_21

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_2f
    throw v2

    :catchall_30
    move-exception v2

    goto :goto_1c

    :catchall_32
    move-exception v2

    move-object v0, v1

    goto :goto_1c

    :catch_35
    move-exception v2

    move-object v0, v1

    goto :goto_17
.end method

.method private static verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_b
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v2, v8

    if-gtz v6, :cond_22

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gez v6, :cond_43

    :cond_22
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid entry size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") in the compatibility file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_43
    long-to-int v6, v2

    new-array v0, v6, [B

    invoke-static {v5, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    new-instance v6, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_54
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_63

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "no entries found in the compatibility file"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-static {v6}, Landroid/os/VintfObject;->verify([Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_77

    const/4 v6, 0x1

    :goto_76
    return v6

    :cond_77
    move v6, v7

    goto :goto_76
.end method

.method private static wipeEuiccData(Landroid/content/Context;Z)V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v14, "euicc_provisioned"

    const/4 v15, 0x0

    invoke-static {v3, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_18

    const-string/jumbo v14, "RecoverySystem"

    const-string/jumbo v15, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string/jumbo v14, "euicc_service"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/euicc/EuiccManager;

    if-eqz v8, :cond_ae

    invoke-virtual {v8}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_ae

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v14, 0x1

    invoke-direct {v5, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Landroid/os/RecoverySystem$4;

    move/from16 v0, p1

    invoke-direct {v9, v0, v5}, Landroid/os/RecoverySystem$4;-><init>(ZLjava/util/concurrent/CountDownLatch;)V

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v14, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "android"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v14, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v11, v1, v14}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v14, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-virtual {v10, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v14, "euiccWipeFinishReceiverThread"

    invoke-direct {v7, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v10, v15, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    if-eqz p1, :cond_af

    invoke-virtual {v8, v2}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    :goto_7f
    :try_start_7f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "euicc_factory_reset_timeout_millis"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x1388

    cmp-long v14, v12, v14

    if-gez v14, :cond_b3

    const-wide/16 v12, 0x1388

    :cond_94
    :goto_94
    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v12, v13, v14}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v14

    if-nez v14, :cond_a7

    if-eqz p1, :cond_be

    const-string/jumbo v14, "RecoverySystem"

    const-string/jumbo v15, "Timeout wiping eUICC data."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_ae
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_ae} :catch_c8

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    invoke-virtual {v8, v2}, Landroid/telephony/euicc/EuiccManager;->retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V

    goto :goto_7f

    :cond_b3
    const-wide/32 v14, 0xea60

    cmp-long v14, v12, v14

    if-lez v14, :cond_94

    const-wide/32 v12, 0xea60

    goto :goto_94

    :cond_be
    :try_start_be
    const-string/jumbo v14, "RecoverySystem"

    const-string/jumbo v15, "Timeout retaining eUICC data."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_c7} :catch_c8

    goto :goto_a7

    :catch_c8
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    if-eqz p1, :cond_dc

    const-string/jumbo v14, "RecoverySystem"

    const-string/jumbo v15, "Wiping eUICC data interrupted"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae

    :cond_dc
    const-string/jumbo v14, "RecoverySystem"

    const-string/jumbo v15, "Retaining eUICC data interrupted"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae
.end method

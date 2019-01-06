.class public final Lcom/android/server/backup/BackupPasswordManager;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;,
        Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;
    }
.end annotation


# static fields
.field private static final BACKUP_PW_FILE_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PW_FILE_VERSION:I = 0x1

.field private static final PASSWORD_HASH_FILE_NAME:Ljava/lang/String; = "pwhash"

.field private static final PASSWORD_VERSION_FILE_NAME:Ljava/lang/String; = "pwversion"

.field public static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final TAG:Ljava/lang/String; = "BackupPasswordManager"


# instance fields
.field private final mBaseStateDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->loadStateFromFilesystem()V

    return-void
.end method

.method private clearPassword()Z
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "BackupPasswordManager"

    const-string/jumbo v2, "Unable to clear backup password"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1e
    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    const/4 v1, 0x1

    return v1
.end method

.method private getPasswordHashFile()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v2, "pwhash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec",
            "<",
            "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v3, "pwversion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private loadStateFromFilesystem()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_23

    :goto_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    iget-object v2, v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_31

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string/jumbo v2, "BackupPasswordManager"

    const-string/jumbo v3, "Unable to read backup pw version"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    goto :goto_10

    :catch_31
    move-exception v0

    const-string/jumbo v2, "BackupPasswordManager"

    const-string/jumbo v3, "Unable to read saved backup pw hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private passwordMatchesSaved(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "PBKDF2WithHmacSHA1"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->usePbkdf2Fallback()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "PBKDF2WithHmacSHA1And8bit"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-nez v1, :cond_11

    if-eqz p2, :cond_f

    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e

    :cond_11
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    return v2

    :cond_1a
    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    const/16 v2, 0x2710

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private randomSalt()[B
    .registers 4

    const/16 v1, 0x8

    const/16 v2, 0x40

    new-array v0, v2, [B

    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private usePbkdf2Fallback()Z
    .registers 3

    iget v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method hasBackupPassword()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "hasBackupPassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "setBackupPassword"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    return v6

    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_2f

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    :cond_2a
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->clearPassword()Z

    move-result v3

    return v3

    :catch_2f
    move-exception v0

    const-string/jumbo v3, "BackupPasswordManager"

    const-string/jumbo v4, "Unable to write backup pw version; password not changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->randomSalt()[B

    move-result-object v2

    const-string/jumbo v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    invoke-static {v3, p2, v2, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v3

    new-instance v4, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v4, v1, v2}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_57} :catch_59

    const/4 v3, 0x1

    return v3

    :catch_59
    move-exception v0

    const-string/jumbo v3, "BackupPasswordManager"

    const-string/jumbo v4, "Unable to set backup password"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

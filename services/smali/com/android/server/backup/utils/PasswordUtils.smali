.class public Lcom/android/server/backup/utils/PasswordUtils;
.super Ljava/lang/Object;
.source "PasswordUtils.java"


# static fields
.field public static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field public static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field private static final PBKDF2_KEY_SIZE:I = 0x100

.field public static final PBKDF2_SALT_SIZE:I = 0x200


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 10

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x100

    invoke-direct {v3, p1, p2, p3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v4

    return-object v4

    :catch_10
    move-exception v0

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "PBKDF2 unavailable!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v4, 0x0

    return-object v4

    :catch_1c
    move-exception v1

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid key spec for PBKDF2!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v1
.end method

.method public static buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_19

    aget-byte v2, p0, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_17

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    new-array v2, v0, [B

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_34

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1a

    :cond_34
    return-object v2
.end method

.method public static makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 8

    array-length v3, p1

    new-array v2, v3, [C

    const/4 v1, 0x0

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_f

    aget-byte v3, p1, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    invoke-static {p0, v2, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

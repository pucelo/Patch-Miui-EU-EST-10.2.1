.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default-password"

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static final WEAVER_VERSION:B = 0x1t

.field protected static final hexArray:[C


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static synthetic -get1()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic -get2()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic -get3()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic -get4()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    const-string/jumbo v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    const-string/jumbo v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_6

    const-string/jumbo v3, "null"

    return-object v3

    :cond_6
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_c
    array-length v3, p0

    if-ge v1, v3, :cond_2c

    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 10

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, v0

    const/16 v6, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt(Ljava/lang/String;[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .registers 7

    const/16 v1, 0x4000

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 20

    const/4 v0, 0x1

    if-ne p3, v0, :cond_33

    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v2

    :goto_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v9

    array-length v0, v9

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    const/4 v0, 0x1

    aput-byte p3, v5, v0

    array-length v0, v9

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v9, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v4, "spblob"

    move-object v3, p0

    move-wide v6, p1

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void

    :cond_33
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-get2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_7
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .registers 5

    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    :cond_19
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_13

    :cond_c
    :goto_c
    const-string/jumbo v2, "weaver"

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v2, "SyntheticPasswordManager"

    const-string/jumbo v3, "Failed to destroy slot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private fakeUid(I)I
    .registers 3

    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return-object v1
.end method

.method public static generateHandle()J
    .registers 6

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_5
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_5

    return-wide v0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .registers 8

    const-string/jumbo v0, "%s%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "synthetic_password_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableWeaverSlot()I
    .registers 13

    iget-object v8, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v9, "weaver"

    invoke-virtual {v8, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v10, v11, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_52
    const/4 v4, 0x0

    :goto_53
    iget-object v8, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v8, v8, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v4, v8, :cond_67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    return v4

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_67
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Run out of weaver slots."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    :cond_9
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_16

    if-lez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$-com_android_server_locksettings_SyntheticPasswordManager_14916([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 7

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_c8

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v0, p0, v2

    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read unknown status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void

    :pswitch_2e
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object v0, p0, v2

    goto :goto_2d

    :pswitch_3c
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v0, p0, v2

    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :pswitch_60
    iget v0, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v0, :cond_83

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v0, p0, v2

    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_83
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v0, v1}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v0, p0, v2

    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :pswitch_a7
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v0, p0, v2

    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (FAILED), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    nop

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_a7
        :pswitch_60
        :pswitch_3c
    .end packed-switch
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "e0"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-set0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    const-string/jumbo v1, "p1"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-set1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method private loadSecdiscardable(JI)[B
    .registers 5

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .registers 7

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .registers 6

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadWeaverSlot(JI)I
    .registers 11

    const/4 v4, 0x5

    const/4 v6, -0x1

    const/4 v0, 0x5

    const-string/jumbo v3, "weaver"

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v2

    if-eqz v2, :cond_f

    array-length v3, v2

    if-eq v3, v4, :cond_10

    :cond_f
    return v6

    :cond_10
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3e

    const-string/jumbo v3, "SyntheticPasswordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid weaver slot version of handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method private passwordTokenToGkInput([B)[B
    .registers 5

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToWeaverKey([B)[B
    .registers 6

    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ge v1, v2, :cond_1c

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 10

    const-wide/16 v4, 0x0

    const-string/jumbo v2, "e0"

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    const-string/jumbo v2, "p1"

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .registers 12

    const-string/jumbo v2, "secdis"

    move-object v1, p0

    move-object v3, p3

    move-wide v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .registers 10

    const-string/jumbo v2, "handle"

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .registers 13

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-string/jumbo v2, "weaver"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method protected static secureRandom(I)[B
    .registers 3

    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3, p2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v2, p3, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_27
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p4, p2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v2, v2, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_27
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_16

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .registers 8

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v3, 0x1

    new-array v3, v3, [[B

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v1

    array-length v2, p1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .registers 8

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v3, 0x1

    new-array v3, v3, [[B

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v1

    array-length v2, p1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 21

    const-string/jumbo v1, "spblob"

    move/from16 v0, p7

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v10

    if-nez v10, :cond_d

    const/4 v1, 0x0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    aget-byte v12, v10, v1

    const/4 v1, 0x2

    if-eq v12, v1, :cond_1f

    const/4 v1, 0x1

    if-eq v12, v1, :cond_1f

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown blob version"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v1, 0x1

    aget-byte v1, v10, v1

    move/from16 v0, p3

    if-eq v1, v0, :cond_2f

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid blob type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    const/4 v1, 0x1

    if-ne v12, v1, :cond_62

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v2, v10

    const/4 v3, 0x2

    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v1, v2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v11

    :goto_42
    if-nez v11, :cond_73

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_62
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    array-length v2, v10

    const/4 v3, 0x2

    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v11

    goto :goto_42

    :cond_73
    new-instance v5, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_e0

    move/from16 v0, p7

    invoke-direct {p0, v5, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v1

    if-nez v1, :cond_a3

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_a3
    invoke-virtual {v5, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    :goto_a6
    const/4 v1, 0x1

    if-ne v12, v1, :cond_df

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrade v1 SP blob for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    :cond_df
    return-object v5

    :cond_e0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-set2(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a6
.end method

.method private weaverEnroll(I[B[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lt p1, v1, :cond_13

    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid slot for weaver"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    if-nez p2, :cond_5b

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v1, [B

    :cond_1b
    if-nez p3, :cond_25

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    :cond_25
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_6b

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weaver write failed, slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5b
    array-length v1, p2

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-eq v1, v2, :cond_1b

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid key size for weaver"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    return-object p3
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, -0x1

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lt p1, v1, :cond_12

    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid slot for weaver"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-nez p2, :cond_2f

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v1, [B

    :cond_1a
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;

    invoke-direct {v3, p1, v0}, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, p1, v2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_2f
    array-length v1, p2

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-eq v1, v2, :cond_1a

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid key size for weaver"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 20

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x0

    return v3

    :cond_e
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    if-nez v14, :cond_28

    const/4 v3, 0x0

    return v3

    :cond_28
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string/jumbo v3, "SyntheticPasswordManager"

    const-string/jumbo v4, "User is not escrowable"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_3d
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v13

    :try_start_47
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    const/4 v4, 0x0

    invoke-direct {p0, v13, v4, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_81

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-direct {p0, v13, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    :cond_54
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    move-wide/from16 v0, p1

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    iget-object v8, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p3

    move/from16 v11, p4

    invoke-direct/range {v3 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    return v3

    :catch_81
    move-exception v12

    const-string/jumbo v3, "SyntheticPasswordManager"

    const-string/jumbo v4, "Failed to enroll weaver secret when activating token"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return v3
.end method

.method public clearSidForUser(I)V
    .registers 6

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_7

    const/4 v5, -0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_c

    :cond_7
    const/16 p3, -0x1

    const-string/jumbo p2, "default-password"

    :cond_c
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v8

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v18

    if-nez v18, :cond_58

    const-string/jumbo v5, "SyntheticPasswordManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to enroll user password under weaver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_58
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p6

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, v19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v12

    :goto_7b
    const-string/jumbo v6, "pwd"

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v7

    move-object/from16 v5, p0

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move/from16 v15, p6

    invoke-direct/range {v7 .. v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    return-wide v8

    :cond_94
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7, v10, v6}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v5

    if-eqz v5, :cond_de

    const-string/jumbo v5, "SyntheticPasswordManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_de
    invoke-virtual/range {v17 .. v17}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    iget-object v5, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto/16 :goto_7b
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 8

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createTokenBasedSyntheticPassword([BI)J
    .registers 10

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    new-instance v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    const/16 v4, 0x4000

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    :goto_43
    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0

    :cond_5d
    iput-object v2, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    goto :goto_43
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyEscrowData(I)V
    .registers 6

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public existsHandle(JI)Z
    .registers 5

    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(JI)I
    .registers 9

    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    if-nez v0, :cond_25

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_25
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    return v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hardware/weaver/V1_0/IWeaver;->getService()Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "SyntheticPasswordManager"

    const-string/jumbo v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public hasEscrowData(I)Z
    .registers 6

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public hasSidForUser(I)Z
    .registers 6

    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    new-instance v2, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;

    invoke-direct {v2, p0}, Lcom/android/server/locksettings/-$Lambda$-9kAABVnQmMC9ch2nJNmMXd9WDU;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_20
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2b

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :catch_20
    move-exception v0

    :try_start_21
    const-string/jumbo v1, "SyntheticPasswordManager"

    const-string/jumbo v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_1e

    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method synthetic lambda$-com_android_server_locksettings_SyntheticPasswordManager_12018(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 6

    if-nez p1, :cond_9

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    :goto_8
    return-void

    :cond_9
    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get weaver config, status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slots: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    goto :goto_8
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 10

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "pwd"

    iget v3, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    iget v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    if-eq v2, v4, :cond_2f

    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    if-eq v1, v4, :cond_30

    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_2f
.end method

.method native nativeScrypt([B[BIIII)[B
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    invoke-interface {p1, p3, v2, v2, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    if-eqz p2, :cond_41

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    invoke-interface {p1, p4, p2, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    :goto_35
    invoke-direct {p0, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    return-object v1

    :cond_39
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_35

    :cond_41
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_35
.end method

.method public removePendingToken(JI)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25
.end method

.method public removeUser(I)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v4, "weaver"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    goto :goto_13

    :cond_27
    return-void
.end method

.method protected scrypt(Ljava/lang/String;[BIIII)[B
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_5

    const-string/jumbo p4, "default-password"

    :cond_5
    new-instance v29, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    const-string/jumbo v4, "pwd"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v10

    iget v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v25

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v30

    const/4 v4, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_a5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-nez v4, :cond_4e

    const-string/jumbo v4, "SyntheticPasswordManager"

    const-string/jumbo v5, "No weaver service to unwrap password based SP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v29

    :cond_4e
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_6d

    return-object v29

    :cond_6d
    const-wide/16 v16, 0x0

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v15

    :goto_7f
    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move/from16 v18, p5

    invoke-direct/range {v11 .. v18}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v24, p5

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v29

    :cond_a5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    iget-object v8, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v28

    if-nez v28, :cond_147

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    if-eqz v4, :cond_10b

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    iget-object v5, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v9, v9}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_12a

    invoke-virtual/range {v26 .. v26}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-string/jumbo v12, "pwd"

    invoke-virtual {v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v13

    move-object/from16 v11, p0

    move-wide/from16 v14, p2

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    iget v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_127

    const/high16 v4, 0x10000

    :goto_104
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v10, v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    :cond_10b
    :goto_10b
    iget-object v4, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v15

    goto/16 :goto_7f

    :cond_127
    const/high16 v4, 0x50000

    goto :goto_104

    :cond_12a
    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to re-enroll user password for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    :cond_147
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_15a

    new-instance v4, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v29

    :cond_15a
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v29
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v17, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v19

    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_65

    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v5

    if-nez v5, :cond_34

    const-string/jumbo v5, "SyntheticPasswordManager"

    const-string/jumbo v6, "No weaver service to unwrap token based SP"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v17

    :cond_34
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_49

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v5

    if-nez v5, :cond_59

    :cond_49
    const-string/jumbo v5, "SyntheticPasswordManager"

    const-string/jumbo v6, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v17

    :cond_59
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v5

    sget-object v6, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v18

    :cond_65
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v9

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v5, :cond_a7

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v5, :cond_a6

    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_a6
    :goto_a6
    return-object v17

    :cond_a7
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_a6
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v4

    if-nez v4, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v7

    if-nez v7, :cond_5d

    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    invoke-interface {p1, p5, v4, v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    invoke-direct {p0, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    :cond_42
    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to re-enroll SP handle for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-object v8

    :cond_5d
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6a

    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    goto :goto_5c

    :cond_6a
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_5c
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v6

    iget v0, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    iget v0, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v1

    const-wide/16 v2, 0x0

    iget-object v4, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-direct {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    :cond_2d
    iget v0, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    iget-object v0, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    iget v10, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    :cond_4b
    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method

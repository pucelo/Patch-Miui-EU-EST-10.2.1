.class public Lcom/android/keyguard/faceunlock/FaceUnlockManager;
.super Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;
.source "FaceUnlockManager.java"

# interfaces
.implements Lcom/megvii/facepp/sdk/UnlockEncryptor;


# static fields
.field public static final FACE_UNLOCK_ENCRYPT_MEGVII_FLAG:[B

.field private static sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->FACE_UNLOCK_ENCRYPT_MEGVII_FLAG:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/BaseMiFaceUnlockManager;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initFaceUnlockUtil()V

    return-void
.end method

.method private byteToString([B)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private encryptAndAddFlag([B)[B
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v3, 0x9c60

    new-array v1, v3, [B

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->methodDecryptAndEncrypt([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "110120119"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getDeviceUniqueID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->byteToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->FACE_UNLOCK_ENCRYPT_MEGVII_FLAG:[B

    invoke-static {v3, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    invoke-static {v2, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method private encryptRestoreFeatureIfNeed(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 2

    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sInitFaceUlockUtil:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->sFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initFaceUnlockUtil()V

    goto :goto_0
.end method

.method private methodDecryptAndEncrypt([B)V
    .locals 7

    const v6, 0x7643b

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v1, p1, v0

    add-int v4, v2, v6

    add-int/2addr v4, v0

    div-int v5, v2, v6

    sub-int/2addr v4, v5

    xor-int v3, v4, v1

    int-to-byte v4, v3

    aput-byte v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 12

    const/16 v8, 0x2000

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v3, v10

    const/4 v4, 0x0

    new-array v6, v3, [B

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    if-le v3, v4, :cond_2

    sub-int v7, v3, v4

    if-le v7, v8, :cond_1

    move v7, v8

    :goto_1
    invoke-virtual {v0, v6, v4, v7}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    sub-int v7, v3, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v7, "face_unlock"

    const-string/jumbo v8, "readFile failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v6
.end method

.method private stringToByte(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 15

    const/16 v11, 0x20

    new-array v9, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x20

    move-object/from16 v0, p2

    invoke-static {v0, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p2

    array-length v11, v0

    const v12, 0x9c40

    sub-int v4, v11, v12

    const/16 v11, 0x20

    if-ne v4, v11, :cond_0

    return-void

    :cond_0
    const v11, 0x9c60

    new-array v3, v11, [B

    if-nez v4, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->encryptAndAddFlag([B)[B

    move-result-object v3

    :goto_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    array-length v6, v3

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_1
    if-le v6, v8, :cond_5

    sub-int v11, v6, v8

    const/16 v12, 0x2000

    if-le v11, v12, :cond_4

    const/16 v10, 0x2000

    :goto_2
    invoke-virtual {v1, v3, v8, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v8, v10

    goto :goto_1

    :cond_2
    const/16 v11, 0x18

    if-ne v4, v11, :cond_3

    sget-object v11, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->FACE_UNLOCK_ENCRYPT_MEGVII_FLAG:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static {v11, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v12, v3, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_3
    const v11, 0x9c40

    new-array v7, v11, [B

    array-length v11, v7

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v7, v12, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v7}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->encryptAndAddFlag([B)[B

    move-result-object v3

    goto :goto_0

    :cond_4
    sub-int v10, v6, v8

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v11, "face_unlock"

    const-string/jumbo v12, "writeFile failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6

    const/4 v4, 0x0

    const/16 v3, 0x9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    new-array v1, v3, [B

    invoke-static {p1, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->byteToString([B)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "110120119"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getDeviceUniqueID()Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    array-length v4, v1

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    new-array v2, v3, [B

    array-length v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->methodDecryptAndEncrypt([B)V

    return-object v2
.end method

.method public encrypt([B)[B
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->methodDecryptAndEncrypt([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "110120119"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getDeviceUniqueID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->stringToByte(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getDeviceUniqueID()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "353535353535353"

    return-object v0
.end method

.method public initAll()V
    .locals 15

    const/16 v14, 0x15

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v10, "face_unlock_version"

    invoke-virtual {v9, v10}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->getIntValueByKey(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->isVersionUpdate(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "face_unlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "version update  old verion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";new version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/restore_0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0, v3}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->encryptRestoreFeatureIfNeed(Ljava/lang/String;)V

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/model"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->deleteFaceModel(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v10, "model_liveness_1"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v10, "model_liveness_1"

    invoke-virtual {v9, v10}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->getStringValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/faceunlock/FaceUnlockCompatHelper;->getModelRes()I

    move-result v10

    const-string/jumbo v11, "model"

    const-string/jumbo v12, "liveness1.dlc"

    invoke-static {v9, v10, v11, v12}, Lcom/android/keyguard/faceunlock/FileUtil;->saveRaw(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v10, "model_liveness_1"

    invoke-virtual {v9, v10, v1}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/megvii/facepp/sdk/Lite;->initHandle(Ljava/lang/String;Lcom/megvii/facepp/sdk/UnlockEncryptor;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/model"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/faceunlock/FaceUnlockCompatHelper;->setCompDeviceType(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mContext:Landroid/content/Context;

    const/high16 v10, 0x7f100000

    invoke-static {v9, v10}, Lcom/android/keyguard/faceunlock/FileUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v0

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v0}, Lcom/megvii/facepp/sdk/Lite;->initAll(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v9

    int-to-long v4, v9

    sget-boolean v9, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "face_unlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "init all time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->isVersionUpdate(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v9}, Lcom/megvii/facepp/sdk/Lite;->prepare()I

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v9}, Lcom/megvii/facepp/sdk/Lite;->restoreFeature()I

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v9}, Lcom/megvii/facepp/sdk/Lite;->reset()I

    iget-object v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    const-string/jumbo v10, "face_unlock_version"

    invoke-virtual {v9, v10, v14}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;->saveIntValue(Ljava/lang/String;I)V

    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->mHasInit:Z

    return-void
.end method

.method protected isFaceJiajia()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

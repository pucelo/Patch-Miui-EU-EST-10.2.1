.class public Lcom/megvii/facepp/sdk/FeatureRestoreHelper;
.super Ljava/lang/Object;
.source "FeatureRestoreHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final sMagic:[B


# instance fields
.field private mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-class v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    aput-byte v3, v0, v2

    aput-byte v4, v0, v3

    aput-byte v5, v0, v4

    aput-byte v6, v0, v5

    const/4 v1, 0x6

    aput-byte v1, v0, v6

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRestoreFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 12

    const/16 v9, 0x2000

    const/4 v10, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v4, v10

    const/4 v5, 0x0

    new-array v7, v4, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    if-gt v4, v5, :cond_2

    iget-object v8, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    if-nez v8, :cond_4

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    return-object v10

    :cond_2
    sub-int v8, v4, v5

    if-gt v8, v9, :cond_3

    sub-int v8, v4, v5

    :goto_2
    invoke-virtual {v2, v7, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    if-eqz v8, :cond_0

    invoke-direct {p0, v7}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->startWithMagic([B)Z

    move-result v8

    if-eqz v8, :cond_0

    array-length v8, v7

    sget-object v9, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    new-array v3, v8, [B

    sget-object v8, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v8, v8

    array-length v9, v3

    const/4 v10, 0x0

    invoke-static {v7, v8, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    invoke-interface {v8, v3}, Lcom/megvii/facepp/sdk/UnlockEncryptor;->decrypt([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v8, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "readFile failed"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private restoreFeatureAtPosition(I[B)V
    .locals 9

    const/16 v2, 0x90

    const/16 v0, 0x2710

    new-array v6, v0, [B

    const v0, 0x9c40

    new-array v7, v0, [B

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v0

    const/4 v5, 0x1

    const/16 v4, 0x5a

    move-object v1, p2

    move v3, v2

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/megvii/facepp/sdk/Lite;->updateFeature([BIIIZ[B[BI)I

    return-void
.end method

.method private startWithMagic([B)Z
    .locals 4

    const/4 v3, 0x0

    array-length v1, p1

    sget-object v2, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3

    :cond_1
    aget-byte v1, p1, v0

    sget-object v2, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 12

    const/16 v8, 0x2000

    const/4 v11, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    iget-object v9, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    if-nez v9, :cond_1

    :goto_1
    array-length v5, p2

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-gt v5, v6, :cond_2

    :goto_3
    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    invoke-interface {v9, p2}, Lcom/megvii/facepp/sdk/UnlockEncryptor;->encrypt([B)[B

    move-result-object v1

    array-length v9, v1

    sget-object v10, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v10, v10

    add-int/2addr v9, v10

    new-array v4, v9, [B

    sget-object v9, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    sget-object v10, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v10, v10

    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v9, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->sMagic:[B

    array-length v9, v9

    array-length v10, v1

    invoke-static {v1, v11, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v4

    goto :goto_1

    :cond_2
    sub-int v9, v5, v6

    if-gt v9, v8, :cond_3

    sub-int v7, v5, v6

    :goto_4
    :try_start_1
    invoke-virtual {v3, p2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v6, v7

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v8, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "writeFile failed"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public deleteRestoreImage(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteRestoreImage: id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->getRestoreFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public restoreAllFeature(Ljava/lang/String;)I
    .locals 14

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    const/4 v10, 0x0

    move-object v0, v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "restore_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-le v11, v12, :cond_1

    sget-object v11, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllFeature: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_2
    const/4 v11, -0x1

    if-eq v7, v11, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v11, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restoreAllFeature: update old feature "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7, v3}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->restoreFeatureAtPosition(I[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_2
.end method

.method public saveRestoreImage([BLjava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveRestoreImage: length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->getRestoreFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setUnlockEncryptor(Lcom/megvii/facepp/sdk/UnlockEncryptor;)V
    .locals 0

    iput-object p1, p0, Lcom/megvii/facepp/sdk/FeatureRestoreHelper;->mEncryptor:Lcom/megvii/facepp/sdk/UnlockEncryptor;

    return-void
.end method

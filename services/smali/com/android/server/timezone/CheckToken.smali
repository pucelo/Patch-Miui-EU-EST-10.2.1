.class final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field final mOptimisticLockId:I

.field final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-nez p2, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    return-void
.end method

.method static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_2d
    .catchall {:try_start_7 .. :try_end_c} :catchall_47

    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-instance v6, Lcom/android/server/timezone/CheckToken;

    new-instance v8, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v8, v4, v1}, Lcom/android/server/timezone/PackageVersions;-><init>(II)V

    invoke-direct {v6, v5, v8}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_22} :catch_4c
    .catchall {:try_start_c .. :try_end_22} :catchall_49

    if-eqz v3, :cond_27

    :try_start_24
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_2a

    :cond_27
    :goto_27
    if-eqz v7, :cond_2c

    throw v7

    :catch_2a
    move-exception v7

    goto :goto_27

    :cond_2c
    return-object v6

    :catch_2d
    move-exception v6

    :goto_2e
    :try_start_2e
    throw v6
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_33
    if-eqz v2, :cond_38

    :try_start_35
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_3b

    :cond_38
    :goto_38
    if-eqz v7, :cond_46

    throw v7

    :catch_3b
    move-exception v8

    if-nez v7, :cond_40

    move-object v7, v8

    goto :goto_38

    :cond_40
    if-eq v7, v8, :cond_38

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_46
    throw v6

    :catchall_47
    move-exception v6

    goto :goto_33

    :catchall_49
    move-exception v6

    move-object v2, v3

    goto :goto_33

    :catch_4c
    move-exception v6

    move-object v2, v3

    goto :goto_2e
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/timezone/CheckToken;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/android/server/timezone/CheckToken;

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v2, v0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method toByteArray()[B
    .registers 9

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xc

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_36
    .catchall {:try_start_9 .. :try_end_e} :catchall_57

    :try_start_e
    iget v4, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget v4, v4, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget v4, v4, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_21} :catch_5c
    .catchall {:try_start_e .. :try_end_21} :catchall_59

    if-eqz v2, :cond_26

    :try_start_23
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    :cond_26
    :goto_26
    if-eqz v5, :cond_52

    :try_start_28
    throw v5
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception v3

    move-object v1, v2

    :goto_2b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_34
    move-exception v5

    goto :goto_26

    :catch_36
    move-exception v4

    :goto_37
    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_3c
    if-eqz v1, :cond_41

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_46
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_44

    :cond_41
    :goto_41
    if-eqz v5, :cond_51

    :try_start_43
    throw v5

    :catch_44
    move-exception v3

    goto :goto_2b

    :catch_46
    move-exception v6

    if-nez v5, :cond_4b

    move-object v5, v6

    goto :goto_41

    :cond_4b
    if-eq v5, v6, :cond_41

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_41

    :cond_51
    throw v4
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_52} :catch_44

    :cond_52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :catchall_57
    move-exception v4

    goto :goto_3c

    :catchall_59
    move-exception v4

    move-object v1, v2

    goto :goto_3c

    :catch_5c
    move-exception v4

    move-object v1, v2

    goto :goto_37
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

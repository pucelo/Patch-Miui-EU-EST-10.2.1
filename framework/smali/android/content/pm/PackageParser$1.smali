.class final Landroid/content/pm/PackageParser$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$entry:Ljava/util/zip/ZipEntry;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$sJarFiles:[Landroid/util/jar/StrictJarFile;

.field final synthetic val$strictJarFiles:Landroid/util/ArrayMap;

.field final synthetic val$vData:Landroid/content/pm/PackageParser$1VerificationData;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)V
    .registers 7

    iput-object p1, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iput-object p2, p0, Landroid/content/pm/PackageParser$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    iput-object p3, p0, Landroid/content/pm/PackageParser$1;->val$sJarFiles:[Landroid/util/jar/StrictJarFile;

    iput-object p4, p0, Landroid/content/pm/PackageParser$1;->val$entry:Ljava/util/zip/ZipEntry;

    iput-object p5, p0, Landroid/content/pm/PackageParser$1;->val$apkPath:Ljava/lang/String;

    iput-object p6, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    :try_start_0
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget v7, v7, Landroid/content/pm/PackageParser$1VerificationData;->exceptionFlag:I

    if-eqz v7, :cond_25

    const-string/jumbo v7, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verifyV1 exit with Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget v9, v9, Landroid/content/pm/PackageParser$1VerificationData;->exceptionFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Landroid/content/pm/PackageParser$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_34
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_34} :catch_9a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_34} :catch_af

    :try_start_34
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/jar/StrictJarFile;

    if-nez v5, :cond_5e

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget v7, v7, Landroid/content/pm/PackageParser$1VerificationData;->index:I

    invoke-static {}, Landroid/content/pm/PackageParser;->-get0()I

    move-result v9

    if-lt v7, v9, :cond_4d

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    const/4 v9, 0x0

    iput v9, v7, Landroid/content/pm/PackageParser$1VerificationData;->index:I

    :cond_4d
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$sJarFiles:[Landroid/util/jar/StrictJarFile;

    iget-object v9, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget v10, v9, Landroid/content/pm/PackageParser$1VerificationData;->index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Landroid/content/pm/PackageParser$1VerificationData;->index:I

    aget-object v5, v7, v10

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$strictJarFiles:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_ac

    :cond_5e
    :try_start_5e
    monitor-exit v8

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-static {v5, v7}, Landroid/content/pm/PackageParser;->-wrap3(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/PackageParser$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has no certificates at entry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/content/pm/PackageParser$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, -0x67

    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_9a
    .catch Ljava/security/GeneralSecurityException; {:try_start_5e .. :try_end_9a} :catch_9a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_5e .. :try_end_9a} :catch_af

    :catch_9a
    move-exception v1

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget-object v8, v7, Landroid/content/pm/PackageParser$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v8

    :try_start_a0
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    const/16 v9, -0x69

    iput v9, v7, Landroid/content/pm/PackageParser$1VerificationData;->exceptionFlag:I

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iput-object v1, v7, Landroid/content/pm/PackageParser$1VerificationData;->exception:Ljava/lang/Exception;
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_137

    :goto_aa
    monitor-exit v8

    :goto_ab
    return-void

    :catchall_ac
    move-exception v7

    :try_start_ad
    monitor-exit v8

    throw v7
    :try_end_af
    .catch Ljava/security/GeneralSecurityException; {:try_start_ad .. :try_end_af} :catch_9a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_ad .. :try_end_af} :catch_af

    :catch_af
    move-exception v0

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iget-object v8, v7, Landroid/content/pm/PackageParser$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v8

    :try_start_b5
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    const/16 v9, -0x66

    iput v9, v7, Landroid/content/pm/PackageParser$1VerificationData;->exceptionFlag:I

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$vData:Landroid/content/pm/PackageParser$1VerificationData;

    iput-object v0, v7, Landroid/content/pm/PackageParser$1VerificationData;->exception:Ljava/lang/Exception;
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_c0

    goto :goto_aa

    :catchall_c0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_c3
    :try_start_c3
    invoke-static {v2}, Landroid/content/pm/PackageParser;->-wrap0([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v3

    iget-object v8, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    monitor-enter v8
    :try_end_ca
    .catch Ljava/security/GeneralSecurityException; {:try_start_c3 .. :try_end_ca} :catch_9a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_c3 .. :try_end_ca} :catch_af

    :try_start_ca
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    if-nez v7, :cond_f8

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    iput-object v9, v7, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    const/4 v4, 0x0

    :goto_e2
    array-length v7, v2

    if-ge v4, v7, :cond_134

    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    aget-object v9, v2, v4

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    :cond_f8
    iget-object v7, p0, Landroid/content/pm/PackageParser$1;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v7, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v7

    if-nez v7, :cond_134

    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/pm/PackageParser$1;->val$apkPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " has mismatched certificates at entry "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/pm/PackageParser$1;->val$entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, -0x68

    invoke-direct {v7, v10, v9}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_131
    .catchall {:try_start_ca .. :try_end_131} :catchall_131

    :catchall_131
    move-exception v7

    :try_start_132
    monitor-exit v8

    throw v7

    :cond_134
    monitor-exit v8
    :try_end_135
    .catch Ljava/security/GeneralSecurityException; {:try_start_132 .. :try_end_135} :catch_9a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_132 .. :try_end_135} :catch_af

    goto/16 :goto_ab

    :catchall_137
    move-exception v7

    monitor-exit v8

    throw v7
.end method

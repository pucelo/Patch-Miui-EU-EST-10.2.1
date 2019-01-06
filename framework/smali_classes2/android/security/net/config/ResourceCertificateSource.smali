.class public Landroid/security/net/config/ResourceCertificateSource;
.super Ljava/lang/Object;
.source "ResourceCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# instance fields
.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mLock:Ljava/lang/Object;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    iput-object p2, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureInitialized()V
    .registers 14

    iget-object v10, p0, Landroid/security/net/config/ResourceCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    iget-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4b

    if-eqz v9, :cond_9

    monitor-exit v10

    return-void

    :cond_9
    :try_start_9
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4b

    const/4 v7, 0x0

    :try_start_f
    const-string/jumbo v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    iget-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v11, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_25} :catch_4e
    .catchall {:try_start_f .. :try_end_25} :catchall_6b

    move-result-object v4

    :try_start_26
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v9, v0

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v8, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_4b

    goto :goto_32

    :catchall_4b
    move-exception v9

    monitor-exit v10

    throw v9

    :catch_4e
    move-exception v5

    :try_start_4f
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to load trust anchors from id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/net/config/ResourceCertificateSource;->mResourceId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v9

    :try_start_6c
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    :cond_70
    iput-object v3, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    iput-object v8, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/security/net/config/ResourceCertificateSource;->mContext:Landroid/content/Context;
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_4b

    monitor-exit v10

    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    iget-object v4, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v4, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    :cond_14
    new-instance v3, Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    return-object v3
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    iget-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    iget-object v1, p0, Landroid/security/net/config/ResourceCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v2

    :cond_d
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public getCertificates()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/ResourceCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/ResourceCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .registers 1

    return-void
.end method

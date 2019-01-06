.class Landroid/security/net/config/KeyStoreCertificateSource;
.super Ljava/lang/Object;
.source "KeyStoreCertificateSource.java"

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

.field private mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final mKeyStore:Ljava/security/KeyStore;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method private ensureInitialized()V
    .registers 10

    iget-object v7, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_46

    if-eqz v6, :cond_9

    monitor-exit v7

    return-void

    :cond_9
    :try_start_9
    new-instance v5, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v5}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6}, Ljava/security/KeyStore;->size()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1f

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_3b
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_3b} :catch_3c
    .catchall {:try_start_9 .. :try_end_3b} :catchall_46

    goto :goto_1f

    :catch_3c
    move-exception v3

    :try_start_3d
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Failed to load certificates from KeyStore"

    invoke-direct {v6, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_49
    :try_start_49
    iput-object v5, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iput-object v2, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_4d
    .catch Ljava/security/KeyStoreException; {:try_start_49 .. :try_end_4d} :catch_3c
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    monitor-exit v7

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

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v4, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

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

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

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

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v1, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

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

    invoke-direct {p0}, Landroid/security/net/config/KeyStoreCertificateSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/KeyStoreCertificateSource;->mCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .registers 1

    return-void
.end method

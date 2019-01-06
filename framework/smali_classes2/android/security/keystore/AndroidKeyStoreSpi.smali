.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v2

    return-object v2

    :cond_2d
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .registers 3

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v6

    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v7

    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v8

    const-string/jumbo v3, "SHA-384"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    :goto_3e
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    :cond_46
    const-string/jumbo v2, "RSA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "MD5"

    aput-object v3, v2, v6

    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v7

    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v8

    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-384"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "NoPadding"

    aput-object v3, v2, v5

    const-string/jumbo v3, "PKCS1Padding"

    aput-object v3, v2, v6

    const-string/jumbo v3, "OAEPPadding"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "PKCS1"

    aput-object v3, v2, v5

    const-string/jumbo v3, "PSS"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_3e

    :cond_a8
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, p1, v3}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, ""

    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    :cond_13
    new-instance v1, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    array-length v5, v3

    :goto_1b
    if-ge v4, v5, :cond_5a

    aget-object v0, v3, v4

    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v2, :cond_4b

    :cond_2e
    const-string/jumbo v6, "AndroidKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_4b
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5a
    return-object v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p4, :cond_17

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v28

    :cond_7
    :goto_7
    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    array-length v4, v0

    if-nez v4, :cond_84

    :cond_e
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_17
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/security/KeyStoreParameter;

    if-eqz v4, :cond_2d

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v28

    move-object/from16 v22, p4

    check-cast v22, Landroid/security/KeyStoreParameter;

    invoke-virtual/range {v22 .. v22}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v10, 0x1

    goto :goto_7

    :cond_2d
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/security/keystore/KeyProtection;

    if-eqz v4, :cond_40

    move-object/from16 v28, p4

    check-cast v28, Landroid/security/keystore/KeyProtection;

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v10, 0x8

    goto :goto_7

    :cond_40
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported protection parameter class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Landroid/security/KeyStoreParameter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_84
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    move-object/from16 v32, v0

    const/16 v17, 0x0

    :goto_8d
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_ea

    const-string/jumbo v4, "X.509"

    aget-object v5, p3, v17

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bf
    aget-object v4, p3, v17

    instance-of v4, v4, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_e1

    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e1
    aget-object v4, p3, v17

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v32, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_8d

    :cond_ea
    const/4 v4, 0x0

    :try_start_eb
    aget-object v4, v32, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_f0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_eb .. :try_end_f0} :catch_119

    move-result-object v31

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_160

    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v12, v4, [[B

    const/16 v30, 0x0

    const/16 v17, 0x0

    :goto_102
    array-length v4, v12

    move/from16 v0, v17

    if-ge v0, v4, :cond_140

    add-int/lit8 v4, v17, 0x1

    :try_start_109
    aget-object v4, v32, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v12, v17

    aget-object v4, v12, v17

    array-length v4, v4
    :try_end_114
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_109 .. :try_end_114} :catch_123

    add-int v30, v30, v4

    add-int/lit8 v17, v17, 0x1

    goto :goto_102

    :catch_119
    move-exception v15

    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to encode certificate #0"

    invoke-direct {v4, v5, v15}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_123
    move-exception v15

    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to encode certificate #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_140
    move/from16 v0, v30

    new-array v13, v0, [B

    const/16 v23, 0x0

    const/16 v17, 0x0

    :goto_148
    array-length v4, v12

    move/from16 v0, v17

    if-ge v0, v4, :cond_161

    aget-object v4, v12, v17

    array-length v2, v4

    aget-object v4, v12, v17

    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v13, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v23, v23, v2

    const/4 v4, 0x0

    aput-object v4, v12, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_148

    :cond_160
    const/4 v13, 0x0

    :cond_161
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v4, :cond_1bc

    move-object/from16 v4, p2

    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v25

    :goto_16f
    if-eqz v25, :cond_222

    const-string/jumbo v4, "USRPKEY_"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_222

    const-string/jumbo v4, "USRPKEY_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1bf

    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can only replace keys with same alias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1bc
    const/16 v25, 0x0

    goto :goto_16f

    :cond_1bf
    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1c3
    const/16 v29, 0x0

    if-eqz v27, :cond_351

    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v11, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v11}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v7, 0x1

    move-object v6, v3

    invoke-virtual/range {v4 .. v11}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v16

    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_36b

    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store private key"

    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_20f
    .catchall {:try_start_1c7 .. :try_end_20f} :catchall_20f

    :catchall_20f
    move-exception v4

    if-nez v29, :cond_221

    if-eqz v27, :cond_404

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_221
    :goto_221
    throw v4

    :cond_222
    const/16 v27, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_237

    const-string/jumbo v4, "PKCS#8"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_261

    :cond_237
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported private key export format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Only private keys which export their key material in PKCS#8 format are"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " supported."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_261
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v24

    if-nez v24, :cond_270

    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Private key did not export any key material"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_270
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :try_start_275
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v4

    const v5, 0x10000002

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v4

    const v5, 0x20000001

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v4

    if-eqz v4, :cond_2a5

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    const v5, 0x20000005

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_2a5
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    const v5, 0x20000004

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v20

    and-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_302

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v4

    if-eqz v4, :cond_302

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_2c9
    if-ge v4, v5, :cond_302

    aget v21, v20, v4

    invoke-static/range {v21 .. v21}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v6

    if-nez v6, :cond_2ff

    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". See KeyProtection documentation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_275 .. :try_end_2f8} :catch_2f8
    .catch Ljava/lang/IllegalStateException; {:try_start_275 .. :try_end_2f8} :catch_2f8

    :catch_2f8
    move-exception v14

    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v14}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_2ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c9

    :cond_302
    const v4, 0x20000006

    :try_start_305
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    const v5, 0x20000006

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v4

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v6

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v7

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    const v5, 0x60000190

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    const v5, 0x60000191

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    const v5, 0x60000192

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_34d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_305 .. :try_end_34d} :catch_2f8
    .catch Ljava/lang/IllegalStateException; {:try_start_305 .. :try_end_34d} :catch_2f8

    move-object/from16 v8, v24

    goto/16 :goto_1c3

    :cond_351
    :try_start_351
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_36b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0, v6, v10}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v16

    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_3a1

    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store certificate #0"

    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_3a1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v4, v5, v13, v6, v10}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v16

    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_3d5

    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store certificate chain"

    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3d5
    .catchall {:try_start_351 .. :try_end_3d5} :catchall_20f

    :cond_3d5
    const/16 v29, 0x1

    if-nez v29, :cond_3e8

    if-eqz v27, :cond_3e9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_3e8
    :goto_3e8
    return-void

    :cond_3e9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_3e8

    :cond_404
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto/16 :goto_221
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_3d

    move-object/from16 v0, p3

    instance-of v6, v0, Landroid/security/keystore/KeyProtection;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3d

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported protection parameter class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Supported: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3d
    move-object/from16 v25, p3

    check-cast v25, Landroid/security/keystore/KeyProtection;

    move-object/from16 v0, p2

    instance-of v6, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v6, :cond_c1

    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_58

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_58
    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7b

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7b
    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b5

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " != "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b5
    if-eqz v25, :cond_c0

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c0
    return-void

    :cond_c1
    if-nez v25, :cond_cc

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_cc
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_db

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Only secret keys that export their key material are supported"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_db
    const-string/jumbo v6, "RAW"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_102

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported secret key material export format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_102
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v17

    if-nez v17, :cond_111

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_111
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :try_start_116
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v18

    const v6, 0x10000002

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/16 v6, 0x80

    move/from16 v0, v18

    if-ne v0, v6, :cond_1c1

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v23

    const/4 v6, -0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_15e

    new-instance v6, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_157
    .catch Ljava/lang/IllegalArgumentException; {:try_start_116 .. :try_end_157} :catch_157
    .catch Ljava/lang/IllegalStateException; {:try_start_116 .. :try_end_157} :catch_157

    :catch_157
    move-exception v4

    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_15e
    const/4 v6, 0x1

    :try_start_15f
    new-array v0, v6, [I

    move-object/from16 v21, v0

    const/4 v6, 0x0

    aput v23, v21, v6

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_1cf

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v22

    move-object/from16 v0, v22

    array-length v6, v0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_181

    const/4 v6, 0x0

    aget v6, v22, v6

    move/from16 v0, v23

    if-eq v6, v0, :cond_1cf

    :cond_181
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported digests specification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Only "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v23 .. v23}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " supported for HMAC key algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1c1
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_220

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v21

    :cond_1cf
    :goto_1cf
    const v6, 0x20000005

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v20

    and-int/lit8 v6, v26, 0x1

    if-eqz v6, :cond_226

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_226

    const/4 v6, 0x0

    move-object/from16 v0, v20

    array-length v8, v0

    :goto_1f1
    if-ge v6, v8, :cond_226

    aget v19, v20, v6

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v9

    if-nez v9, :cond_223

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". See KeyProtection documentation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_220
    sget-object v21, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_1cf

    :cond_223
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f1

    :cond_226
    invoke-static/range {v26 .. v26}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v6

    const v8, 0x20000001

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v6, 0x20000004

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_248

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Signature paddings not supported for symmetric keys"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_248
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v24

    const v6, 0x20000006

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v6

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v8

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v9

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000190

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000191

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    const v8, 0x60000192

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    and-int/lit8 v6, v26, 0x1

    if-eqz v6, :cond_2a8

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2a8

    const v6, 0x70000007

    invoke-virtual {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_2a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15f .. :try_end_2a8} :catch_157
    .catch Ljava/lang/IllegalStateException; {:try_start_15f .. :try_end_2a8} :catch_157

    :cond_2a8
    const/4 v12, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v6

    if-eqz v6, :cond_2b1

    const/16 v12, 0x8

    :cond_2b1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRSKEY_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    new-instance v13, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v13}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v9, 0x3

    move-object v8, v5

    move-object/from16 v10, v17

    invoke-virtual/range {v6 .. v13}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v14

    const/4 v6, 0x1

    if-eq v14, v6, :cond_306

    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_306
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 5

    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_12
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception v1

    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    :catch_11
    move-exception v1

    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    :goto_81
    return v0

    :cond_82
    const/4 v0, 0x1

    goto :goto_81
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_2f
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_52
    return-object v4
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 16

    const/4 v7, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_5

    return-object v13

    :cond_5
    const-string/jumbo v8, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    return-object v13

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_16
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_13 .. :try_end_16} :catch_1a

    move-result-object v6

    if-nez v6, :cond_1c

    return-object v13

    :catch_1a
    move-exception v4

    return-object v13

    :cond_1c
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "USRCERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    array-length v9, v2

    move v8, v7

    :goto_30
    if-ge v8, v9, :cond_5f

    aget-object v0, v2, v8

    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v10, v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    if-nez v3, :cond_55

    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_55
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_52

    return-object v0

    :cond_5f
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "CACERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_9f

    array-length v8, v1

    :goto_6d
    if-ge v7, v8, :cond_9f

    aget-object v0, v1, v7

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    :cond_7a
    iget-object v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_77

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_77

    return-object v0

    :cond_9f
    return-object v13
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 12

    const/4 v7, 0x0

    if-nez p1, :cond_c

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_15

    return-object v7

    :cond_15
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v7, v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v3, 0x1

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    goto :goto_44

    :cond_56
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    :cond_59
    const/4 v7, 0x0

    aput-object v6, v2, v7

    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_26

    return-object v0

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_41

    return-object v0

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5c

    return-object v0

    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v2, v0, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    :cond_23
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRSKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    return-object v2

    :cond_46
    const/4 v2, 0x0

    return-object v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_d

    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_16

    check-cast p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result v0

    :cond_d
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    if-nez p2, :cond_1a

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    :try_start_1a
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_1d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1a .. :try_end_1d} :catch_46

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_4d

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_46
    move-exception v0

    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4d
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-nez p2, :cond_b

    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "entry == null"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v3, p1, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_21

    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void

    :cond_21
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_34

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_33
    return-void

    :cond_34
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_43

    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_33

    :cond_43
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p3, :cond_f

    array-length v0, p3

    if-lez v0, :cond_f

    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_19

    check-cast p2, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_18
    return-void

    :cond_19
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_23

    check-cast p2, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_18

    :cond_23
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .registers 2

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

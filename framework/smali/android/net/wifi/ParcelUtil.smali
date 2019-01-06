.class public Landroid/net/wifi/ParcelUtil;
.super Ljava/lang/Object;
.source "ParcelUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    if-nez v1, :cond_8

    return-object v4

    :cond_8
    :try_start_8
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object v3

    :catch_1b
    move-exception v2

    return-object v4
.end method

.method public static readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_16

    invoke-static {p0}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    return-object v0
.end method

.method public static readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v5

    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    :try_start_c
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_18} :catch_1a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c .. :try_end_18} :catch_1a

    move-result-object v4

    return-object v4

    :catch_1a
    move-exception v1

    return-object v5
.end method

.method public static writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_6} :catch_b

    move-result-object v0

    :cond_7
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :catch_b
    move-exception v1

    goto :goto_7
.end method

.method public static writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_a

    :cond_6
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_a
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    return-void
.end method

.method public static writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
